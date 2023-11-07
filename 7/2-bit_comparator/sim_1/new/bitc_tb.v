`timescale 1ns / 1ps

module bitc_tb;

    reg aa, bb, cc, dd;
    wire e, f, g;
    
    bitc u_bitc(
    .a(aa),
    .b(bb),
    .c(cc),
    .d(dd),
    .e(e),
    .f(f),
    .g(g));
    
    initial begin
     aa = 1'b0;
     bb = 1'b0;
     cc = 1'b0;
     dd = 1'b0;
     end
     
     always @(aa or bb or cc or dd) begin
     aa <= #20 ~aa;
     bb <= #30 ~bb;
     cc <= #50 ~cc;
     dd <= #70 ~dd;
     end
     
     initial begin
     #1000
     $finish;
     end
     
endmodule