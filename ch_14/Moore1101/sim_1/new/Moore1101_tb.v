`timescale 1ns / 1ps

module Moore1101_tb(
    );
    
    reg clk, rst, data;
    wire out;
    wire [3:0] temp;
    
     Moore1101  Moore1101_tb(clk, rst, data, out, temp);
    
    initial begin
    clk = 1'b0;
    rst = 1'b0;
    data = 1'b0;
    end
    
    always @(clk or data) begin
    clk <= #23 ~clk;
    data <= #37 ~data;
    end
    
    
    initial rst <= #600 ~rst;

endmodule