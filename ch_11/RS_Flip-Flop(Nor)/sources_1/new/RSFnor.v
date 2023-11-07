`timescale 1ns / 1ps



module RSFnor(
    input R,S, clk,
    output Q, nQ
    );
    
    assign Q = ~((~(~R|~clk))|nQ);
    assign nQ = ~((~(~S|~clk))|Q);
       
endmodule
