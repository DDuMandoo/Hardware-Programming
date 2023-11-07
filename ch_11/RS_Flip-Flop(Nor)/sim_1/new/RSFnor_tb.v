`timescale 1ns / 1ps

module RSFnor_tb;

    reg R, S, clk;
    wire Q, nQ;
    
    RSFnor u_RSFnor(
    .R(R),
    .S(S),
    .clk(clk),
    .Q(Q),
    .nQ(nQ));
    
    initial begin
     R = 1'b0;
     S = 1'b0;
     clk = 1'b0;
     end
     
     always @(R or S or clk) begin
     R <= #30 ~R;
     S <= #50 ~S;
     clk <= #70 ~clk;
     
     end
     
     initial begin
     #1000
     $finish;
     end
     
endmodule