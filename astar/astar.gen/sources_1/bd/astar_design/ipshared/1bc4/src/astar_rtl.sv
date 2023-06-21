`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Hubert Mucha
// Engineer: Dawid Scechura
// Module Name: astar_rtl
// Project Name: astar 
// Target Devices: Arty-Z7
// Tool Versions: Vivado 2020.2
// 
//////////////////////////////////////////////////////////////////////////////////

module astar_rtl( clock, reset, write_en, start, start_node,end_node,maze_v,reg_idx, ready_out, path_out,close_out,open_out,state_out);
    parameter integer W = 10;
    parameter integer H = 10;
    input clock, reset;
    input write_en;
    input start; //start processing
    input [23:0] start_node;
    input [23:0] end_node;
    input [W-1:0] maze_v;
    input [11:0] reg_idx;
    
    output logic ready_out; //result is read
    output logic [W-1:0] path_out;
    output logic [W-1:0] close_out;
    output logic [W-1:0] open_out;
    output logic [7:0] state_out;
    //Cordic look-up table
    logic [W-1:0] open_list [0:H-1];
    logic [11:0] open_list_g_int [0:W-1][0:H-1];
    logic [11:0] open_list_f_int [0:W-1][0:H-1];
    logic [11:0] parent_list_x_int [0:W-1][0:H-1];
    logic [11:0] parent_list_y_int [0:W-1][0:H-1];
    logic [W-1:0] close_list [0:H-1];
    logic [W-1:0] path [0:H-1];
    
    logic signed [11:0] children_x [0:7];
    logic signed [11:0] children_y [0:7];
    logic children_v [0:7];
    logic children_v_pre [0:7];
    logic [11:0] children_g [0:7];
    logic [11:0] children_h [0:7];
    logic [11:0] diff_x [0:7];
    logic [11:0] diff_y [0:7];

//    logic [W-1:0] maze [0:H-1] = {0,0,0,0,16'b0111111111111110,16'b0100000000000010,16'b0100000000000010,16'b0100000000000010,16'b0111111111110010,0,0,0,0,0,0,0};
    logic [W-1:0] maze [0:H-1];
    
    logic [11:0] cur_g,cur_f;
    logic [7:0] state;
    //Algorithm Variables
    logic [11:0] parent_x;
    logic [11:0] parent_y;
    //Iterators
    int i,x,y;

    localparam int param_x [0:7] = {-1,0,1,-1,1,-1,0,1};
    localparam int param_y [0:7] = {-1,-1,-1,0,0,1,1,1};
    localparam int param_g [0:7] = {14,10,14,10,10,14,10,14};
    //FSMD states
    localparam S1 = 4'h1, S2 = 4'h2, S3 = 4'h3, S4 = 4'h4, S5 = 4'h5,
    S6 = 4'h6, S7 = 4'h7, S8 = 4'h8, S9 = 4'h9;
    
    assign state_out = state;
    assign path_out = path[reg_idx];
    assign close_out = close_list[reg_idx];
    assign open_out = open_list[reg_idx];

    genvar m;
    generate
        for (m=0;m<8;m=m+1) begin
            calc_children #(param_x[m],param_y[m],param_g[m]) calc_children_m (clock, reset,parent_x,parent_y,children_x[m],children_y[m],children_g[m],cur_g,end_node,diff_x[m],diff_y[m]);
            maze_children #(W,H)   maze_children_m (clock, reset, maze[children_x[m]][children_y[m]],children_x[m],children_y[m],children_v_pre[m]);
            validate_child validate_child_m (clock, reset, children_g[m], children_v_pre[m], open_list[children_x[m]][children_y[m]], close_list[children_x[m]][children_y[m]],open_list_g_int[children_x[m]][children_y[m]],children_v[m]);
        end
    endgenerate
    
    always @ (posedge clock) begin
        if(reset==1'b1) begin
            ready_out <= 1'b0;
            i <= 0;
            x <= 0;
            y <= 0;
            state <= S1;
        end else begin
            case(state)
            S1: begin
            i <= 0;
            x <= 0;
            y <= 0;
            cur_g <= 0;
            cur_f <= 1000;
            parent_x <= start_node[11:0];
            parent_y <= start_node[23:12];
            if(write_en == 1'b1) 
                maze[reg_idx] <= maze_v; 
            else 
                maze[reg_idx] <= maze[reg_idx];
            if(start == 1'b1) 
                state <= S2; 
            else 
                state <= S1;
            end
            S2: begin
            ready_out <= 0;
            open_list[x] <= 0;
            close_list[x] <= 0;
            path[x] <= 0;
            children_h[x] <= 0;
            open_list_g_int[x][y] <= 0;
            open_list_f_int[x][y] <= 0;
            parent_list_x_int[x][y] <= 0;
            parent_list_y_int[x][y] <= 0;
            if (x < (W-1)) begin
                state <= S2;
                x <= x + 1;
            end else begin
                x <= 0;
                if (y < (H-1)) begin
                    state <= S2;
                    y <= y + 1;
                end else begin
                    state <= S3;
                    y <= 0;
                end
            end
            end
            S3: begin
            open_list[parent_x][parent_y] <= 1'b0;
            close_list[parent_x][parent_y] <= 1'b1;
            cur_f <= 1000;
            state <= S4;
            end
            S4: begin
            children_h[i] <= (diff_x[i] + diff_y[i])*10;
            if (i > 7) begin
                state <= S6;
                i <= 0;
            end else if (children_v[i] == 1'b1) begin
                state <= S5;
                i <= i;
            end else begin
                state <= S4;
                i <= i + 1;
            end 
            end
            S5: begin
            open_list[children_x[i]][children_y[i]] <= 1'b1;
            open_list_g_int[children_x[i]][children_y[i]] <= children_g[i];
            open_list_f_int[children_x[i]][children_y[i]] <= children_g[i] + children_h[i];
            parent_list_x_int[children_x[i]][children_y[i]] <= parent_x;
            parent_list_y_int[children_x[i]][children_y[i]] <= parent_y;
            state <= S4;
            i <= i + 1;
            end
            S6: begin
              if ((cur_f > open_list_f_int[x][y]) && (open_list[x][y] == 1'b1)) begin
                cur_f <= open_list_f_int[x][y];
                cur_g <= open_list_g_int[x][y];
                parent_x <= x;
                parent_y <= y;
            end 
            if (x < (W-1)) begin
                x <= x + 1;
                state <= S6;
            end else begin 
                x <= 0;
                if (y < (H-1)) begin
                    y <= y + 1;
                    state <= S6;
                end else begin 
                    y <= 0;
                    state <= S7;
                end 
            end
            end
            S7: begin
            if ((parent_x == end_node[11:0]) && (parent_y == end_node[23:12])) begin
                state <= S8;
            end else begin
                state <= S3;
            end 
            end 
            S8: begin
            path[parent_x][parent_y] <= 1'b1;
            parent_x <= parent_list_x_int[parent_x][parent_y];
            parent_y <= parent_list_y_int[parent_x][parent_y];
            state <= S9;
            end
            S9: begin
            if ((parent_x == start_node[11:0]) && (parent_y == start_node[23:12])) begin
                path[parent_x][parent_y] <= 1'b1;
                ready_out <= 1'b1;
                state <= S1;
            end else begin
                state <= S8;
                ready_out <= 1'b0;
            end
            end     
            default : state <= S1;               
            endcase
        end
    end
endmodule