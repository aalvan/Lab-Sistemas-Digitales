`timescale 1ns / 1ps

module fib(
input logic [3:0] BCD_in,
output logic fib
    );
    always_comb
    begin // 4'b0000 4'h0
        if(BCD_in == 4'd0 || BCD_in == 4'd1 || BCD_in == 4'd2 || BCD_in == 4'd4 || BCD_in == 4'd5 || BCD_in == 4'd8 || BCD_in == 4'd9 || BCD_in == 4'd10)
        begin
            fib = 1;
        end
        else
        begin
            fib = 0;
        end
    end
endmodule