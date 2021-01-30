`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: m62ammar@gmail.com
// Engineer: Mohamed Ammar
// 
// Create Date:    02:44:08 01/30/2021 
// Design Name: 8 Bit Dadda Multiplier
// Module Name:    DaddaMUL 
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
module DaddaMUL(
 input  [7:0] A,
 input  [7:0] B,
 output [15:0] Result
    );
 wire [7:0] w_z0,w_z1,w_z2,w_z3,w_z4,w_z5,w_z6,w_z7;
 wire [41:0] w_c;
 wire [41:0] w_s;
 wire [14:0] w_s1,w_s2;
 
	Line L0 (A[0],B,w_z0);
	Line L1 (A[1],B,w_z1);
	Line L2 (A[2],B,w_z2);
	Line L3 (A[3],B,w_z3);
	Line L4 (A[4],B,w_z4);
	Line L5 (A[5],B,w_z5);
	Line L6 (A[6],B,w_z6);
	Line L7 (A[7],B,w_z7);
	
	// First Step d = 6
	HA HA_1  (w_z0[6],w_z1[5],w_s[0],w_c[0]);
	FA FA_1  (w_z0[7],w_z1[6],w_z2[5],w_s[1],w_c[1]);
	HA HA_2  (w_z3[4],w_z4[3],w_s[2],w_c[2]);
	FA FA_2  (w_z1[7],w_z2[6],w_z3[5],w_s[3],w_c[3]);
	HA HA_3  (w_z4[4],w_z5[3],w_s[4],w_c[4]);
	FA FA_3  (w_z2[7],w_z3[6],w_z4[5],w_s[5],w_c[5]);
	
	// Second Step d = 4	
	HA HA_4  (w_z0[4],w_z1[3],w_s[6],w_c[6]);
	FA FA_4  (w_z0[5],w_z1[4],w_z2[3],w_s[7],w_c[7]);
	HA HA_5  (w_z3[2],w_z4[1],w_s[8],w_c[8]);	
	FA FA_5  (w_s[0],w_z2[4],w_z3[3],w_s[9],w_c[9]);
	FA FA_6  (w_z4[2],w_z5[1],w_z6[0],w_s[10],w_c[10]);
	FA FA_7  (w_s[1],w_s[2],w_z5[2],w_s[11],w_c[11]);
	FA FA_8  (w_c[0],w_z6[1],w_z7[0],w_s[12],w_c[12]);
	FA FA_9  (w_c[1],w_c[2],w_s[3],w_s[13],w_c[13]);
	FA FA_10 (w_s[4],w_z6[2],w_z7[1],w_s[14],w_c[14]);
	FA FA_11 (w_c[3],w_c[4],w_s[5],w_s[15],w_c[15]);
	FA FA_12 (w_z5[4],w_z6[3],w_z7[2],w_s[16],w_c[16]);
	FA FA_13 (w_c[5],w_z3[7],w_z4[6],w_s[17],w_c[17]);	
	FA FA_14 (w_z5[5],w_z6[4],w_z7[3],w_s[18],w_c[18]);
	FA FA_15 (w_z4[7],w_z5[6],w_z6[5],w_s[19],w_c[19]);

	// Third Step d = 3		
	HA HA_6  (w_z0[3],w_z1[2],w_s[20],w_c[20]);	
	FA FA_16 (w_s[6],w_z2[2],w_z3[1],w_s[21],w_c[21]);	
	FA FA_17 (w_s[7],w_s[8],w_c[6],w_s[22],w_c[22]);	
	FA FA_18 (w_c[7],w_c[8],w_s[9],w_s[23],w_c[23]);
	FA FA_19 (w_c[9],w_c[10],w_s[11],w_s[24],w_c[24]);
	FA FA_20 (w_c[11],w_c[12],w_s[13],w_s[25],w_c[25]);		
	FA FA_21 (w_c[13],w_c[14],w_s[15],w_s[26],w_c[26]);
	FA FA_22 (w_c[15],w_c[16],w_s[17],w_s[27],w_c[27]);
	FA FA_23 (w_c[17],w_c[18],w_s[19],w_s[28],w_c[28]);
	FA FA_24 (w_c[19],w_z5[7],w_z6[6],w_s[29],w_c[29]);

	// Fourth Step d = 2	
	HA HA_7  (w_z0[2],w_z1[1],w_s[30],w_c[30]);
	FA FA_25 (w_s[20],w_z2[1],w_z3[0],w_s[31],w_c[31]);		
	FA FA_26 (w_s[21],w_c[20],w_z4[0],w_s[32],w_c[32]);	
	FA FA_27 (w_s[22],w_c[21],w_z5[0],w_s[33],w_c[33]);		
	FA FA_28 (w_s[23],w_c[22],w_s[10],w_s[34],w_c[34]);	
	FA FA_29 (w_s[24],w_c[23],w_s[12],w_s[35],w_c[35]);	
	FA FA_30 (w_s[25],w_c[24],w_s[14],w_s[36],w_c[36]);
	FA FA_31 (w_s[26],w_c[25],w_s[16],w_s[37],w_c[37]);
	FA FA_32 (w_s[27],w_c[26],w_s[18],w_s[38],w_c[38]);
	FA FA_33 (w_s[28],w_c[27],w_z7[4],w_s[39],w_c[39]);
	FA FA_34 (w_s[29],w_c[28],w_z7[5],w_s[40],w_c[40]);	
	FA FA_35 (w_c[29],w_z6[7],w_z7[6],w_s[41],w_c[41]);	
	
	//Addition Step (Final Step)
	assign w_s1 = {w_c[41],w_s[41],w_s[40],w_s[39],w_s[38],w_s[37],w_s[36],w_s[35],w_s[34],w_s[33],w_s[32],w_s[31],w_s[30],w_z0[1],w_z0[0]};
	assign w_s2 = {w_z7[7],w_c[40],w_c[39],w_c[38],w_c[37],w_c[36],w_c[35],w_c[34],w_c[33],w_c[32],w_c[31],w_c[30],w_z2[0],w_z1[0],1'b0};
	
	assign Result = w_s1 + w_s2 ;
	
endmodule
