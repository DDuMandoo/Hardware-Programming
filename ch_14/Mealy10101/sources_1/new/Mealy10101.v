`timescale 1ns / 1ps


module Mealy10101(clk, rst, data, out, temp);

    input clk, rst, data;
    output out;
    output[4:0] temp;
    reg [4:0] temp;
    reg out;
    
    
    initial temp = 5'b00000;
    initial out = 1'b0;
        
        always @(posedge clk)begin
        temp =(temp << 1)+data;
        
        if(rst == 1'b1) begin
        temp = 5'b00000;
        out = 1'b0;
        end
        
        else if(temp ==5'b10101) out =1'b1;
        else out = 1'b0;
        
        end
    
endmodule
