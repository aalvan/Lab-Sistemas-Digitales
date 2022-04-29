`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2022 03:37:45 PM
// Design Name: 
// Module Name: mux_temporal
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


module mux_temporal(
input logic [3:0]BCD1,BCD2,BCD3,BCD4,
input logic in_counter
);
    logic my_out; // variable interna
    logic [2:0]my_sel;
    logic divisor_counter;
    MUX myMux(
        .BCD_IN1(BCD1),
        .BCD_IN2(BCD2),
        .BCD_IN3(BCD3),
        .BCD_IN4(BCD4),
        .sel(my_sel),
        .out(my_out)
        );
    BCD_to_sevenSeg mySeg(
        .BCD_in(my_out)
    );
    n_bit_counter#(.N(3)) myCounter(
        .clk(divisor_counter),
        .count(my_sel)
    );
    decoder myDecoder(
        .N(my_sel)
    );
    divisor_param(
    .clk_in(in_counter),
    .clk_out(divisor_counter)
    );
endmodule
