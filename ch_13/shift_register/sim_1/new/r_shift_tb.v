`timescale 1ns / 1ps

module r_shift_tb(

    );
    
    reg clk, rst, in;
    wire[3:0] out;
    
    r_shift r_shift_tb(clk, rst, in, out);
    
    initial begin
    clk = 1'b0;
    rst = 1'b0;
    in = 1'b0;
    end
    
    always @(clk or in) begin
    clk <= #20 ~clk;
    in <= #30 ~in;
    end
    
    
    initial rst <= #500 ~rst;

endmodule
