`timescale 1ns / 1ps

module fs_tb;

    reg aa, bb, bin;
    wire s, bout;
    
    fs u_fs(
    .a(aa),
    .b(bb),
    .bin(bin),
    .s(s),
    .bout(bout));
    
    initial begin
     aa = 1'b0;
     bb = 1'b0;
     bin = 1'b0;
     end
     
     always begin
     aa = #20 ~aa;
     bb = #30 ~bb;
     bin = #50 ~bin;
     end
     
     initial begin
     #1000
     $finish;
     end
     
endmodule