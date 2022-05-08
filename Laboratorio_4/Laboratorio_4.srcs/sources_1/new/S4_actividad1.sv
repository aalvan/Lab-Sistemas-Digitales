`timescale 1ns / 1ps

module S4_actividad1(
    input  logic        clock,
    input  logic        reset,
    input  logic [31:0] BCD_in, // display de 32 segmentos
    output logic [6:0]  segments, 
    output logic [7:0]  anodos
    );
    
    logic [3:0] BCD1, BCD2, BCD3, BCD4, BCD5, BCD6, BCD7, BCD8;
    always_comb 
        begin
            BCD1 = BCD_in[31:28];
            BCD2 = BCD_in[27:24];
            BCD3 = BCD_in[23:20];
            BCD4 = BCD_in[19:16];
            BCD5 = BCD_in[15:12];
            BCD6 = BCD_in[11:8];
            BCD7 = BCD_in[7:4];
            BCD8 = BCD_in[3:0];
        end
    
    logic [3:0]my_out; // variable interna
    logic [2:0]my_sel;
    MUX myMux(
        .BCD_IN1(BCD1),
        .BCD_IN2(BCD2),
        .BCD_IN3(BCD3),
        .BCD_IN4(BCD4),
        .BCD_IN5(BCD5),
        .BCD_IN6(BCD6),
        .BCD_IN7(BCD7),
        .BCD_IN8(BCD8),
        .sel(my_sel),
        .out(my_out)
        );
    BCD_to_sevenSeg mySeg(
        .BCD_in(my_out),
        .sevenSeg(segments)
    );
    decoder myDecoder(
        .N(my_sel),
        .Cout(anodos)
    );
    n_bit_counter#(.N(4)) myCounter(
        .clk(clock),
        .reset(reset),
        .count(my_sel)
    );
endmodule
