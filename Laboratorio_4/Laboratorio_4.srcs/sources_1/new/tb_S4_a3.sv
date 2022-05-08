`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2022 01:29:05 AM
// Design Name: 
// Module Name: tb_S4_a3
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


module tb_S4_a3();
    logic [2-1:0]    A, B;
    logic [1:0]      OpCode;   
    logic [2-1:0]    Result;
    logic [3:0]      Status;
    S4_actividad3 #(.M(2)) DUT_S4_actividad3(
    .A(A),
    .B(B),
    .OpCode(OpCode),
    .Result(Result),
    .Status(Status)
    );
    initial
        begin
        OpCode = 2'b00;
        A = 2'b01;
        B = 2'b10;
        #10
        OpCode = 2'b01;
        A = 2'b01;
        B = 2'b01;
        #10
        OpCode = 2'b10;
        A = 2'b01;
        B = 2'b11;
        #10
        OpCode = 2'b11;
        A = 2'b01;
        B = 2'b11;
        end
endmodule
