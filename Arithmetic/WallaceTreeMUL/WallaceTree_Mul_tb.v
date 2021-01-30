`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: m62ammar@gmail.com
// Engineer: Mohamed Ammar
//
// Create Date:   01:28:51 01/30/2021
// Design Name:   WallaceTree_Mul
// Module Name:   E:/CUFE/digital_design/verilog/Arithmtic/WallaceTreeMUL/WallaceTree_Mul_tb.v
// Project Name:  WallaceTreeMUL
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: WallaceTree_Mul
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module WallaceTree_Mul_tb;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire [7:0] Result;
	integer i;
	// Instantiate the Unit Under Test (UUT)
	WallaceTree_Mul uut (
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

