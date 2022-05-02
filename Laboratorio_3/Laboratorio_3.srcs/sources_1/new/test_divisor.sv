`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2022 05:00:30 PM
// Design Name: 
// Module Name: test_divisor_code
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


module test_divisor_code();
logic clk_in;
logic reset;
logic clk_out;

divisor #(.COUNTER_MAX(3)) DUT_divisor(
    .clk_in(clk_in),
    .clk_out(clk_out),
    .reset(reset)
    
);
always #1 clk_in = ~clk_in;
initial
    begin
        clk_in = 0;
        reset = 1;
        #2
        reset = 0;
    end
endmodule
