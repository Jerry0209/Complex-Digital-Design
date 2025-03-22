`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/24 11:54:44
// Design Name: 
// Module Name: ripple_carry_adder_4b
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


module ripple_carry_adder_4b(
    input   wire [3:0]  iA, iB, 
    input   wire        iCarry,
    output  wire [3:0]  oSum, 
    output  wire        oCarry
    );
    
    
    wire c1, c2, c3;  // Internal carry signals

    // Instantiate 4 Full Adders
    full_adder FA0 (.iA(iA[0]), .iB(iB[0]), .iCarry(iCarry), .oSum(oSum[0]), .oCarry(c1));
    full_adder FA1 (.iA(iA[1]), .iB(iB[1]), .iCarry(c1), .oSum(oSum[1]), .oCarry(c2));
    full_adder FA2 (.iA(iA[2]), .iB(iB[2]), .iCarry(c2), .oSum(oSum[2]), .oCarry(c3));
    full_adder FA3 (.iA(iA[3]), .iB(iB[3]), .iCarry(c3), .oSum(oSum[3]), .oCarry(oCarry));
    
    
endmodule
