`timescale 1ns / 1ps
module test_n_bit();
logic clk, reset;
logic [3:0] count;
logic [4:0] count_2;
logic [7:0] count_3;
n_bit_counter#(.N(4)) DUT_counter_nbit1(
    .clk(clk),
    .reset(reset),
    .count(count)
);
n_bit_counter#(.N(5)) DUT_counter_nbit2(
    .clk(clk),
    .reset(reset),
    .count(count_2)
);
n_bit_counter#(.N(8)) DUT_counter_nbit3(
    .clk(clk),
    .reset(reset),
    .count(count_3)
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