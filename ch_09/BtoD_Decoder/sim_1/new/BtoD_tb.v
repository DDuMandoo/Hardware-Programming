`timescale 1ns / 1ps

module BtoD_tb;

    reg aa, bb, cc, dd;
    wire A, B, C, D, E, F, G, H, I;
    
    BtoD u_BtoD(
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
    .H(H),
    .I(I));
    
    initial begin
     aa = 1'b0;
     bb = 1'b0;
     cc = 1'b0;
     dd = 1'b0;
     end
     
     always @(aa or bb or cc or dd) begin
     aa <= #20 ~aa;
     bb <= #50 ~bb;
     cc <= #70 ~cc;
     dd <= #110 ~dd;
     end
     
     initial begin
     #1000
     $finish;
     end
     
endmodule