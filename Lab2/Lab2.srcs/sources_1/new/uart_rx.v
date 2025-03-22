`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// UART Receiver Module
// Description: Receives serial data using an FSM. Uses double-register
// sampling to prevent metastability. Each bit is sampled at the middle of its period.
// oRxDone is asserted for one clock cycle when the reception is complete.
//////////////////////////////////////////////////////////////////////////////////

module uart_rx #(
    parameter   CLK_FREQ         = 125_000_000,
    parameter   BAUD_RATE        = 115_200,
    // Calculate clocks per bit: e.g., 125MHz / 115200 ≈ 1085
    parameter   CLKS_PER_BIT     = CLK_FREQ / BAUD_RATE,
    parameter   HALF_CLKS_PER_BIT = CLKS_PER_BIT / 2
)
(
    input wire        iClk, iRst,
    input wire        iRxSerial,
    output wire [7:0] oRxByte, 
    output wire       oRxDone
);

    // State definitions
    localparam sIDLE     = 3'b000;
    localparam sRX_START = 3'b001;
    localparam sRX_DATA  = 3'b010;
    localparam sRX_STOP  = 3'b011;
    localparam sDONE     = 3'b100;
  
    // FSM state registers
    reg [2:0] rFSM_Current, rFSM_Next; 
    // Clock counter for bit period
    reg [$clog2(CLKS_PER_BIT):0] rCnt_Current, rCnt_Next;
    // Bit counter for received bits (0 to 7)
    reg [2:0] rBit_Current, rBit_Next;
    // Register to store the received byte
    reg [7:0] rRxData_Current, rRxData_Next;
  
    // Double-register the input to avoid metastability
    reg rRx1, rRx2;
    always @(posedge iClk) begin
        rRx1 <= iRxSerial;
        rRx2 <= rRx1;
    end
  
    // Synchronous reset and state update
    always @(posedge iClk) begin
        if (iRst) begin
            rFSM_Current    <= sIDLE;
            rCnt_Current    <= 0;
            rBit_Current    <= 0;
            rRxData_Current <= 0;
        end else begin
            rFSM_Current    <= rFSM_Next;
            rCnt_Current    <= rCnt_Next;
            rBit_Current    <= rBit_Next;
            rRxData_Current <= rRxData_Next;
        end
    end
  
    // Next state and output logic
    always @(*) begin
        // Default assignments
        rFSM_Next    = rFSM_Current;
        rCnt_Next    = rCnt_Current;
        rBit_Next    = rBit_Current;
        rRxData_Next = rRxData_Current;
        
        case (rFSM_Current)
            // Idle state: wait for the start bit (logic 0)
            sIDLE: begin
                rCnt_Next    = 0;
                rBit_Next    = 0;
//                rRxData_Next = 0;
                if (rRx2 == 1'b0)
                    rFSM_Next = sRX_START;
                else
                    rFSM_Next = sIDLE;
            end
            
            // Start bit state: wait for one full bit period
            sRX_START: begin
                if (rCnt_Current < (CLKS_PER_BIT - 1)) begin
                    rFSM_Next = sRX_START;
                    rCnt_Next = rCnt_Current + 1;
                end else begin
                    rFSM_Next = sRX_DATA;
                    rCnt_Next = 0;
                end
            end
            
            // Data state: sample 8 data bits
            sRX_DATA: begin
                if (rCnt_Current < (CLKS_PER_BIT - 1)) begin
                    rFSM_Next = sRX_DATA;
                    rCnt_Next = rCnt_Current + 1;
                    // Sample at the middle of the bit period
                    if (rCnt_Current == HALF_CLKS_PER_BIT) // if the half of clock is not integer, it will discard the fractional part
                        rRxData_Next = { rRx2, rRxData_Current[7:1] };
                end else begin
                    rCnt_Next = 0;
                    if (rBit_Current != 7) begin
                        rFSM_Next = sRX_DATA;
                        rBit_Next = rBit_Current + 1;
                    end else begin
                        rFSM_Next = sRX_STOP;
                        rBit_Next = 0;
                    end
                end
            end
            
            // Stop bit state: wait for one bit period
            sRX_STOP: begin
                if (rCnt_Current < (CLKS_PER_BIT - 1)) begin
                    rFSM_Next = sRX_STOP;
                    rCnt_Next = rCnt_Current + 1;
                end else begin
                    rFSM_Next = sDONE;
                    rCnt_Next = 0;
                end
            end
            
            // Done state: reception complete, return to idle
            sDONE: begin
                rFSM_Next = sIDLE;
            end
            
            // Default state: reset to idle
            default: begin
                rFSM_Next    = sIDLE;
                rCnt_Next    = 0;
                rBit_Next    = 0;
                rRxData_Next = 0;
            end
        endcase
    end
  
    // Output logic: oRxDone is high in DONE state, oRxByte holds the received byte.
    assign oRxDone = (rFSM_Current == sDONE) ? 1'b1 : 1'b0;
    assign oRxByte = rRxData_Current;

endmodule


