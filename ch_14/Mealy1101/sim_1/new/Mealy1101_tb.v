`timescale 1ns / 1ps

module Mealy1101_tb(
    );
    
    reg clk, rst, data;
    wire out;
    
    Mealy1101 Mealy1101_tb(clk, rst, data, out);
    
    initial begin
    clk = 1'b0;
    rst = 1'b0;
    data = 1'b0;
    end
    
    always @(clk or data) begin
    clk <= #23 ~clk;
    data <= #37 ~data;
    end
    
    
    initial rst <= #500 ~rst;

endmodule