`timescale 1ns / 1ps

module test_mux_temporal();
logic [3:0]BCD1,BCD2,BCD3,BCD4;
logic in_counter;
logic reset, reset_2;
logic [6:0]sevenSeg;
logic [3:0]Cout;

mux_temporal DUT_mux_temporal(
    .BCD1(BCD1),
    .BCD2(BCD2),
    .BCD3(BCD3),
    .BCD4(BCD4),
    .in_counter(in_counter),
    .reset(reset),
    .reset_2(reset_2),
    .Cout(Cout),
    .sevenSeg(sevenSeg)
);
always #1 in_counter = ~in_counter;
initial 
    begin
    in_counter = 0;
    reset = 1;
    BCD1 = 4'b0010;
    BCD2 = 4'b0110;
    BCD3 = 4'b1100;
    BCD4 = 4'b0001;
    #2
    reset = 0;
    reset_2 = 1;
    #2
    reset_2 = 0;    
    end
endmodule
