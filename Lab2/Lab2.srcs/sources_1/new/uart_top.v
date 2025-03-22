`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/10 10:02:33
// Design Name: 
// Module Name: uart_top
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

module uart_top #(
    parameter   NBYTES        = 12,
    // values for the UART (in case we want to change them)
    parameter   CLK_FREQ      = 125_000_000,
    parameter   BAUD_RATE     = 115_200
  )  
  (
    input   wire   iClk, iRst,
    input   wire   iRx,
    output  wire   oTx
  );
  
  // Buffer to exchange data between Pynq-Z2 and laptop
  reg [NBYTES*8-1:0] rBuffer;
  
  // State definition  
  localparam s_IDLE         = 3'b000;
  localparam s_WAIT_RX      = 3'b001;
  localparam s_TX           = 3'b010;
  localparam s_WAIT_TX      = 3'b011;
  localparam s_DONE         = 3'b100;
   
  // Declare all variables needed for the finite state machine 
  // -> the FSM state
  reg [2:0]   rFSM;  
  
  // Connection to UART TX (inputs = registers, outputs = wires)
  reg         rTxStart;
  reg [7:0]   rTxByte;
  
  wire        wTxBusy;
  wire        wTxDone;
  
  // Connection to UART RX (inputs = registers, outputs = wires)
  wire [7:0]  wRxByte; //// it's 7 bits not 1 bit!
  wire        wRxDone; 
  
      
  uart_tx #(  .CLK_FREQ(CLK_FREQ), .BAUD_RATE(BAUD_RATE) )
  UART_TX_INST
    (.iClk(iClk),
     .iRst(iRst),
     .iTxStart(rTxStart),
     .iTxByte(rTxByte),
     .oTxSerial(oTx),
     .oTxBusy(wTxBusy),
     .oTxDone(wTxDone)
     
     );
     
  uart_rx #( .CLK_FREQ(CLK_FREQ), .BAUD_RATE(BAUD_RATE) ) 
  UART_RX_INST
    (.iClk(iClk),
     .iRst(iRst),
     .iRxSerial(iRx),
     .oRxByte(wRxByte),
     .oRxDone(wRxDone)
     );
     
  reg [$clog2(NBYTES):0] rCnt;
  
  always @(posedge iClk)
  begin
  
  // reset all registers upon reset
  if (iRst == 1 ) 
    begin
      rFSM <= s_IDLE;
      rTxStart <= 0;
      rCnt <= 0;
      rTxByte <= 0;
      rBuffer <= 0;
    end 
  else 
    begin
      case (rFSM)
   
        s_IDLE :
          begin
            rFSM <= s_WAIT_RX;
          end
          
        s_WAIT_RX :
//          begin
//          if ((rCnt < NBYTES) && (wRxDone == 0)) 
//              begin
//                rFSM <= s_WAIT_RX;
////                rBuffer <= "Hello World!";
//                rBuffer <= {wRxByte, rBuffer[NBYTES*8-1:8]};
////                rBuffer[NBYTES*8-1:NBYTES*8-8] <= wRxByte;            // we store the received byte to uppermost byte
////                rBuffer <= {rBuffer[NBYTES*8-9:0] , 8'b0000_0000};    // we shift from left to right (shift in), so LSB will be in LSB
//                rCnt <= rCnt + 1;
//              end else begin
//                rCnt <= 0;       
//                rFSM <= s_TX; // data received, start to transmit the received data
//              end
            
            
//          end
        begin
            if (wRxDone) begin  // 只有当 wRxDone 置 1 时才存入数据
//                rBuffer <= {wRxByte, rBuffer[NBYTES*8-1:8]};  // 左移，接收数据进入高位
//                rBuffer <= {rBuffer[NBYTES*7-1:0], wRxByte};  // new received data stored in LSB, then shift to the left
                rBuffer <= {rBuffer[NBYTES*8-9:0], wRxByte};
                rCnt <= rCnt + 1;
            end 
        
            if (rCnt >= NBYTES) begin  // 接收足够字节后，切换到 s_TX 发送
                rCnt <= 0;       
                rFSM <= s_TX; 
            end 
            else begin
                rFSM <= s_WAIT_RX;  // 继续等待接收数据
            end
        end 
             
        s_TX :
          begin
            if ( (rCnt < NBYTES) && (wTxBusy ==0) ) // in IDLE or DONE
              begin
                rFSM <= s_WAIT_TX;
                rTxStart <= 1; 
                rTxByte <= rBuffer[NBYTES*8-1:NBYTES*8-8];            // we send the uppermost byte
                rBuffer <= {rBuffer[NBYTES*8-9:0] , 8'b0000_0000};    // we shift from right to left
                rCnt <= rCnt + 1;
              end 
            else 
              begin
                rFSM <= s_DONE; // all the bytes have been sent (the Done state is different from the one in UART_TX)
                rTxStart <= 0;
                rTxByte <= 0;
                rCnt <= 0;
              end
            end 
            
            s_WAIT_TX :
              begin
                if (wTxDone) begin // one byte has been transmitted
                  rFSM <= s_TX; // start to transimit next byte
                end else begin
                  rFSM <= s_WAIT_TX; // byte still being transmitted, so wait
                  rTxStart <= 0;                   
                end
              end 
              
            s_DONE :
              begin
                rFSM <= s_IDLE;
              end 

            default :
              rFSM <= s_IDLE;
             
          endcase
      end
    end       
    
endmodule
