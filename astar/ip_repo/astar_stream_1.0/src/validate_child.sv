`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.06.2023 11:26:25
// Design Name: 
// Module Name: validate_child
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


module validate_child(clock, reset, children_g, children_v, open_list, close_list,open_list_g_int,children_v_out);

input clock, reset;
input [11:0] children_g;
input children_v;
input open_list;
input close_list;
input [11:0] open_list_g_int;

output logic children_v_out;

always @ (posedge clock) begin
    if(reset == 1'b1) begin
        children_v_out <= 1'b0;
    end else begin
     if ((children_v == 1'b1) && (close_list == 1'b0) && ((open_list == 1'b0) || (children_g < open_list_g_int)))
        children_v_out <= 1'b1;
     else 
        children_v_out <= 1'b0;
    end
end

endmodule
