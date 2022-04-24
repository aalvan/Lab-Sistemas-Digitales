`timescale 1ns / 1ps
module counter_4bit(
    input logic clk, reset,
    output logic [3:0]count
    );
    logic [3:0]count_next; 
    always_comb
    begin
        if(reset)
            count_next <= 4'd0 ;
        else
            count_next <= count + 4'd1;
    end
    always_ff@(posedge clk)
        count <= count_next; 
endmodule

