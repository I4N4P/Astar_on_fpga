`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2023 12:33:46
// Design Name: 
// Module Name: maze_children
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
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
    if ((children_x < 0) || (children_y < 0) || (children_x > (W-1)) || (children_y > (H-1)) || maze == 1'b1)
        children_v <= 1'b0;
    else 
        children_v <= 1'b1;
end
endmodule
