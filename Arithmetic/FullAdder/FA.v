`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: m62ammar@gmail.com
// Engineer: Mohamed Ammar
// 
// Create Date:    15:56:35 01/28/2021 
// Design Name: Full Adder
// Module Name:    FA 
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
module FA( 
	input  A,B,Cin,
	output Sum,Cout
    );
	wire w_sum, w_carry1, w_carry2;
	
		HA HA_1(
		.A(A),
		.B(B),
		.sum(w_sum),
		.carry(w_carry1)
		);
		
		HA HA_2 (
		.A(Cin),
		.B(w_sum),
		.sum(Sum),
		.carry(w_carry2)
		);
		
		assign Cout = w_carry1 | w_carry2 ;
endmodule
