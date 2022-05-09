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
    logic [4-1:0]    A, B;
    logic [1:0]      OpCode;   
    logic [4-1:0]    Result;
    logic [3:0]      Status;
    S4_actividad3 #(.M(4)) DUT_S4_actividad3(
    .A(A),
    .B(B),
    .OpCode(OpCode),
    .Result(Result),
    .Status(Status)
    );
    initial
        begin // {N, Z, C, V}; 
        OpCode = 2'b00; // SUMA
        A = 4'b0001; // 1
        B = 4'b0010; // 2
        #10
        OpCode = 2'b01; // RESTA
        A = 4'b0001; // 1
        B = 4'b0001; // 1
        #10
        OpCode = 2'b10; // OR
        A = 4'b0001; // 1
        B = 4'b0011; // 3
        #10
        OpCode = 2'b11; // AND
        A = 4'b0001; // 1
        B = 4'b0011; // 3
        #10
        OpCode = 2'b00; // SUMA
        A = 4'b0111; //  + 7
        B = 4'b0111; //  + 7 ----> V = 1 -> overflow
        #10
        OpCode = 2'b01; // RESTA - 
        A = 4'b1001; // -7
        B = 4'b1001; // -7 ----> V = 1 -> overflow
        #10
        OpCode = 2'b00; // SUMA
        A = 4'b0011; //  + 3
        B = 4'b0011; //  + 3 ----> V = 0 -> no overflow
        end
endmodule
