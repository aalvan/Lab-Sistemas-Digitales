`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2022 01:29:58 PM
// Design Name: 
// Module Name: SUM
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


module SUM(
    input logic [0:1]A, [0:1]B,[0:1]C,
    output logic [0:1]S, [0:1]Cout
    );
    // Half adder
    //assign C = A & B; 
    //assign S = A^B;
    // FULL ADDER 
    //assign S = A + B;
    //assign S = A^B^C;
    //assign Cout = (A & B)|(B&C)|(C&A);
    assign {Cout, S} = A + B + C;
endmodule
