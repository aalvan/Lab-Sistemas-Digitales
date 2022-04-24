`timescale 1ns / 1ps
module test_bench_sum(); // creacion modulo "dummy"
logic a, b, c; // definicion de conexiones virtuales
logic s, cout;

SUM SUM_DUT( //instancia del modulo a testear
    .A (a),
    .B (b),
    .C (c),
    .S (s),
    .Cout (cout)
);
    initial //aca se asignan valores de
    begin
        a = 1'b0; b = 1'b0; c = 1'b0;
        #2
        a = 1'b0; b = 1'b0; c = 1'b1;
        #2
        a = 1'b0; b = 1'b1; c = 1'b0;
        #2
        a = 1'b0; b = 1'b1; c = 1'b1;
        #2
        a = 1'b1; b = 1'b0; c = 1'b0;
        #2
        a = 1'b1; b = 1'b0; c = 1'b1;
        #2
        a = 1'b1; b = 1'b1; c = 1'b0;
        #2
        a = 1'b1; b = 1'b1; c = 1'b1;
    end
endmodule
