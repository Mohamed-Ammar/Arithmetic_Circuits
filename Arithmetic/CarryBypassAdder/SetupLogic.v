`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: m62ammar@gmail.com
// Engineer: Mohamed Ammar
// 
// Create Date:    19:57:47 01/28/2021 
// Design Name: 
// Module Name:    SetupLogic 
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
module SetupLogic(
	input [7:0]  A,B,
	input  Cin,Cout,
	output Cin_next
    );
	reg [7:0] P; 
	reg [7:0] G; 
	reg [7:0] D; 
	
	always @(*)
	begin
	 P <= A ^ B;
	 //G <= A & B;
	 //D <= ~(A & B);
	end
	
	assign Cin_next = (P == 1) ? (Cin) : Cout ; 
endmodule
