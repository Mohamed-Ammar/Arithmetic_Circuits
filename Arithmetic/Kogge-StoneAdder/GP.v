`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: m62ammar@gmail.com
// Engineer: Mohamed Ammar
// 
// Create Date:    16:53:29 01/29/2021 
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
module GP( 
	input  A,
	input  B,
	output G,
	output P
    );

	assign G = A & B;
	assign P = A ^ B;

endmodule
