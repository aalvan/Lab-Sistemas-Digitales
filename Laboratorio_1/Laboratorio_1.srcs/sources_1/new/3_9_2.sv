`timescale 1ns / 1ps

module MUX(
    input logic [3:0]A, [3:0]B, [3:0]C, [3:0]D, [3:0]E, [2:0]sel,
    output logic [3:0]out
    );
    always_comb
    begin
    case(sel)
        3'd0: out = A; // 3'b000
        3'd1: out = B; // 3'b001
        3'd2: out = C; // 3'b010
        3'd3: out = D; // 3'b011
        3'd4: out = E; // 3'b100
        default: out = 4'd0; // esto depende del diseño que esten haciendo 4'b0000
    endcase
    end
endmodule
