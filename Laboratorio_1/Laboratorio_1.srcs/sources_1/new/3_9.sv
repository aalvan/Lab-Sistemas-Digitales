`timescale 1ns / 1ps

module mux_prueba(
    input logic A, B, sel,
    output logic C
    );
    always_comb
    begin
        if(sel == 1'b0)
            C = A;
        else
            C = B;
    end
    always_comb
    begin
        case(sel)
            1'b0: C = A;
            1'b1: C = B;
            default: C = 1'b0;
        endcase
    end
    assign C = (sel == 1'b0) ? A : B;
endmodule
