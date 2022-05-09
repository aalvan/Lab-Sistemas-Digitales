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
    logic N, Z, C, V;
    logic [M:0]Result2;
    
   always_comb begin
        case(OpCode)
            2'd0: // SUMA
                begin
                {C,Result} = A + B; // carry para numeros sin signo
                if (Result[M-1]== 'b1)
                    N = 1; // Para saber si el resultado es negativo
                if (Result == 'b0)
                    Z = 1; // Para saber si el resultado es 0
                
                // condiciones complemento 2
                if (A[M-1] == 'b0 & B[M-1]== 'b0 & Result[M-1] == 'b1)begin // Si la suma de dos números positivos resulta en un numero negativo es overflow
                        V = 'b1;
                    end
                 if (A[M-1] == 'b1 & B[M-1]== 'b1 & Result[M-1] == 'b0)begin
                        V = 'b1;
                    end

                end
            2'd1:begin // RESTA 
                {C,Result} = A - B;// borrow para numeros sin signo
                if (Result[M-1]== 'b1)
                    N = 'b1;
                if (Result == 'b0)
                    Z = 'b1;
                // condiciones complemento 2
                if (A[0] == 'b0 & B[M-1]== 'b1 & Result[M-1] == 'b1)begin 
                        V = 'b1;
                    end
                else if(A[M-1] == 'b1 & B[M-1]== 'b0 & Result[M-1] == 'b0) begin
                        V = 'b1;
                    end
               ///////////////////////
               end 
            2'd2: // OR
                Result = A | B;
            2'd3: // AND
                Result = A & B;
            default: Result = 'b0;
        endcase
    end
    assign Status = {N, Z, C, V}; 
endmodule
