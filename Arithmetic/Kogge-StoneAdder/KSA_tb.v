`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:10:52 01/29/2021
// Design Name:   KSA
// Module Name:   E:/CUFE/digital_design/verilog/Arithmtic/Kogge-StoneAdder/KSA_tb.v
// Project Name:  Kogge-StoneAdder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: KSA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module KSA_tb;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg Cin;

	// Outputs
	wire [7:0] Sum;
	wire Cout;
	integer i; 
	// Instantiate the Unit Under Test (UUT)
	KSA uut (
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

