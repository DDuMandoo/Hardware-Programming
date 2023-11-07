`timescale 1ns / 1ps

module Mux_41_tb;

    reg aa, bb, cc, dd, s1, s2;
    wire A;
    
    Mux41 u_Mux41(
    .a(aa),
    .b(bb),
    .c(cc),
    .d(dd),
    .s1(s1),
    .s2(s2),
    .A(A));
    
    initial begin
     aa = 1'b0;
     bb = 1'b0;
     cc = 1'b0;
     dd = 1'b0;
     s1 = 1'b0;
     s2 = 1'b0;
     
     end
     
     always @(aa or bb or cc or dd or s1 or s2) begin
     aa <= #20 ~aa;
     bb <= #30 ~bb;
     cc <= #50 ~cc;
     dd <= #70 ~dd;
     s1 <= #110 ~s1;
     s2 <= #130 ~s2;
     end
     
     initial begin
     #2000
     $finish;
     end
     
endmodule