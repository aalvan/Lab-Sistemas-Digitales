`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2022 11:59:41 PM
// Design Name: 
// Module Name: S4_actividad2
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

module S4_actividad2 #(parameter N = 32)(
    input  logic            clock, reset,
    input  logic            dec, enable, load,
    input  logic [N-1:0]    load_value,
    output logic [N-1:0]    counterN
    );
    
    logic [N-1:0]count_next;
    always_comb
    begin
        if(reset)
            count_next <= 'd0;
        else begin
            if(load)
                 count_next <= load_value;
            else begin
                if(enable) begin
                    if(dec)
                        count_next <= counterN - 'd1;
                    else
                        count_next <= counterN + 'd1;
                    end
                else
                    count_next <= counterN;
             end   
        end
    end
    always_ff@(posedge clock)
        counterN <= count_next; 
endmodule
