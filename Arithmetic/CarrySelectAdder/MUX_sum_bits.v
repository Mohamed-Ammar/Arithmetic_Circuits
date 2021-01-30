`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:51:56 01/28/2021 
// Design Name: 
// Module Name:    MUX_sum_bits 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module MUX_sum_bits(
 input [7:0] sum0,
 input [7:0] sum1,
 input sel,
 output [7:0] sum 
    );

 assign sum = sel ? sum1 : sum0 ;

endmodule
