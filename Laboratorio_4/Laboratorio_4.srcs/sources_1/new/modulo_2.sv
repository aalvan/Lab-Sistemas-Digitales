`timescale 1ns / 1ps

module MUX(
    input logic [3:0]BCD_IN1, BCD_IN2, BCD_IN3, BCD_IN4,BCD_IN5, BCD_IN6, BCD_IN7, BCD_IN8,
    [2:0]sel,
    output logic [3:0]out
    );
    always_comb
    begin
    case(sel)
        3'd0: out = BCD_IN8; // 3'b0000
        3'd1: out = BCD_IN7; // 3'b0001
        3'd2: out = BCD_IN6; // 3'b0010
        3'd3: out = BCD_IN5; // 3'b0011
        3'd4: out = BCD_IN4; // 3'b0100
        3'd5: out = BCD_IN3; // 3'b0101
        3'd6: out = BCD_IN2; // 3'b0110
        3'd7: out = BCD_IN1; // 3'b0111
        default: out = 4'd0; // esto depende del diseño que esten haciendo 4'b0000
    endcase
    end
endmodule
