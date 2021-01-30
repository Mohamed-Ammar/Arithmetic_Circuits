`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:52:46 01/28/2021
// Design Name:   HA
// Module Name:   E:/CUFE/digital_design/verilog/Arithmtic/HalfAdder/HA_tb.v
// Project Name:  HalfAdder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: HA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module HA_tb;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire sum;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	HA uut (
		.A(A), 
		.B(B), 
		.sum(sum), 
		.carry(carry)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#10;
		// Add stimulus here
	A = 0;
	B = 0;
	#10;
	A = 0;
	B = 1;
	#10;
	A = 1;
	B = 0;
	#10
	A = 1;
	B = 1;
	#10 $finish;
	
	end
      
endmodule

