`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2022 01:04:07 AM
// Design Name: 
// Module Name: S4_actividad3
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


module S4_actividad3 #(parameter M = 8)(
    input  logic [M-1:0]    A, B,
    input  logic [1:0]      OpCode,       
    output logic [M-1:0]    Result,
    output logic [3:0]      Status
    );
    logic N, Z, c, V;
    logic [M:0]Result2;
    always_comb begin
        N = 1'b0;
        Z = 1'b0;
        c = 1'b0;
        V = 1'b0;
    end
    always_comb begin
        if(OpCode == 2'b00) begin
            Result = A + B;
            Result2 = A + B;
            if(Result2[M] == 1)
                C = 1;
            else if (Result2[M-1] == 1) 
                V = 1;
            end
            else if(A[M-1]==0 & B[M-1]==0)begin
                if(Result[M-1]==1)
                    V = 1;
             end
             else if(A[M-1]==1 & B[M-1]==1)begin
                if(Result[M-1]==0)
                    V = 1;
             end     
        else if(OpCode == 2'b01) begin
            Result = A - B;
            Result2 = A - B;
            if(Result2[M] == 1)
                    C = 1;
            else if (Result2[M-1] == 1) 
                    V = 0;
            else if(A[M-1]==0 & B[M-1]==1)begin
                if(Result[M-1]==1)
                    V = 1;
             end
             else if(A[M-1]==1 & B[M-1]==0)begin
                if(Result[M-1]==0)
                    V = 1;
                end
            end
           
        else if(OpCode == 2'b10)
            Result = A | B;
        else if(OpCode == 2'b11)
            Result = A & B;
    end 
        
    always_comb begin
        if(Result[M-1] == 1)
            N = 1;
        else
            N = 0;
    end
    
    always_comb begin
        if(Result == 0)
            Z = 1;
        else
            Z = 0;
    end

    assign Status = {N,Z,c,V};
         
    
endmodule
