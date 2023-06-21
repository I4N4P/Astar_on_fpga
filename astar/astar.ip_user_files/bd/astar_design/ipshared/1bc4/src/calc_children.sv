`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Hubert Mucha
// Engineer: Dawid Scechura
// Module Name: calc_children
// Project Name: astar 
// Target Devices: Arty-Z7
// Tool Versions: Vivado 2020.2
// 
//////////////////////////////////////////////////////////////////////////////////

module calc_children(clock, reset,parent_x,parent_y,children_x,children_y,children_g,current_g,end_node,diff_x,diff_y);
parameter int param_x = 0;
parameter int param_y = 0;
parameter int param_g = 0;
input clock, reset;
input [11:0] parent_x;
input [11:0] parent_y;
input [11:0] current_g;
input [23:0] end_node;
output logic signed [11:0] children_x;
output logic signed [11:0] children_y;
output logic [11:0] children_g;
output logic [11:0] diff_x;
output logic [11:0] diff_y;

always @ (posedge clock) begin
    if(reset == 1'b1) begin
        children_x <= 0;
        children_y <= 0;
        children_g <= 0;
        diff_x <= 0;
        diff_y <= 0;
    end else begin
        children_x <= parent_x + param_x;
        children_y <= parent_y + param_y;
        children_g <= current_g+ param_g;
        
        if ( end_node[11:0] > (parent_x + param_x))
            diff_x <= end_node[11:0] - (parent_x + param_x);
        else 
            diff_x <= (parent_x + param_x) - end_node[11:0];
        if ( end_node[23:12] > (parent_y + param_y))
            diff_y <= end_node[23:12] - (parent_y + param_y);
        else 
            diff_y <= (parent_y + param_y) - end_node[23:12];
    end
end
endmodule
