`timescale 1ns / 1ps


module C2421(clk, rst, out);
    input clk, rst;
    output [3:0] out;
    reg[3:0] out;
    reg[3:0] temp;
    
    initial out = 4'b0000;
    
    always @(posedge clk)begin
    
    if(rst == 1'b1) out = 4'b0000;
    
    else out = out + 4'b0001;

    
    if(out == 4'b0101) begin
    temp[0] = out[0];
    temp[1] = out[1];
    temp[2] = out[2];
    temp[3] = out[3];
    out[3] = temp[3]|(temp[2]&temp[0])|(temp[2]&temp[0]);
    out[2] = temp[3]|(temp[2]&temp[1])|(temp[2]&~temp[0]);
    out[1] = temp[3]|(temp[2]&~temp[1]&temp[0])|(~temp[2]&temp[1]);
    out[0] = temp[0];
    
    end
    
    end
    
endmodule
