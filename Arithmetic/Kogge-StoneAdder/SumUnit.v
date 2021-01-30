`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: m62ammar@gmail.com
// Engineer: 	Mohamed Ammar
// 
// Create Date:    18:07:14 01/29/2021 
// Design Name: 
// Module Name:    SumUnit 
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
module SumUnit(
	input  G,
	input  P,
	input  Pi,
	input  Cin,
	output Cout,
	output Sum
    );

	assign Cout = G | (P & Cin);
	assign Sum  = Pi^Cin;

endmodule
