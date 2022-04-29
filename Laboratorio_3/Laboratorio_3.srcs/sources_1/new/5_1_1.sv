`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2022 04:32:45 PM
// Design Name: 
// Module Name: test_decoder
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


module test_decoder();
logic [2:0]N_test;
logic [7:0]Cout_test;

decoder DUT_decoder(
    .N(N_test),
    .Cout(Cout_test)
);
initial
    begin
    N_test = 3'd0;
    #2
    N_test = 3'd1;
    #2
    N_test = 3'd2;
    #2
    N_test = 3'd3;
    #2
    N_test = 3'd4;
    #2
    N_test = 3'd5;
    #2
    N_test = 3'd6;
    #2
    N_test = 3'd7;        
    end
endmodule
