`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2019 12:18:31 AM
// Design Name: 
// Module Name: FrequencyDecoder
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


module Frequency_Decoder(
    input [7:0]A,
    output logic [15:0]decode
     
    );
    always_comb
    begin
    case(A)
//        8'h1D:decode = 16'hBAA2;    //OCTAVE 4
//        8'h24:decode = 16'hBAA2;
//        8'h2D:decode = 16'hBAA2;
//        8'h2C:decode = 16'hBAA2;
//        8'h35:decode = 16'hBAA2;
//        8'h3C:decode = 16'hBAA2;
//        8'h43:decode = 16'hBAA2;
//        8'h1Z:decode = 16'hBAA2;      //OCTAVE 5
//        8'h:decode = 16'hBAA2;
//        8'h1B:decode = 16'hBAA2;
//        8'h1B:decode = 16'hBAA2;
//        8'h1B:decode = 16'hBAA2;
//        8'h1B:decode = 16'hBAA2;
//        8'h1B:decode = 16'hBAA2;
//        8'h1B:decode = 16'hBAA2;        
        8'h1A:decode = 16'hBAA2;    //C //OCTAVE 6 
        8'h1B:decode = 16'hB028;
        8'h22:decode = 16'hA645;    //D
        8'h23:decode = 16'h9CF0;
        8'h21:decode = 16'h9422;    //E
        8'h2A:decode = 16'h8BD1;    //F
        8'h34:decode = 16'h83F8;
        8'h32:decode = 16'h7C90;    //G
        8'h33:decode = 16'h7592;
        8'h31:decode = 16'h6EF9;    //A        
        8'h3B:decode = 16'h68BE;
        8'h3A:decode = 16'h62DD;    //B
    default: decode=0;
    endcase
end
    
endmodule

//    0: decode=16'h0000;
//    1: decode=16'hBAA2;
//    2: decode=16'hB028;
//    3: decode=16'hA645;
//    4: decode=16'hA646;
//    5: decode=16'h9422;
//    6: decode=16'h8BD1;
//    7: decode=16'h83F8;
//    8: decode=16'h7C90;
//    9: decode=16'h7592;
//    10: decode=16'h6EF9;
//    11: decode=16'h68BF;
//    12: decode=16'h62DE;
//    13: decode=16'h5D51;
//    14: decode=16'h5814;
//    15: decode=16'h5323;
//    16: decode=16'h4E78;
//    17: decode=16'h4A11;
//    18: decode=16'h45E9;
//    19: decode=16'h41FC;
//    20: decode=16'h3E48;
//    21: decode=16'h3AC9;
//    22: decode=16'h377D;
//    23: decode=16'h345F;
//    24: decode=16'h316F;
//    25: decode=16'h2EA9;
//    26: decode=16'h2C0A;
//    27: decode=16'h2991;
//    28: decode=16'h273C;
//    29: decode=16'h2508;
//    30: decode=16'h22F4;
//    31: decode=16'h20FE;
//    32: decode=16'h1F24;
//    33: decode=16'h1D65;
//    34: decode=16'h1BBE;
//    35: decode=16'h1A30;
//    36: decode=16'h18B7;