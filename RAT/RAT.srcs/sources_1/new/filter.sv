`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2019 07:14:52 PM
// Design Name: 
// Module Name: filter
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


module filter(
    input [7:0] IN_PORT,
    output logic [7:0] FILTERED_IN
    );
    
    always_comb 
    begin
        case(IN_PORT)
            8'h07:FILTERED_IN = IN_PORT;
            default: FILTERED_IN = 0;
        endcase
    end
    
endmodule
