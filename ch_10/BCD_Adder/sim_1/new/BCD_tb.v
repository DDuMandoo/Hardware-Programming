`timescale 1ns / 1ps

module BCD_tb;

    reg[3:0] a, b;
    reg c;
    wire[3:0] s;
    wire C;
    
    BCD u_BCD(
    .a(a),
    .b(b),
    .s(s),
    .c(c),
    .C(C));
    
    initial begin
     a = 4'b0001;
     b = 4'b0001;
     c = 1'b1;
     end
     
     always @(a or b) begin
     a <= #10 a+4'b0001;
     b <= #20 a-4'b0001;
     c <= #500 ~c;
     
     end
     
     initial begin
     #2000
     $finish;
     end
     
endmodule