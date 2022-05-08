`timescale 1ns / 1ps

module decoder(
    input logic [2:0]N,
    output logic [7:0]Cout
);

always_comb
    case(N)
        3'd0: Cout= 8'b00000001;
        3'd1: Cout= 8'b00000010;
        3'd2: Cout= 8'b00000100;
        3'd3: Cout= 8'b00001000;
        3'd4: Cout= 8'b00010000;
        3'd5: Cout= 8'b00100000;
        3'd6: Cout= 8'b01000000;
        3'd7: Cout= 8'b10000000;
        default: Cout = 8'd0;
    endcase
endmodule