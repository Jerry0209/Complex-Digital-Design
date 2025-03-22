`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/08 15:13:08
// Design Name: 
// Module Name: ripple_carry_adder_Nb
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


module ripple_carry_adder_Nb #(
    parameter   ADDER_WIDTH = 16
    )
    (
    input   wire [ADDER_WIDTH-1:0]  iA, iB, 
    input   wire                    iCarry,
    output  wire [ADDER_WIDTH-1:0]  oSum, 
    output  wire                    oCarry
    );
    
    wire [ADDER_WIDTH-1:0] wCarry;  // 这里修正了数组大小


    // 变量控制 for 循环
    genvar i;

    // 生成 N 位的 Full Adder 结构
    generate
        for (i = 0; i < ADDER_WIDTH; i = i + 1) 
        begin : FA_STAGE
            full_adder FA (
                .iA(iA[i]), 
                .iB(iB[i]), 
                .iCarry((i == 0) ? iCarry : wCarry[i - 1]), 
//                .iCarry(wCarry[i]), 
                .oSum(oSum[i]), 
//                .oCarry(wCarry[i+1])  // 直接连接到数组
                .oCarry(wCarry[i])
            );
        end 
    endgenerate

    // 最高位进位输出
//    assign wCarry[0] = iCarry;
    assign oCarry = wCarry[ADDER_WIDTH-1];

endmodule

//// my version without ternary operator
//module ripple_carry_adder_Nb #(
//    parameter   ADDER_WIDTH = 16
//    )
//    (
//    input   wire [ADDER_WIDTH-1:0]  iA, iB, 
//    input   wire                    iCarry,
//    output  wire [ADDER_WIDTH-1:0]  oSum, 
//    output  wire                    oCarry
//    );
    
////    wire [ADDER_WIDTH-1:0] wCarry;  // 这里修正了数组大小
//    wire [ADDER_WIDTH:0] wCarry;  // 这里修正了数组大小

//    // 变量控制 for 循环
//    genvar i;

//    // 生成 N 位的 Full Adder 结构
//    generate
//        for (i = 0; i < ADDER_WIDTH; i = i + 1) 
//        begin : FA_STAGE
//            full_adder FA (
//                .iA(iA[i]), 
//                .iB(iB[i]), 
////                .iCarry((i == 0) ? iCarry : wCarry[i - 1]), 
//                .iCarry(wCarry[i]), 
//                .oSum(oSum[i]), 
//                .oCarry(wCarry[i+1])  // 直接连接到数组
//            );
//        end 
//    endgenerate

//    // 最高位进位输出
//    assign wCarry[0] = iCarry;
//    assign oCarry = wCarry[ADDER_WIDTH];

//endmodule


//module ripple_carry_adder_Nb #(
//    parameter   ADDER_WIDTH = 16
//    )
//    (
//    input   wire [ADDER_WIDTH-1:0]  iA, iB, 
//    input   wire                    iCarry,
//    output  wire [ADDER_WIDTH-1:0]  oSum, 
//    output  wire                    oCarry
//    );
    
//    wire [ADDER_WIDTH-1:0] wCarry;
//    wire wCarry_out;  // 中间信号


//    // variable to control for loop
//    genvar i;

//    // instantiate N 1-bit comparators
//    generate
//        for (i=0; i<ADDER_WIDTH; i=i+1) 
//        begin
////        你的代码中出现错误的原因是因为 oCarry 作为输出端口被非法连接。具体来说，Verilog 中的输出端口必须连接到 wire 类型的信号，而不能直接在生成块中进行条件连接。

////        你可以通过以下方式修正代码：
        
////        声明一个中间信号：在生成块外部声明一个中间信号，并在生成块中使用该信号。
        
////        在生成块中使用中间信号：将生成块中的 oCarry 替换为中间信号，并在生成块外部将中间信号连接到 oCarry。
////        full_adder FA (.iA(iA[i]), .iB(iB[i]), .iCarry((i==0)? iCarry : wCarry[i-1]), .oSum(oSum[i]), .oCarry((i!=(ADDER_WIDTH-1)) ? wCarry[i] : oCarry));
//        full_adder FA (.iA(iA[i]), .iB(iB[i]), .iCarry((i==0)? iCarry : wCarry[i-1]), .oSum(oSum[i]), .oCarry((i!=(ADDER_WIDTH-1)) ? wCarry[i] : wCarry_out));

//        end 
//    endgenerate
    
//    assign oCarry = wCarry_out;
//endmodule
