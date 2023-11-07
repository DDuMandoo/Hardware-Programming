`timescale 1ns / 1ps

module up_down_counter_tb(

    );
    
    reg clk, rst, up;
    wire[3:0] out;
    wire[7:0] seg;
    
    up_down_counter up_down_counter_tb(clk, rst, up, out, seg);
    
    initial begin
    clk = 1'b0;
    rst = 1'b0;
    up = 1'b0;
    
    end
    
    always @(clk or up) begin
        clk <= #10 ~clk;
        up <= #50 ~up;
    end
    
    initial rst <= #800 ~rst;

endmodule
