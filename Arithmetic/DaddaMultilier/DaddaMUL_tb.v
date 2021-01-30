`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:35:13 01/30/2021
// Design Name:   DaddaMUL
// Module Name:   E:/CUFE/digital_design/verilog/Arithmtic/DaddaMultilier/DaddaMUL_tb.v
// Project Name:  DaddaMultilier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DaddaMUL
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DaddaMUL_tb;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;

	// Outputs
	wire [15:0] Result;
	integer i;
	// Instantiate the Unit Under Test (UUT)
	DaddaMUL uut (
		.A(A), 
		.B(B), 
		.Result(Result)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#10;
        
		// Add stimulus here
	$monitor ("A=%0d B=%0d  Result=%0d",A, B, Result);
	
	for ( i= 0; i < 16 ; i=i+1)
	begin
		#10 A   <= $random;
		    B   <= $random;
   end
	$finish;
	end
      
endmodule

