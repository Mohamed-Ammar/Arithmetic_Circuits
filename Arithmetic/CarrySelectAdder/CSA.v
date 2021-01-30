`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: m62ammar@gmail.com
// Engineer: Mohamed Ammar
// 
// Create Date:    23:20:46 01/28/2021 
// Design Name: Carry Select Adder (16-bit)
// Module Name:    CSA 
// Project Name: 	Arithemtic Circuits
// Target Devices: 
// Tool versions: 
// Description: 16 bit Carry Select Adder using two 8 bit Ripple Carry Adder
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module CSA(
	input  [15:0] A,
	input  [15:0] B,
	input  Cin,
	output [15:0] Sum,
	output Cout
    );
	 
	 wire cout1,cout2,cout3,cout4,Cin_next;
	 wire [15:0] sum0,sum1;
	 
	 RCA RCA_1 (A[7:0],B[7:0],1'b0,sum0[7:0],cout1);
    RCA RCA_2 (A[7:0],B[7:0],1'b1,sum1[7:0],cout2);
	 MUX_sum_bits M2 (sum0[7:0],sum1[7:0],Cin,Sum[7:0]);
	 MUX_2_to_1   M1 (cout1,cout2,Cin,Cin_next);

	 
	 RCA RCA_3 (A[15:8],B[15:8],1'b0,sum0[15:8],cout3);
	 RCA RCA_4 (A[15:8],B[15:8],1'b1,sum1[15:8],cout4);
	 MUX_2_to_1   M3 (cout3,cout4,Cin_next,Cout);
	 MUX_sum_bits M4 (sum0[15:8],sum1[15:8],Cin_next,Sum[15:8]);
	 
endmodule
