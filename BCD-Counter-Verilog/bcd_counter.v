`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2025 16:56:24
// Design Name: 
// Module Name: bcd_counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module bcd_counter(
    input clk,
    input reset,
    input up_down,            // 1: Count up, 0: Count down
    output reg [3:0] bcd_out  // BCD output (0 to 9)
);

always @(posedge clk or posedge reset) begin
        if (reset)
            bcd_out <= 4'd0;
        else begin
            if (up_down) begin  // Count Up
                if (bcd_out == 4'd9)
                    bcd_out <= 4'd0;
                else
                    bcd_out <= bcd_out + 1;
                    end else begin  // Count Down
                if (bcd_out == 4'd0)
                    bcd_out <= 4'd9;
                else
                    bcd_out <= bcd_out - 1;
            end
            end
    end

endmodule
