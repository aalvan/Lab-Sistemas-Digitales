`timescale 1ns / 1ps

module test_fib_rec(); // los modulos de prueba no tienen entradas ni salidas
    logic [3:0] BCD_in;
    logic fib;
    fib_rec fib_rec_DUT(
    .BCD_in(BCD_in),
    .fib(fib)
    );
    initial 
    begin
    BCD_in = 4'd0; //4b'0000
    #1
    BCD_in = 4'd1; //4b'0001
    #1
    BCD_in = 4'd2; //4b'0010
    #1
    BCD_in = 4'd3;
    #1
    BCD_in = 4'd4;
    #1
    BCD_in = 4'd5;
    #1
    BCD_in = 4'd6;
    #1
    BCD_in = 4'd7;
    #1
    BCD_in = 4'd8;
    #1
    BCD_in = 4'd9;
    #1
    BCD_in = 4'd10; // 4'b1010 4'bhA 4'bha
    #1
    BCD_in = 4'd11;
    #1
    BCD_in = 4'd12;
    #1
    BCD_in = 4'd13;
    #1
    BCD_in = 4'd14;
    #1
    BCD_in = 4'd15;
    end
endmodule
