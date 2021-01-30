`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:01:02 01/29/2021 
// Design Name: 
// Module Name:    GP 
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
module GPC(
	input  A,
	input  B,
	input Cin,
	output C
    );

	assign G = A&B;
	assign P = A^B;
	assign C = G | (P & Cin);
	
endmodule
