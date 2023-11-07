`timescale 1ns / 1ps

module Dnand_tb;

    reg D, clk;
    wire Qn, notQn;
    
    Dnand u_Dnand(
    .D(D),
    .clk(clk),
    .Qn(Qn),
    .notQn(notQn));
    
    initial begin
     D = 1'b0;
     clk = 1'b0;
     end
     
     always @(D or clk) begin
     D <= #30 ~D;
     clk <= #50 ~clk;
     end
     
     initial begin
     #1000
     $finish;
     end
     
endmodule