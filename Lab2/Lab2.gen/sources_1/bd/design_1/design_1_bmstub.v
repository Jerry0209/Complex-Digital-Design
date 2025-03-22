// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module design_1 (
  iClk,
  iRst,
  iRx,
  oTx
);

  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ICLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.ICLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ICLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_i_Clk_0, INSERT_VIP 0" *)
  input iClk;
  (* X_INTERFACE_IGNORE = "true" *)
  input iRst;
  (* X_INTERFACE_IGNORE = "true" *)
  input iRx;
  (* X_INTERFACE_IGNORE = "true" *)
  output oTx;

  // stub module has no contents

endmodule
