`timescale 1ns / 1ps
module n_bit_counter #(parameter N=4)(
    input logic clk, reset,
    output logic [N-1:0]count
    );
    logic [N-1:0]count_next;
    logic [N-1:0]n0,n1; 
    always_comb
    begin
        if(reset)
            count_next <= 'd0;
        else
            count_next <= count + 'd1;
        $display("count:", count_next);
    end
    always_ff@(posedge clk)
        count <= count_next; 
endmodule
