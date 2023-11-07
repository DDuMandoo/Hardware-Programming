`timescale 1ns / 1ps


module r_shift(clk, rst, in, out);

    input clk, rst, in;
    output [3:0] out;
    reg[3:0] out;
    reg [3:0] temp;
    
    
    initial out = 4'b1000;
    
        
        always @(posedge clk)begin
        
        if(rst == 1'b1) out = 4'b0000;
        else begin
        temp[0] = out[0];
        temp[1] = out[1];
        temp[2] = out[2];
        temp[3] = out[3];
        
        out[3] = in;
        out[2] = temp[3];
        out[1] = temp[2];
        out[0] = temp[1];
        
        end
        
        end
    
endmodule
