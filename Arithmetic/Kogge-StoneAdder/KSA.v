`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: m62ammar@gmail.com
// Engineer: Mohamed Ammar
// 
// Create Date:    16:46:16 01/29/2021 
// Design Name: 8 Bit Kogge-Stone Adder
// Module Name:    KSA 
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
module KSA(
	input  [7:0] A,
	input  [7:0] B,
	input  Cin,
	output [7:0] Sum,
	output Cout
    );

   wire [7:0] w_g,w_p,w_c;
	wire [16:0] w_G,w_P;
	
	//Calculating G and P for every bit position
	GP GP_0 (A[0],B[0],w_g[0],w_p[0]);
	GP GP_1 (A[1],B[1],w_g[1],w_p[1]);	
	GP GP_2 (A[2],B[2],w_g[2],w_p[2]);
	GP GP_3 (A[3],B[3],w_g[3],w_p[3]);
	GP GP_4 (A[4],B[4],w_g[4],w_p[4]);
	GP GP_5 (A[5],B[5],w_g[5],w_p[5]);
	GP GP_6 (A[6],B[6],w_g[6],w_p[6]);
	GP GP_7 (A[7],B[7],w_g[7],w_p[7]);
	
	//first sum bit  S = P_i xor C_i-1
	SumUnit U0 (w_g[0],w_p[0],w_p[0],Cin,w_c[0],Sum[0]);

	//First Dot Row
	Dot U01 (w_g[1],w_p[1],w_g[0],w_p[0],w_G[0],w_P[0]);
	Dot U12 (w_g[2],w_p[2],w_g[1],w_p[1],w_G[1],w_P[1]);
	Dot U23 (w_g[3],w_p[3],w_g[2],w_p[2],w_G[2],w_P[2]);
	Dot U34 (w_g[4],w_p[4],w_g[3],w_p[3],w_G[3],w_P[3]);	
	Dot U45 (w_g[5],w_p[5],w_g[4],w_p[4],w_G[4],w_P[4]);
	Dot U56 (w_g[6],w_p[6],w_g[5],w_p[5],w_G[5],w_P[5]);
	Dot U67 (w_g[7],w_p[7],w_g[6],w_p[6],w_G[6],w_P[6]);

	//Second sum bit
	SumUnit U1 (w_G[0],w_P[0],w_p[1],w_c[0],w_c[1],Sum[1]);	
	
	//Second Dot Row
	Dot U02 (w_G[1],w_P[1],w_g[0],w_p[0],w_G[7],w_P[7]);
	Dot U03 (w_G[2],w_P[2],w_G[0],w_P[0],w_G[8],w_P[8]);
	Dot U14 (w_G[3],w_P[3],w_G[1],w_P[1],w_G[9],w_P[9]);	
	Dot U25 (w_G[4],w_P[4],w_G[2],w_P[2],w_G[10],w_P[10]);
	Dot U36 (w_G[5],w_P[5],w_G[3],w_P[3],w_G[11],w_P[11]);
	Dot U47 (w_G[6],w_P[6],w_G[4],w_P[4],w_G[12],w_P[12]);	
	
	//BIT 2,3 
	SumUnit U2 (w_G[7],w_P[7],w_p[2],w_c[1],w_c[2],Sum[2]);		
	SumUnit U3 (w_G[8],w_P[8],w_p[3],w_c[2],w_c[3],Sum[3]);	
	
	//Last Dot Row
	Dot U04 (w_G[9],w_P[9],w_g[0],w_p[0],w_G[13],w_P[13]);
	Dot U05 (w_G[10],w_P[10],w_G[0],w_P[0],w_G[14],w_P[14]);
	Dot U06 (w_G[11],w_P[11],w_G[7],w_P[7],w_G[15],w_P[15]);	
	Dot U07 (w_G[12],w_P[12],w_G[8],w_P[8],w_G[16],w_P[16]);	
	
	//Calculating rest of Sum bits and Cout
	SumUnit U4 (w_G[13],w_P[13],w_p[4],w_c[3],w_c[4],Sum[4]);		
	SumUnit U5 (w_G[14],w_P[14],w_p[5],w_c[4],w_c[5],Sum[5]);	
	SumUnit U6 (w_G[15],w_P[15],w_p[6],w_c[5],w_c[6],Sum[6]);		
	SumUnit U7 (w_G[16],w_P[16],w_p[7],w_c[6],Cout,Sum[7]);		
	
	
endmodule
