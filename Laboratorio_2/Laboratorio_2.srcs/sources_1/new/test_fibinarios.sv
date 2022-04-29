`timescale 1ns / 1ps
module testbench_fibinarios();
logic clk, reset;

Reconocedor_fibinarios DUT_reconocedor_fibinario(
    .clk(clk),
    .reset(reset)
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
