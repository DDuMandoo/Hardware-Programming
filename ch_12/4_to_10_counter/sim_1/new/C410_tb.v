`timescale 1ns / 1ps

module C410_tb(

    );
    reg clk, rst;
    wire[3:0] out;
    
    C410 C410_tb(clk, rst, out);
    
    initial begin
    clk = 1'b0;
    rst = 1'b0;
    end
    
    always clk = #10 ~clk;
    
    initial rst <= #800 ~rst;
    
endmodule
