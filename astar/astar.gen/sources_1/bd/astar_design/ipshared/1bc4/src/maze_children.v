`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Hubert Mucha
// Engineer: Dawid Scechura
// Module Name: maze_children
// Project Name: astar 
// Target Devices: Arty-Z7
// Tool Versions: Vivado 2020.2
// 
//////////////////////////////////////////////////////////////////////////////////


module maze_children(clock, reset, maze, children_x, children_y, children_v);
parameter int W = 10;
parameter int H = 10;
input clock, reset;
input maze;
input logic signed [11:0] children_x;
input logic signed [11:0] children_y;
output logic children_v;

always @ (posedge clock) begin
    if (reset) begin
        children_v <= 1'b0;
    end else begin
        if ((children_x < 0) || (children_y < 0) || (children_x > (W-1)) || (children_y > (H-1)) || maze == 1'b1)
            children_v <= 1'b0;
        else 
            children_v <= 1'b1;
    end
end
endmodule
