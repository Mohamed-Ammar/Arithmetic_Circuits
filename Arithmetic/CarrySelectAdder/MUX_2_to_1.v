`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:30:42 01/28/2021 
// Design Name: 
// Module Name:    MUX_2_to_1 
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
module MUX_2_to_1(
 input cout1,
 input cout2,
 input sel,
 output Cout 
    );
 assign Cout = sel ? cout2 : cout1 ;

endmodule
