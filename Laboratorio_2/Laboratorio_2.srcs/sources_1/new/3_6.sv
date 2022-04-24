`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2022 01:07:38 PM
// Design Name: 
// Module Name: Reconocedor_fibinarios
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


module Reconocedor_fibinarios(
    output logic fib, // Salida fibinario
    input logic clk, reset, // Entradas counter_4bit
    output logic [6:0] sevenSeg // Salidas BCD

);    

    logic [3:0]count; // variable interna

    fib myFib(
    .BCD_in(count),
    .fib(fib)
    );
     counter_4bit myCounter(
    .clk(clk),
    .reset(reset),
    .count(count)
    );
    BCD_to_sevenSeg myBCD(
    .BCD_in(count),
    .sevenSeg(sevenSeg)
    );
endmodule
