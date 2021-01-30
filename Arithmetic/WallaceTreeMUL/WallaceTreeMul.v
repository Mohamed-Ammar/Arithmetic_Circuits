`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: m62ammar@gmail.com
// Engineer: Mohamed Ammar
// 
// Create Date:    01:03:06 01/30/2021 
// Design Name: 4 Bit Wallace Tree Multiplier
// Module Name:    WallaceTree_Mul 
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
module WallaceTree_Mul(
 input  [3:0] A,
 input  [3:0] B,
 output [7:0] Result
    );
 wire [3:0] w_z0,w_z1,w_z2,w_z3;
 wire [5:0] w_c;
 wire [5:0] w_s;
 wire [6:0] w_s1,w_s2;
 
	Line L1 (A[0],B,w_z0);
	Line L2 (A[1],B,w_z1);
	Line L3 (A[2],B,w_z2);
	Line L4 (A[3],B,w_z3);
		
	//Step 1
	HA HA_1 (w_z0[2],w_z1[1],w_s[0],w_c[0]);
	FA FA_1 (w_z0[3],w_z1[2],w_z2[1],w_s[1],w_c[1]);
	FA FA_2 (w_z1[3],w_z2[2],w_z3[1],w_s[2],w_c[2]);
	
	//Step 2
	HA HA_2 (w_c[0],w_s[1],w_s[3],w_c[3]);	
	HA HA_3 (w_c[1],w_s[2],w_s[4],w_c[4]);
	FA FA_3 (w_z2[3],w_z3[2],w_c[2],w_s[5],w_c[5]);	
	
	//Step 3
	assign w_s1 = {w_c[5],w_c[4],w_c[3],w_s[3],w_s[0],w_z0[1],w_z0[0]};
	assign w_s2 = {w_z3[3],w_s[5],w_s[4],w_z3[0],w_z2[0],w_z1[0],1'b0};
		
	// This result could be an output of a fast adder 
	assign Result = w_s1 + w_s2 ;
	
	
endmodule
 