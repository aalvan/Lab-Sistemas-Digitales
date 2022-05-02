`timescale 1ns / 1ps

module mux_temporal(
input logic [3:0]BCD1,BCD2,BCD3,BCD4,
input logic in_counter,
input logic reset, reset_2,
output logic [6:0]sevenSeg, [3:0]Cout
);
    logic [3:0]my_out; // variable interna
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
        .BCD_in(my_out),
        .sevenSeg(sevenSeg)
    );
    decoder myDecoder(
        .N(my_sel),
        .Cout(Cout)
    );
    n_bit_counter#(.N(3)) myCounter(
        .clk(divisor_counter),
        .reset(reset_2),
        .count(my_sel)
    );
    divisor_param#(.f_out(30)) myDivisor(
        .clk_in(in_counter),
        .reset(reset),
        .clk_out(divisor_counter)
    );
endmodule
