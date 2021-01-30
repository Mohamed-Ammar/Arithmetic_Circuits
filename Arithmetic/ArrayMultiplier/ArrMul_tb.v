`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:21:01 01/30/2021
// Design Name:   ArrMul
// Module Name:   E:/CUFE/digital_design/verilog/Arithmtic/ArrayMultiplier/ArrMul_tb.v
// Project Name:  ArrayMultiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ArrMul
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ArrMul_tb;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire [7:0] Result;
	integer i;
	// Instantiate the Unit Under Test (UUT)
	ArrMul uut (
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

