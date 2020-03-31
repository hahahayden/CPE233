`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2019 12:16:29 AM
// Design Name: 
// Module Name: Speaker
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SpeakerTop(
    input clk,
    input [7:0] Data,
    output logic sclk
    );
    logic[15:0] t1; 
    
    Frequency_Decoder cases(.A(Data), .decode(t1));
    
    clockdivider clockdivider (.clk(clk),.clockdividerNum(t1),.sclk(sclk));
endmodule
