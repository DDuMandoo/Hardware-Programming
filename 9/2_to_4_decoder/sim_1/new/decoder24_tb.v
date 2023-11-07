`timescale 1ns / 1ps

module decoder24_tb;

    reg aa, bb;
    wire A, B, C, D;
    
    decoder24 u_decoder24(
    .a(aa),
    .b(bb),
    .A(A),
    .B(B),
    .C(C),
    .D(D));
    
    initial begin
     aa = 1'b0;
     bb = 1'b0;
     end
     
     always @(aa or bb) begin
     aa <= #50 ~aa;
     bb <= #70 ~bb;
     end
     
     initial begin
     #1000
     $finish;
     end
     
endmodule