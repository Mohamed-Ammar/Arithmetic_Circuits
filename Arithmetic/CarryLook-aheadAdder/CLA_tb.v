`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: m62ammar@gmail.com
// Engineer: Mohamed Ammar
//
// Create Date:   15:34:11 01/29/2021
// Design Name:   CLA
// Module Name:   E:/CUFE/digital_design/verilog/Arithmtic/CarryLook-aheadAdder/CLA_tb.v
// Project Name:  CarryLook-aheadAdder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CLA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CLA_tb;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg Cin;

	// Outputs
	wire [7:0] Sum;
	wire Cout;
	integer i; 
	// Instantiate the Unit Under Test (UUT)
	CLA uut (
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
	$monitor ("A=%0d B=%0d Sum=%0d Cout=%0d",A, B, Sum, Cout);
	
	for ( i= 0; i < 8 ; i=i+1)
	begin
		#10 A   <= $random;
		    B   <= $random;
   end
	$finish;
	end
      
endmodule

