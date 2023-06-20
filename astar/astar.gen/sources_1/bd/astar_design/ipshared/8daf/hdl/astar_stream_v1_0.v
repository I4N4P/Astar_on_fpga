/*

Copyright (c) 2014-2017 Alex Forencich

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

*/

/*

Modified by Jeff Johnson http://www.fpgadeveloper.com

- Renamed ports to match Vivado's naming for AXI-Streaming slave and master
- Removed the async reset input to the module
- Added separate resets for slave and master interfaces
- Removed the tuser signals (not used by Vivado)

*/

// Language: Verilog 2001

`timescale 1ns / 1ps

/*
 * AXI4-Stream asynchronous FIFO
 */
module axis_fifo_v1_0 #
(
    parameter ADDR_WIDTH = 8,
    parameter C_AXIS_TDATA_WIDTH = 32
)
(
    /*
     * AXI slave interface (input to the FIFO)
     */
    input  wire                   s00_axis_aclk,
    input  wire                   s00_axis_aresetn,
    input  wire [C_AXIS_TDATA_WIDTH-1:0]  s00_axis_tdata,
    input  wire [(C_AXIS_TDATA_WIDTH/8)-1 : 0] s00_axis_tstrb,
    input  wire                   s00_axis_tvalid,
    output wire                   s00_axis_tready,
    input  wire                   s00_axis_tlast,

    /*
     * AXI master interface (output of the FIFO)
     */
    input  wire                   m00_axis_aclk,
    input  wire                   m00_axis_aresetn,
    output wire [C_AXIS_TDATA_WIDTH-1:0]  m00_axis_tdata,
    output wire [(C_AXIS_TDATA_WIDTH/8)-1 : 0] m00_axis_tstrb,
    output wire                   m00_axis_tvalid,
    input  wire                   m00_axis_tready,
    output wire                   m00_axis_tlast
);

reg [ADDR_WIDTH:0] wr_ptr_reg = {ADDR_WIDTH+1{1'b0}}, wr_ptr_next;
reg [ADDR_WIDTH:0] wr_ptr_gray_reg = {ADDR_WIDTH+1{1'b0}}, wr_ptr_gray_next;
reg [ADDR_WIDTH:0] wr_addr_reg = {ADDR_WIDTH+1{1'b0}};
reg [ADDR_WIDTH:0] rd_ptr_reg = {ADDR_WIDTH+1{1'b0}}, rd_ptr_next;
reg [ADDR_WIDTH:0] rd_ptr_gray_reg = {ADDR_WIDTH+1{1'b0}}, rd_ptr_gray_next;
reg [ADDR_WIDTH:0] rd_addr_reg = {ADDR_WIDTH+1{1'b0}};

reg [ADDR_WIDTH:0] wr_ptr_gray_sync1_reg = {ADDR_WIDTH+1{1'b0}};
reg [ADDR_WIDTH:0] wr_ptr_gray_sync2_reg = {ADDR_WIDTH+1{1'b0}};
reg [ADDR_WIDTH:0] rd_ptr_gray_sync1_reg = {ADDR_WIDTH+1{1'b0}};
reg [ADDR_WIDTH:0] rd_ptr_gray_sync2_reg = {ADDR_WIDTH+1{1'b0}};

reg s00_rst_sync1_reg = 1'b1;
reg s00_rst_sync2_reg = 1'b1;
reg s00_rst_sync3_reg = 1'b1;
reg m00_rst_sync1_reg = 1'b1;
reg m00_rst_sync2_reg = 1'b1;
reg m00_rst_sync3_reg = 1'b1;

reg [C_AXIS_TDATA_WIDTH+2-1:0] mem[(2**ADDR_WIDTH)-1:0];
reg [C_AXIS_TDATA_WIDTH+2-1:0] mem_read_data_reg = {C_AXIS_TDATA_WIDTH+2{1'b0}};
reg mem_read_data_valid_reg = 1'b0, mem_read_data_valid_next;
wire [C_AXIS_TDATA_WIDTH+2-1:0] mem_write_data;

reg [C_AXIS_TDATA_WIDTH+2-1:0] m00_data_reg = {C_AXIS_TDATA_WIDTH+2{1'b0}};

reg m00_axis_tvalid_reg = 1'b0, m00_axis_tvalid_next;

// full when first TWO MSBs do NOT match, but rest matches
// (gray code equivalent of first MSB different but rest same)
wire full = ((wr_ptr_gray_reg[ADDR_WIDTH] != rd_ptr_gray_sync2_reg[ADDR_WIDTH]) &&
             (wr_ptr_gray_reg[ADDR_WIDTH-1] != rd_ptr_gray_sync2_reg[ADDR_WIDTH-1]) &&
             (wr_ptr_gray_reg[ADDR_WIDTH-2:0] == rd_ptr_gray_sync2_reg[ADDR_WIDTH-2:0]));
// empty when pointers match exactly
wire empty = rd_ptr_gray_reg == wr_ptr_gray_sync2_reg;

// control signals
reg write;
reg read;
reg store_output;

assign s00_axis_tready = ~full & ~s00_rst_sync3_reg;

assign m00_axis_tvalid = m00_axis_tvalid_reg;

assign mem_write_data = {s00_axis_tlast, s00_axis_tdata};
assign {m00_axis_tlast, m00_axis_tdata} = m00_data_reg;

// reset synchronization
always @(posedge s00_axis_aclk) begin
    if (!s00_axis_aresetn) begin
        s00_rst_sync1_reg <= 1'b1;
        s00_rst_sync2_reg <= 1'b1;
        s00_rst_sync3_reg <= 1'b1;
    end else begin
        s00_rst_sync1_reg <= 1'b0;
        s00_rst_sync2_reg <= s00_rst_sync1_reg | m00_rst_sync1_reg;
        s00_rst_sync3_reg <= s00_rst_sync2_reg;
    end
end

always @(posedge m00_axis_aclk) begin
    if (!m00_axis_aresetn) begin
        m00_rst_sync1_reg <= 1'b1;
        m00_rst_sync2_reg <= 1'b1;
        m00_rst_sync3_reg <= 1'b1;
    end else begin
        m00_rst_sync1_reg <= 1'b0;
        m00_rst_sync2_reg <= s00_rst_sync1_reg | m00_rst_sync1_reg;
        m00_rst_sync3_reg <= m00_rst_sync2_reg;
    end
end

// Write logic
always @* begin
    write = 1'b0;

    wr_ptr_next = wr_ptr_reg;
    wr_ptr_gray_next = wr_ptr_gray_reg;

    if (s00_axis_tvalid) begin
        // input data valid
        if (~full) begin
            // not full, perform write
            write = 1'b1;
            wr_ptr_next = wr_ptr_reg + 1;
            wr_ptr_gray_next = wr_ptr_next ^ (wr_ptr_next >> 1);
        end
    end
end

reg [12:0] astar_mem_ptr = 13'd0;
reg flag_once = 1'b0;
reg astar_done = 1'b0;
reg astar_start = 1'b0;
reg [33:0] astar_write_data;
reg [12:0] astar_read_mem_ptr = 13'd0;
reg [33:0] astar_read_data;

//Reset signal for cordic processor
        wire ARESET;
        assign ARESET = ~m00_axis_aresetn;
        localparam integer W = 16;
        localparam integer H = 16;
        //Transfer output from cordic processor to output registers
        reg start,start_pre;
        reg write_en;
        reg [11:0] reg_idx,reg_idx_sync;
        reg [W-1:0] maze_v;
        reg [23:0] start_node;
        reg [23:0] end_node;
        wire ready_out;
        wire points_idx;
        wire [W-1:0] path_out;
        wire [W-1:0] close_out;
        wire [W-1:0] open_out;
        wire [7:0] state_out;
        reg [11:0] path_out_i;
//        reg [W-1:0] path [0:H-1] = {1,1,1,1};
//        reg [W-1:0] open [0:H-1] = {2,2,2,2};
//        reg [W-1:0] close [0:H-1] = {3,3,3,3};
        wire [W-1:0] maze [0:H-1];

always @(posedge s00_axis_aclk) begin
    if (s00_rst_sync3_reg) begin
        wr_ptr_reg <= {ADDR_WIDTH+1{1'b0}};
        wr_ptr_gray_reg <= {ADDR_WIDTH+1{1'b0}};
    end else begin
        wr_ptr_reg <= wr_ptr_next;
        wr_ptr_gray_reg <= wr_ptr_gray_next;
    end

    wr_addr_reg <= wr_ptr_next;

    if (write) begin
        mem[wr_addr_reg[ADDR_WIDTH-1:0]] <= mem_write_data;
        astar_start <= astar_start;
    end else begin
        if ((wr_addr_reg[ADDR_WIDTH-1:0] - rd_addr_reg[ADDR_WIDTH-1:0]) > (6*H-2)) begin
            astar_start <= 1'b1;
            mem[3 + H + astar_mem_ptr] <= astar_write_data;
        end else begin
            astar_start <= 1'b0;
        end
    end
end

// pointer synchronization
always @(posedge s00_axis_aclk) begin
    if (s00_rst_sync3_reg) begin
        rd_ptr_gray_sync1_reg <= {ADDR_WIDTH+1{1'b0}};
        rd_ptr_gray_sync2_reg <= {ADDR_WIDTH+1{1'b0}};
    end else begin
        rd_ptr_gray_sync1_reg <= rd_ptr_gray_reg;
        rd_ptr_gray_sync2_reg <= rd_ptr_gray_sync1_reg;
    end
end

always @(posedge m00_axis_aclk) begin
    if (m00_rst_sync3_reg) begin
        wr_ptr_gray_sync1_reg <= {ADDR_WIDTH+1{1'b0}};
        wr_ptr_gray_sync2_reg <= {ADDR_WIDTH+1{1'b0}};
    end else begin
        wr_ptr_gray_sync1_reg <= wr_ptr_gray_reg;
        wr_ptr_gray_sync2_reg <= wr_ptr_gray_sync1_reg;
    end
end

// Read logic
always @* begin
    read = 1'b0;

    rd_ptr_next = rd_ptr_reg;
    rd_ptr_gray_next = rd_ptr_gray_reg;

    mem_read_data_valid_next = mem_read_data_valid_reg;
if (astar_done) begin
    if (store_output | ~mem_read_data_valid_reg) begin
        // output data not valid OR currently being transferred
        if (~empty) begin
            // not empty, perform read
            read = 1'b1;
            mem_read_data_valid_next = 1'b1;
            rd_ptr_next = rd_ptr_reg + 1;
            rd_ptr_gray_next = rd_ptr_next ^ (rd_ptr_next >> 1);
        end else begin
            // empty, invalidate
            mem_read_data_valid_next = 1'b0;
        end
    end
end
end

always @(posedge m00_axis_aclk) begin
    if (m00_rst_sync3_reg) begin
        rd_ptr_reg <= {ADDR_WIDTH+1{1'b0}};
        rd_ptr_gray_reg <= {ADDR_WIDTH+1{1'b0}};
        mem_read_data_valid_reg <= 1'b0;
    end else begin
        rd_ptr_reg <= rd_ptr_next;
        rd_ptr_gray_reg <= rd_ptr_gray_next;
        mem_read_data_valid_reg <= mem_read_data_valid_next;
    end

    rd_addr_reg <= rd_ptr_next;

    if (read) begin
        mem_read_data_reg <= mem[rd_addr_reg[ADDR_WIDTH-1:0]];
    end else begin 
        astar_read_data <= mem[astar_read_mem_ptr];
    end
end

// Output register
always @* begin
    store_output = 1'b0;

    m00_axis_tvalid_next = m00_axis_tvalid_reg;

    if (m00_axis_tready | ~m00_axis_tvalid) begin
        store_output = 1'b1;
        m00_axis_tvalid_next = mem_read_data_valid_reg;
    end
end

always @(posedge m00_axis_aclk) begin
    if (m00_rst_sync3_reg) begin
        m00_axis_tvalid_reg <= 1'b0;
    end else begin
        m00_axis_tvalid_reg <= m00_axis_tvalid_next;
    end

    if (store_output) begin
        m00_data_reg <= mem_read_data_reg;
    end
end

    // States
    localparam IDLE       = 4'd0;
    localparam WAIT_0     = 4'd1;    
    localparam WRITE_O    = 4'd2;
    localparam WRITE_P    = 4'd3;
    localparam WRITE_C    = 4'd4;
    localparam READ_S     = 4'd5;
    localparam READ_E     = 4'd6;
    localparam READ_C     = 4'd7;
    localparam READ_M     = 4'd8;
    localparam WAIT_1     = 4'd9;

    // Internal storage elements
    reg [3:0]   state;
    
    reg [1:0] read_ctr;

always @(posedge m00_axis_aclk) begin
    if (!m00_axis_aresetn) begin
        state <= IDLE;
        astar_done <= 1'b0;
        astar_mem_ptr <= 13'd0;
        astar_write_data <= 34'd0;
        astar_read_mem_ptr <= 13'd0;
        read_ctr <= 2'd0;
        write_en <= 1'b0;
        start_node <= 24'b0;
        end_node <= 24'b0;
        start <= 1'b0;
    end else begin
        case (state)
        IDLE: begin
            if (astar_start) begin
                state <= READ_S;
            end else begin
                state <= IDLE;
            end
            astar_done <= 1'b0;
            astar_mem_ptr <= 13'd0;
            astar_write_data <= 34'd0;
            astar_read_mem_ptr <= 13'd0;
            read_ctr <= 2'd0;
            write_en <= 1'b0;
            start_node <= 24'b0;
            end_node <= 24'b0;
            start <= 1'b0;
//            astar_done <= astar_done;
//            astar_mem_ptr <= astar_mem_ptr;
//            astar_write_data <= astar_write_data;
//            astar_read_mem_ptr <= astar_read_mem_ptr;
//            read_ctr <= read_ctr;
        end
        READ_S: begin
            astar_done <= astar_done;
            astar_write_data <= astar_read_data;
            if (read_ctr < 1) begin
                read_ctr <= read_ctr + 1;
                astar_mem_ptr <= astar_mem_ptr;
                astar_read_mem_ptr <= astar_read_mem_ptr + 1;
                start_node <= start_node;
                state <= READ_S;
            end else begin 
                read_ctr <= 2'd0;
                astar_mem_ptr <= astar_mem_ptr + 1;
                astar_read_mem_ptr <= astar_read_mem_ptr;
                start_node <= astar_read_data[23:0];
                state <= READ_E;
            end
        end
        READ_E: begin
            astar_done <= astar_done;
            astar_write_data <= astar_read_data;
            if (read_ctr < 1) begin
                read_ctr <= read_ctr + 1;
                astar_mem_ptr <= astar_mem_ptr;
                astar_read_mem_ptr <= astar_read_mem_ptr + 1;
                end_node <= end_node;
                state <= READ_E;
            end else begin 
                read_ctr <= 2'd0;
                astar_mem_ptr <= astar_mem_ptr + 1;
                astar_read_mem_ptr <= astar_read_mem_ptr;
                end_node <= astar_read_data[23:0];
                state <= READ_C;
            end
        end
        READ_C: begin
            astar_done <= astar_done;
            astar_write_data <= astar_read_data;
            if (read_ctr < 1) begin
                read_ctr <= read_ctr + 1;
                astar_mem_ptr <= astar_mem_ptr;
                astar_read_mem_ptr <= astar_read_mem_ptr + 1;
                start_pre <= start_pre;
                state <= READ_C;
            end else begin 
                read_ctr <= 2'd0;
                astar_mem_ptr <= astar_mem_ptr + 1;
                astar_read_mem_ptr <= astar_read_mem_ptr;
                start_pre <= astar_read_data[0];
                state <= READ_M;
            end
        end
        READ_M: begin
            write_en <= 1'b1;
            astar_done <= astar_done;
            astar_write_data <= astar_read_data;
            start_pre <= start_pre;
            reg_idx <= reg_idx_sync;
            if (read_ctr < 1) begin
                read_ctr <= read_ctr + 1;
                astar_mem_ptr <= astar_mem_ptr;
                astar_read_mem_ptr <= astar_read_mem_ptr + 1;
                start <= start;
                state <= READ_M;
                reg_idx_sync <= reg_idx_sync;
                write_en <= 1'b1;
                maze_v <= maze_v;
            end else begin 
                read_ctr <= 2'd0;
                astar_read_mem_ptr <= astar_read_mem_ptr;
                maze_v <= astar_read_data[(W-1):0];
                if (reg_idx < (H-1)) begin
                    state <= READ_M;
                    reg_idx_sync <= reg_idx_sync + 1;
                    astar_mem_ptr <= astar_mem_ptr + 1;
                    write_en <= 1'b1;
                    start <= start;
                end else begin
                    state <= WAIT_0;
                    reg_idx_sync <= 12'd0;
                    astar_mem_ptr <= astar_mem_ptr;
                    write_en <= 1'b0;
                    start <= start_pre;
                end
            end
        end
        WAIT_0: begin
            reg_idx <= reg_idx_sync;
            start <= 1'b0;
            astar_done <= astar_done;
            astar_read_mem_ptr <= astar_read_mem_ptr;
            astar_mem_ptr <= astar_mem_ptr;
            astar_write_data <= astar_write_data;
            if (ready_out)
                state <= WRITE_P;
            else 
                state <= WAIT_0;
        end
        WRITE_P: begin
            astar_read_mem_ptr <= astar_read_mem_ptr;
            astar_done <= astar_done;
            if (astar_mem_ptr < (2+2*H)) begin
                astar_mem_ptr <= astar_mem_ptr + 1;
                reg_idx <= reg_idx + 1;
                astar_write_data <= {18'b0,path_out};
                state <= WRITE_P;
            end else begin
                 astar_mem_ptr <= astar_mem_ptr;
                 reg_idx <= 12'd0;
                 state <= WRITE_C;
            end
        end
        WRITE_C: begin
            astar_read_mem_ptr <= astar_read_mem_ptr;
            astar_done <= astar_done;
            if (astar_mem_ptr < (2+3*H)) begin
                reg_idx <= reg_idx + 1;
                astar_mem_ptr <= astar_mem_ptr + 1;
                astar_write_data <= {18'b0,close_out};
                state <= WRITE_C;
            end else begin
                 astar_mem_ptr <= astar_mem_ptr;
                 reg_idx <= 12'd0;
                 state <= WRITE_O;
            end
        end
        WRITE_O: begin
            astar_read_mem_ptr <= astar_read_mem_ptr;
            astar_done <= astar_done;
            if (astar_mem_ptr < (2+4*H)) begin
                astar_mem_ptr <= astar_mem_ptr + 1;
                reg_idx <= reg_idx + 1;
                astar_write_data <= {18'b0,open_out};
                state <= WRITE_O;
            end else begin
                 astar_mem_ptr <= astar_mem_ptr;
                 reg_idx <= 12'd0;
                 state <= WAIT_1;
            end
        end
        WAIT_1: begin
            if ((wr_addr_reg[ADDR_WIDTH-1:0] - rd_addr_reg[ADDR_WIDTH-1:0]) == 0) begin
                state <= IDLE;
                astar_done <= 1'b1;
            end else begin
                state <= WAIT_1;
                astar_done <= 1'b1;
            end
        end
        default: state <= IDLE;
        endcase
    end
end

astar_rtl #(W,H) astar( m00_axis_aclk, ARESET, write_en, start,start_node, end_node, maze_v, reg_idx, ready_out,path_out,close_out,open_out,state_out);

endmodule
