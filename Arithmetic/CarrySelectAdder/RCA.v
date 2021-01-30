`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: m62ammar@gmail.com
// Engineer: Mohamed Ammar
// 
// Create Date:    16:41:23 01/28/2021 
// Design Name: 
// Module Name:    RCA 
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
module RCA(
	input  [7:0]  A,B,
	input  Cin,
	output [7:0] Sum,
	output Cout
    );
	wire w1,w2,w3,w4,w5,w6;
	
	FA FA_0 (A[0],B[0],Cin,Sum[0],w1);
	FA FA_intermediate1 (A[1],B[1],w1,Sum[1],w2);
	FA FA_intermediate2 (A[2],B[2],w2,Sum[2],w3);
	FA FA_intermediate3 (A[3],B[3],w3,Sum[3],w4);
	FA FA_intermediate4 (A[4],B[4],w4,Sum[4],w5);
	FA FA_intermediate5 (A[5],B[5],w5,Sum[5],w6);
	FA FA_intermediate6 (A[6],B[6],w6,Sum[6],w7);
	FA FA_7 (A[7],B[7],w7,Sum[7],Cout);
	

endmodule
