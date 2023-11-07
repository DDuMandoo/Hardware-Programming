`timescale 1ns / 1ps

module pbc_tb;

    reg aa, bb, cc, dd, pp;
    wire e;
    
    pbc u_pbc(
    .a(aa),
    .b(bb),
    .c(cc),
    .d(dd),
    .p(pp),
    .e(e));
    
    initial begin
     aa = 1'b0;
     bb = 1'b1;
     cc = 1'b0;
     dd = 1'b1;
     pp = 1'b0;
     end
     
     always @(aa or bb or cc or dd) begin
          aa <= #20 ~aa;
          bb <= #30 ~bb;
          cc <= #50 ~cc;
          dd <= #70 ~dd;
          pp <= #110 ~pp;
          end
     
     initial begin
     #1000
     $finish;
     end
     
endmodule