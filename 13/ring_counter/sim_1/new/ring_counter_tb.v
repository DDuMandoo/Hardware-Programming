`timescale 1ns / 1ps

module ring_counter_tb(

    );
    
    reg clk, rst;
    wire[3:0] out;
    
    ring_counter ring_counter_tb(clk, rst, out);
    
    initial begin
    clk = 1'b0;
    rst = 1'b0;
    end
    
    always @(clk or rst) begin
    clk <= #20 ~clk;
    rst <= #250 ~rst;
    end
    

endmodule
