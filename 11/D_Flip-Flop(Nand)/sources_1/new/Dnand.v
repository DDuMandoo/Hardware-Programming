`timescale 1ns / 1ps


module Dnand(
    input D, clk,
    output Qn, notQn
    );
    
    
    assign Qn = ~((~D&clk)|notQn);
    assign notQn = ~((D&clk)|Qn);
    
endmodule
