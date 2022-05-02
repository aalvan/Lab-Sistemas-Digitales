`timescale 1ns / 1ps

module MUX(
    input logic [3:0]BCD_IN1, [3:0]BCD_IN2, [3:0]BCD_IN3, [3:0]BCD_IN4,
    [2:0]sel,
    output logic [3:0]out
    );
    always_comb
    begin
    case(sel)
        3'd0: out = BCD_IN4; // 3'b0000
        3'd1: out = BCD_IN3; // 3'b0001
        3'd2: out = BCD_IN2; // 3'b0010
        3'd3: out = BCD_IN1; // 3'b0011
        default: out = 4'd0; // esto depende del diseño que esten haciendo 4'b0000
    endcase
    end
endmodule