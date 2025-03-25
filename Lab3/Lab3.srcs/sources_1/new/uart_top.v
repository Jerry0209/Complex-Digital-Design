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
    parameter   OPERAND_WIDTH = 512,
    parameter   ADDER_WIDTH   = 16,
    parameter   NBYTES        = OPERAND_WIDTH / 8, 
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
  localparam s_ADD          = 3'b010;
  localparam s_TX           = 3'b011;
  localparam s_WAIT_TX      = 3'b100;
  localparam s_DONE         = 3'b101;
   
  // Declare all variables needed for the finite state machine
  
  // -> the input to multi-precision adder
  reg                       rAddStart;
  reg [OPERAND_WIDTH - 1:0] rOpA;
  reg [OPERAND_WIDTH - 1:0] rOpB;
  wire  [OPERAND_WIDTH:0]   wRes; 
  wire                      wAddDone;   

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
  
  
  mp_adder #( .OPERAND_WIDTH(OPERAND_WIDTH), .ADDER_WIDTH(ADDER_WIDTH))
  MP_ADDER_INST
    (.iClk(iClk),
     .iRst(iRst),
     .iStart(rAddStart),
     .iOpA(rOpA),
     .iOpB(rOpB),
     .oRes(wRes),
     .oDone(wAddDone)
    
    );
    
      
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
     
  reg [$clog2(NBYTES):0]  rCnt;
  reg                     rCntOp;
  reg [OPERAND_WIDTH:0]   rResBuffer;
  
  
  
  always @(posedge iClk)
  begin
  
  
  // reset all registers upon reset
  if (iRst == 1) 
    begin
      rFSM <= s_IDLE;
      rTxStart <= 0;
      rCnt <= 0;
      rTxByte <= 0;
      rBuffer <= 0;

      rAddStart <= 0;
      rOpA <= 0;
      rOpB <= 0;
      rCntOp <= 0;
      rResBuffer <= 0;

    end 
  else 
    begin
      case (rFSM)
   
        s_IDLE :
          begin
            rFSM <= s_WAIT_RX;
            // rCnt <= 0;
          end
          
        s_WAIT_RX :
          begin

              // Method 1: to avoid latch, we need to keep the current value of rCnt and rFSM
              rCnt <= rCnt; // Keep the current value
              rFSM <= rFSM; 

              if (wRxDone) begin  // Only when wRxDone is set to 1, then the received data will be removed to rBuffer 
                  rBuffer <= {rBuffer[NBYTES*8-9:0], wRxByte}; // New received data stored in LSB, old data is shifted to the left
                  rCnt <= rCnt + 1;
              end 
              

              // Method 2: to avoid latch, make sure that the value of rCnt and rFSM are updated in all branches
              // else begin
              //   rBuffer <= rBuffer; // Keep the current value
              //   rCnt <= rCnt;       
              // end
          
              if (rCnt >= NBYTES) begin  // when the buffer is full, we can start to send the data
                  rCnt <= 0; 

                  if(rCntOp == 0) begin
                      rOpA <= rBuffer;
                      rCntOp <= 1;
                      rFSM <= s_WAIT_RX;
                  end else begin
                      rOpB <= rBuffer;
                      rCntOp <= 0;
                      // rAddStart <= 1; // Cory said add here, and in s_ADD, always set to 0
                      rFSM <= s_ADD;
                      rBuffer <= 0;
                  end

                   
              end 
              else begin
                  rFSM <= s_WAIT_RX;  // wait for the next byte
              end
          end

        s_ADD :
          begin
            rAddStart <= 1; //
            
            if (wAddDone) begin
              rResBuffer <= wRes;
              rAddStart <= 0;
              rFSM <= s_TX;
            end else begin
              rFSM <= s_ADD;
              // rAddStart <= 0; //
            end
          end
             
        s_TX :
          begin
            if ( (rCnt < (NBYTES + 1)) && (wTxBusy == 0) ) // in IDLE or DONE

              if (rCnt == 0)
                begin
                  rFSM <= s_WAIT_TX;
                  rTxStart <= 1; 
                  rTxByte <= {7'b000_0000, rResBuffer[OPERAND_WIDTH]};     // we send the carry bit
                  rCnt <= rCnt + 1;
                end

              else
                begin
                  rFSM <= s_WAIT_TX;
                  rTxStart <= 1; 
                  rTxByte <= rResBuffer[NBYTES*8-1:NBYTES*8-8];            // we send the uppermost byte
                  rResBuffer <= {rResBuffer[NBYTES*8-9:0] , 8'b0000_0000};    // we shift from right to left
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