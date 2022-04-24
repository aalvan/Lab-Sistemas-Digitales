`timescale 1ns / 1ps
module test_muxs();
logic [3:0]a, b, c, d, e; // definicion de conexiones virtuales
logic [2:0]sel_;
logic [3:0]out_;
MUX MUX_DUT( //instancia del modulo a testear
    .A (a),
    .B (b),
    .C (c),
    .D (d),
    .E(e),
    .sel (sel_),
    .out(out_)
);
    initial //aca se asignan valores de
    begin
        a = 4'd1; b = 4'd2; c = 4'd3;d = 4'd5;e = 4'd6;sel_ = 3'b000;
        #2
        a = 4'd7; b = 4'd8; c = 4'd9;d = 4'd10;e = 4'd11;sel_ = 3'b001;
        #2
        a = 4'd12; b = 4'd13; c = 4'd14;d = 4'd15;e = 4'd16;sel_ = 3'b010;
    end
endmodule
