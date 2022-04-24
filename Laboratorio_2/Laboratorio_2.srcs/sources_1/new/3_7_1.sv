`timescale 1ns / 1ps
module test_n_bit();
logic clk, reset;
logic [4:0] count;
logic [5:0] count_2;
n_bit_counter#(.N(5)) DUT_counter_nbit(
    .clk(clk),
    .reset(reset),
    .count(count)
);
    always
    #5 
    clk = ~clk;
    initial 
    begin
        clk = 0;
        reset = 1;
        #10 
        reset = 0;
    end
endmodule