`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:16:25 01/29/2021
// Design Name:   CSA
// Module Name:   E:/CUFE/digital_design/verilog/Arithmtic/CarrySelectAdder/CSA_tb.v
// Project Name:  CarrySelectAdder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CSA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CSA_tb;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg Cin;

	// Outputs
	wire [15:0] Sum;
	wire Cout;
 integer i;
	// Instantiate the Unit Under Test (UUT)
	CSA uut (
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
        	$monitor ("A=%0d B=%0d Cin =%0d Sum=%0d Cout=%0d",A, B,Cin,Sum, Cout);
		
		// Add stimulus here
	for ( i= 0; i < 8 ; i=i+1)
	begin
		#10 A   <= $random;
		    B   <= $random;
   end
	$finish;
	end
      
endmodule

