`timescale 1ns / 1ps

module test_divisor_param();
logic clk_in;
logic reset;
logic clk_out_50;
logic clk_out_30;
logic clk_out_10;
logic clk_out_1;

divisor_param #(.f_out(50)) DUT_divisor_param1(
    .clk_in(clk_in),
    .clk_out(clk_out_50),
    .reset(reset)
);
divisor_param #(.f_out(30)) DUT_divisor_param2(
    .clk_in(clk_in),
    .clk_out(clk_out_30),
    .reset(reset)
);
divisor_param #(.f_out(10)) DUT_divisor_param3(
    .clk_in(clk_in),
    .clk_out(clk_out_10),
    .reset(reset)
);
divisor_param #(.f_out(1)) DUT_divisor_param4(
    .clk_in(clk_in),
    .clk_out(clk_out_1),
    .reset(reset)
);
always #1 clk_in = ~clk_in;
initial
    begin
        clk_in = 0;
        reset = 1;
        #2
        reset = 0;
        clk_out_50 = 0;
    end
endmodule