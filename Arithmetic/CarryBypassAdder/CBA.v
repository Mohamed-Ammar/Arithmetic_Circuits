`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: m62ammar@gmail.com
// Engineer: Mohamed Ammar
// 
// Create Date:    19:54:25 01/28/2021 
// Design Name: Carry Bypass Adder (16-bit)
// Module Name:    CBA 
// Project Name: 	Arithemtic Circuits
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
module CBA(
	input  [15:0] A,B,
	output [15:0] Sum,
	output Cout
    );
	 
	 wire cout1,cout2,cin1;
	 
	 RCA RCA_1 (A[7:0],B[7:0],1'b0,Sum[7:0],cout1);
	 SetupLogic U1 (A[7:0],B[7:0],1'b0,cout1,cin1);
	 
	 RCA RCA_2 (A[15:8],B[15:8],cin1,Sum[15:8],cout2);
	 SetupLogic U2 (A[15:8],B[15:8],cin1,cout2,Cout);
	 
endmodule
