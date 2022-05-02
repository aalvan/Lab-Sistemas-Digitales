`timescale 1ns / 1ps

module decoder(
    input logic [2:0]N,
    output logic [3:0]Cout
);

always_comb
    case(N)
        3'd0: Cout= 4'b0001;
        3'd1: Cout= 4'b0010;
        3'd2: Cout= 4'b0100;
        3'd3: Cout= 4'b1000;
        default: Cout = 4'd0;
    endcase
endmodule
