`timescale 1ns / 1ps


module up_down_counter(clk, rst, up, out, seg, digit);

    input clk, rst, up;
    output [3:0] out;
    output [6:0] seg;
    output digit;
    reg[3:0] out;
    reg [6:0] seg;
    reg[3:0] temp;
    reg digit;
    
    
    initial out = 4'b0000;
    initial digit =0;
    
    
    always @(posedge clk)begin
        digit = 1;
       
        
        if(up == 1'b1) begin
            out = out + 4'b0001;
            seg[0] = 1'b0; 
            seg[1] = 1'b1;
            seg[2] = 1'b1;
            seg[3] = 1'b1;
            seg[4] = 1'b1;
            seg[5] = 1'b1;
            seg[6] = 1'b0;
            if(rst == 1'b1) out = 4'b0000;
        end
        else begin
            out = out - 4'b0001;
            seg[0] = 1'b0;
            seg[1] = 1'b1;
            seg[2] = 1'b1;
            seg[3] = 1'b1;
            seg[4] = 1'b1;
            seg[5] = 1'b0;
            seg[6] = 1'b1;
            if(rst == 1'b1) out = 4'b0000;
        end

    end
endmodule
