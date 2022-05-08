`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2022 10:53:15 PM
// Design Name: 
// Module Name: tb_S4
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


module tb_S4();
    logic clock;
    logic reset;
    logic [31:0] BCD_in; // display de 32 segmentos
    logic [6:0]  segments;
    logic [7:0]  anodos;
    S4_actividad1 DUT_S4_actividad1(
        .clock(clock),
        .BCD_in(BCD_in),
        .segments(segments),
        .anodos(anodos),
        .reset(reset)
    );
    always #1 clock = ~clock;
    initial
        begin
        clock = 0;
        reset = 1;
        BCD_in = 32'b00100010000100100100000010000101;
        #2
        reset = 0;
        #30
        reset = 1;
        end
endmodule
