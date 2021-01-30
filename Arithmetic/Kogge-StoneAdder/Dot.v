`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: m62ammar@gmail.com
// Engineer: Mohamed Ammar
// 
// Create Date:    16:47:45 01/29/2021 
// Design Name: Dot Operator
// Module Name:    Dot 
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
module Dot(
	input  Gi,
	input  Pi,
	input  Giprev,
	input  Piprev,
	output G,
	output P
    );

	assign P = Pi & Piprev ;
	assign G = Gi | (Pi & Giprev);
	
endmodule
