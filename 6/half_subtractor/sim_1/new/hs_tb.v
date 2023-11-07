`timescale 1ns / 1ps

module hs_tb;

    reg aa, bb;
    wire s, bout;
    
    hs u_hs(
    .a(aa),
    .b(bb),
    .s(s),
    .bout(bout));
    
    initial begin
     aa = 1'b0;
     bb = 1'b0;
     end
     
     always begin
     aa = #20 ~aa;
     bb = #30 ~bb;
     end
     
     initial begin
     #1000
     $finish;
     end
     
endmodule