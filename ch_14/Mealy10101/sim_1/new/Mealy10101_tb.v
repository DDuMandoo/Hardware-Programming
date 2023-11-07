`timescale 1ns / 1ps

module Mealy10101_tb(
    );
    
    reg clk, rst, data;
    wire out;
    wire[4:0] temp;
    
    Mealy10101 Mealy10101_tb(clk, rst, data, out, temp);
    
    initial begin
    clk = 1'b0;
    rst = 1'b0;
    data = 1'b0;
    end
    
    always @(clk or data) begin
    clk <= #21 ~clk;
    data <= #37 ~data;
    end
    
    
    initial rst <= #1000 ~rst;

endmodule