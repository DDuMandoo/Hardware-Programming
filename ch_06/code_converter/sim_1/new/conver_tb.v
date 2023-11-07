`timescale 1ns / 1ps

module conver_tb;

    reg aa, bb, cc, dd;
    wire e, f, g, h;
    
    conver u_conver(
    .a(aa),
    .b(bb),
    .c(cc),
    .d(dd),
    .e(e),
    .f(f),
    .g(g),
    .h(h));
    
    initial begin
     aa = 1'b0;
     bb = 1'b0;
     cc = 1'b0;
     dd = 1'b0;
     end
     
     always begin
     aa = #10 ~aa;
     bb = #20 ~bb;
     cc = #30 ~cc;
     dd = #40 ~dd;
     end
     
     initial begin
     #1000
     $finish;
     end
     
endmodule