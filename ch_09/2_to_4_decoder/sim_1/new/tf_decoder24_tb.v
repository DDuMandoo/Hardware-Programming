`timescale 1ns / 1ps

module segm_tb;

    reg aa, bb, cc, dd;
    wire A, B, C, D, E, F, G, Dp, digit;
    
    segm u_segm(
    .a(aa),
    .b(bb),
    .c(cc),
    .d(dd),
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .E(E),
    .F(F),
    .G(G),
    .Dp(Dp),
    .digit(digit));
    
    initial begin
     aa = 1'b0;
     bb = 1'b0;
     cc = 1'b0;
     dd = 1'b0;
     end
     
     always @(aa or bb or cc or dd) begin
     aa <= #17 ~aa;
     bb <= #29 ~bb;
     cc <= #39 ~cc;
     dd <= #61 ~dd;
     end
     
     initial begin
     #600
     $finish;
     end
     
endmodule