`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2022 12:23:53 AM
// Design Name: 
// Module Name: tb_S4_a2
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_S4_a2();
      logic clock, reset;
      logic dec, enable, load;
     logic [3-1:0]    counterN;
     logic [3-1:0]    load_value;
     S4_actividad2 #(.N(3))DUT_S4_actividad2(
        .clock(clock),
        .dec(dec),
        .reset(reset),
        .counterN(counterN),
        .enable(enable),
        .load(load),
        .load_value(load_value)
     );
     always # 1 clock=~clock;
     initial
        begin
            clock = 0; 
            dec = 1;
            enable = 1;
            reset = 1;
            load = 0;
            load_value = 3'b010;
            #2
            reset = 0;
            #10
            dec = 0;
            # 5
            enable = 0;
            # 10
            enable = 1;
            #30
            load = 1;
        end
endmodule
