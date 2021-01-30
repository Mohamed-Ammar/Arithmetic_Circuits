`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:41:26 01/28/2021
// Design Name:   CBA
// Module Name:   E:/CUFE/digital_design/verilog/Arithmtic/CarryBypassAdder/CBA_tb.v
// Project Name:  CarryBypassAdder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CBA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CBA_tb;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;

	// Outputs
	wire [15:0] Sum;
	wire Cout;
	integer i;

	// Instantiate the Unit Under Test (UUT)
	CBA uut (
		.A(A), 
		.B(B), 
		.Sum(Sum), 
		.Cout(Cout)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		// Wait 100 ns for global reset to finish
		#10;
        	$monitor ("A=0x%0d B=0x%0d Sum=0x%0d Cout=0x%0d",A, B, Sum, Cout);

		// Add stimulus here
	for ( i= 0; i < 8 ; i=i+1)
	begin
		#10 A   <= $random;
		    B   <= $random;
   end
	$finish;
	end
      
endmodule

