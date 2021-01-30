`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: m62ammar@gmail.com
// Engineer: Mohamed Ammar
// 
// Create Date:    14:56:57 01/29/2021 
// Design Name: 8 Bit Carry Look-ahead Adder
// Module Name:    CLA 
// Project Name: Arithemtic Circuits
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
module CLA(
	input  [7:0] A,
	input  [7:0] B,
	input Cin,
	output [7:0] Sum,
	output Cout
    );
	 
	wire [6:0] w_c;
	
	GPC GPC_0 (A[0],B[0],Cin,w_c[0]);
	GPC GPC_1 (A[1],B[1],w_c[0],w_c[1]);	
	GPC GPC_2 (A[2],B[2],w_c[1],w_c[2]);					
	GPC GPC_3 (A[3],B[3],w_c[2],w_c[3]);	
	GPC GPC_4 (A[4],B[4],w_c[3],w_c[4]);	
	GPC GPC_5 (A[5],B[5],w_c[4],w_c[5]);	
	GPC GPC_6 (A[6],B[6],w_c[5],w_c[6]);
	GPC GPC_7 (A[7],B[7],w_c[6],Cout);		

	FA FA_0 (A[0],B[0],Cin,Sum[0],);
	FA FA_1 (A[1],B[1],w_c[0],Sum[1],);
	FA FA_2 (A[2],B[2],w_c[1],Sum[2],);
	FA FA_3 (A[3],B[3],w_c[2],Sum[3],);
	FA FA_4 (A[4],B[4],w_c[3],Sum[4],);
	FA FA_5 (A[5],B[5],w_c[4],Sum[5],);
	FA FA_6 (A[6],B[6],w_c[5],Sum[6],);
	FA FA_7 (A[7],B[7],w_c[6],Sum[7],);
		
endmodule
