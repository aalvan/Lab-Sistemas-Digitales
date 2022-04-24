`timescale 1ns / 1ps

module test_bench_3_3();
    logic [3:0]bcd_in;
    logic [6:0]seven_seg;
BCD_to_sevenSeg BCD_to_sevenSeg_dut(
    .BCD_in(bcd_in),
    .sevenSeg(seven_seg)
);

    initial
    begin
        bcd_in = 4'd0;
        #2
        bcd_in = 4'd1;
        #2
        bcd_in = 4'd2;
        #2
        bcd_in = 4'd3;
        #2
        bcd_in = 4'd4;
        #2
        bcd_in = 4'd5;
        #2
        bcd_in = 4'd6;
        #2
        bcd_in = 4'd7;
        #2
        bcd_in = 4'd8;
        #2
        bcd_in = 4'd9;
    end

endmodule
