`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: m62ammar@gmail.com
// Engineer: Mohamed Ammar 
// 
// Create Date:    15:49:50 01/28/2021 
// Design Name: Half Adder
// Module Name:    HA 
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
module HA(
	input A,B,
	output sum,carry
    );
	assign sum   = A^B;
	assign carry = A&B;

endmodule
