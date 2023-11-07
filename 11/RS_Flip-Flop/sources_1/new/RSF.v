`timescale 1ns / 1ps


module RSF(
    input R,S, clk,
    output Q, nQ
    );
    
    assign Q = ~((~(S&clk))&nQ);
    assign nQ = ~((~(R&clk))&Q);
       
endmodule
