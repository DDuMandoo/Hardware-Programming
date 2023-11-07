`timescale 1ns / 1ps

module Dem14_tb;

    reg aa, s1, s2;
    wire A, B, C, D;
    
    Dem14 u_Dem14(
    .a(aa),
    .s1(s1),
    .s2(s2),
    .A(A),
    .B(B),
    .C(C),
    .D(D));
    
    initial begin
     aa = 1'b0;
     s1 = 1'b0;
     s2 = 1'b0;
     end
     
     always @(aa or s1 or s2) begin
     aa <= #30 ~aa;
     s1 <= #50 ~s1;
     s2 <= #70 ~s2;
     end
     
     initial begin
     #1000
     $finish;
     end
     
endmodule