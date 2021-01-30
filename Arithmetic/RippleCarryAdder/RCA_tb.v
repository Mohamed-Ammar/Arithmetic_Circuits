`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:04:20 01/28/2021
// Design Name:   RCA
// Module Name:   E:/CUFE/digital_design/verilog/Arithmtic/RippleCarryAdder/RCA_tb.v
// Project Name:  RippleCarryAdder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RCA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RCA_tb;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg Cin;
	// Outputs
	wire [7:0] Sum;
	wire Cout;
	integer i;
	// Instantiate the Unit Under Test (UUT)
	RCA uut (
		.A(A), 
		.B(B),
		.Cin(Cin),
		.Sum(Sum), 
		.Cout(Cout)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		Cin = 0;
		// Wait 100 ns for global reset to finish
		#10;
   	$monitor ("A=0b%0b B=0b%0b Sum=0b%0b Cout=0b%0b",A, B, Sum, Cout);     
		// Add stimulus here
	for ( i= 0; i < 8 ; i=i+1)
	begin
		#10 A   <= $random;
		    B   <= $random;
   end
	$finish;
	end
      
endmodule

