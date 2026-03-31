`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2025 17:04:10
// Design Name: 
// Module Name: bcd_counter_tb
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


module bcd_counter_tb;

    reg clk;
    reg reset;
    reg up_down;
    wire [3:0] bcd_out;
    bcd_counter uut (
        .clk(clk),
        .reset(reset),
        .up_down(up_down),
        .bcd_out(bcd_out)
    );
    // Clock generation
    always #50 clk = ~clk;

    initial begin
        $monitor("Time = %t | Reset = %b | UpDown = %b | BCD = %d", $time, reset, up_down, bcd_out);
        //Initialize
        clk=0;
        reset=1;
        up_down=1;//count up
        #10;
        reset=0;
        #1000;
        //switch to down counting
        up_down=0;
        #1000;
        $finish;
        end
endmodule
