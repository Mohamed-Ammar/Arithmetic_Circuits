`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:06:19 01/28/2021
// Design Name:   FA
// Module Name:   E:/CUFE/digital_design/verilog/Arithmtic/FullAdder/FA_tb.v
// Project Name:  FullAdder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FA_tb;

	// Inputs
	reg A;
	reg B;
	reg Cin;

	// Outputs
	wire Sum;
	wire Cout;
	integer i;
	// Instantiate the Unit Under Test (UUT)
	FA uut (
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
		// Add stimulus here
	$monitor ("A=0x%0h B=0x%0h Cin=0x%0h Sum=0x%0h Cout=0x%0h",A, B, Cin, Sum, Cout);
	
	for ( i= 0; i < 8 ; i=i+1)
	begin
		#10 A   <= $random;
		    B   <= $random;
			 Cin <= $random;
   end
	$finish;
	end
      
endmodule

