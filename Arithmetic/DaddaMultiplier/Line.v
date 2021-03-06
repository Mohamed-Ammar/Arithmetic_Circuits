`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: m62ammar@gmail.com
// Engineer: Mohamed Ammar
// 
// Create Date:    23:43:21 01/29/2021 
// Design Name: 
// Module Name:    Line 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Line( 
	input  x,
	input  [7:0] y,
	output [7:0] z
    );
	 
 assign z[0] = x & y[0];
 assign z[1] = x & y[1];
 assign z[2] = x & y[2];
 assign z[3] = x & y[3]; 
 assign z[4] = x & y[4];
 assign z[5] = x & y[5];
 assign z[6] = x & y[6];
 assign z[7] = x & y[7];

endmodule
