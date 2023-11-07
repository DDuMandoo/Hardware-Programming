`timescale 1ns / 1ps

module Adder_tb;

    reg a1, a2, a3, a4, b1, b2, b3, b4, c;
    wire s1, s2, s3, s4, C;
    
    Adder u_Adder(
    .a1(a1),
    .a2(a2),
    .a3(a3),
    .a4(a4),
    .b1(b1),
    .b2(b2),
    .b3(b3),
    .b4(b4),
    .s1(s1),
    .s2(s2),
    .s3(s3),
    .s4(s4),
    .c(c),
    .C(C));
    
    initial begin
     a1 = 1'b0;
     a2 = 1'b0;
     a3 = 1'b0;
     a4 = 1'b0;
     b1 = 1'b0;
     b2 = 1'b0;
     b3 = 1'b0;
     b4 = 1'b0;
     c = 1'b1;
     end
     
     always @(a1 or a2 or a3 or a4 or b1 or b2 or b3 or b4) begin
     a1 <= #20 ~a1;
     a2 <= #30 ~a2;
     a3 <= #50 ~a3;
     a4 <= #70 ~a4;
     b1 <= #110 ~b1;
     b2 <= #130 ~b2;
     b3 <= #170 ~b3;
     b4 <= #190 ~b4;
     c <= #1000 ~c;
     
     end
     
     initial begin
     #2000
     $finish;
     end
     
endmodule