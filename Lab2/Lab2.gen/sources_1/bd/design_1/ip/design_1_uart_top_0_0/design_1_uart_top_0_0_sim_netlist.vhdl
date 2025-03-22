-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Thu Mar 13 16:42:53 2025
-- Host        : DESKTOP-JERRY running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/ZYNQ_prj/pynq_z2/CDD/Lab2/Lab2.gen/sources_1/bd/design_1/ip/design_1_uart_top_0_0/design_1_uart_top_0_0_sim_netlist.vhdl
-- Design      : design_1_uart_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_top_0_0_uart_rx is
  port (
    rBuffer_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    rBuffer : out STD_LOGIC_VECTOR ( 7 downto 0 );
    iRx : in STD_LOGIC;
    iClk : in STD_LOGIC;
    \rBuffer_reg[88]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \rCnt_reg[0]\ : in STD_LOGIC;
    iRst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_uart_top_0_0_uart_rx : entity is "uart_rx";
end design_1_uart_top_0_0_uart_rx;

architecture STRUCTURE of design_1_uart_top_0_0_uart_rx is
  signal \FSM_sequential_rFSM_Current[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rFSM_Current[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rFSM_Current[1]_i_3_n_0\ : STD_LOGIC;
  signal \rBit_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[0]_i_2_n_0\ : STD_LOGIC;
  signal \rBit_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \rBit_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal \rBit_Current_reg_n_0_[1]\ : STD_LOGIC;
  signal \rBit_Current_reg_n_0_[2]\ : STD_LOGIC;
  signal rBit_Next : STD_LOGIC;
  signal \rCnt[4]_i_3_n_0\ : STD_LOGIC;
  signal rCnt_Current : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \rCnt_Current[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_2_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_3__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_4__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[5]_i_2_n_0\ : STD_LOGIC;
  signal \rCnt_Current[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[9]_i_2_n_0\ : STD_LOGIC;
  signal rCnt_Next : STD_LOGIC;
  signal rFSM_Current : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rFSM_Next : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rRx1 : STD_LOGIC;
  signal rRx2 : STD_LOGIC;
  signal rRxData_Current : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rRxData_Current[7]_i_2_n_0\ : STD_LOGIC;
  signal \rRxData_Current[7]_i_3_n_0\ : STD_LOGIC;
  signal \rRxData_Current[7]_i_4_n_0\ : STD_LOGIC;
  signal \rRxData_Current[7]_i_5_n_0\ : STD_LOGIC;
  signal rRxData_Next : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_rFSM_Current[0]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_sequential_rFSM_Current[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_rFSM_Current[1]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_rFSM_Current[2]_inv_i_1\ : label is "soft_lutpair6";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_Current_reg[0]\ : label is "sIDLE:000,sRX_START:001,sRX_DATA:010,sDONE:100,sRX_STOP:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_Current_reg[1]\ : label is "sIDLE:000,sRX_START:001,sRX_DATA:010,sDONE:100,sRX_STOP:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_Current_reg[2]_inv\ : label is "sIDLE:000,sRX_START:001,sRX_DATA:010,sDONE:100,sRX_STOP:011";
  attribute inverted : string;
  attribute inverted of \FSM_sequential_rFSM_Current_reg[2]_inv\ : label is "yes";
  attribute SOFT_HLUTNM of \rBit_Current[0]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rBit_Current[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rBit_Current[2]_i_2__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rBuffer_reg[72]_srl10___inst_rBuffer_reg_r_8_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rBuffer_reg[73]_srl10___inst_rBuffer_reg_r_8_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rBuffer_reg[74]_srl10___inst_rBuffer_reg_r_8_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rBuffer_reg[75]_srl10___inst_rBuffer_reg_r_8_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rBuffer_reg[76]_srl10___inst_rBuffer_reg_r_8_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rBuffer_reg[77]_srl10___inst_rBuffer_reg_r_8_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rBuffer_reg[78]_srl10___inst_rBuffer_reg_r_8_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rCnt[4]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rCnt_Current[0]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rCnt_Current[10]_i_4__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rCnt_Current[1]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rCnt_Current[2]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rCnt_Current[3]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rCnt_Current[5]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rCnt_Current[6]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rCnt_Current[7]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rCnt_Current[8]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rRxData_Current[7]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rRxData_Current[7]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rRxData_Current[7]_i_5\ : label is "soft_lutpair0";
begin
\FSM_sequential_rFSM_Current[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"898889DD00000000"
    )
        port map (
      I0 => rFSM_Current(0),
      I1 => \FSM_sequential_rFSM_Current[1]_i_2_n_0\,
      I2 => \FSM_sequential_rFSM_Current[0]_i_2_n_0\,
      I3 => rFSM_Current(1),
      I4 => rRx2,
      I5 => rCnt_Next,
      O => rFSM_Next(0)
    );
\FSM_sequential_rFSM_Current[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \rBit_Current_reg_n_0_[0]\,
      I1 => \rBit_Current_reg_n_0_[1]\,
      I2 => \rBit_Current_reg_n_0_[2]\,
      O => \FSM_sequential_rFSM_Current[0]_i_2_n_0\
    );
\FSM_sequential_rFSM_Current[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9A00"
    )
        port map (
      I0 => rFSM_Current(1),
      I1 => \FSM_sequential_rFSM_Current[1]_i_2_n_0\,
      I2 => rFSM_Current(0),
      I3 => rCnt_Next,
      O => rFSM_Next(1)
    );
\FSM_sequential_rFSM_Current[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => \FSM_sequential_rFSM_Current[1]_i_3_n_0\,
      I1 => rCnt_Current(7),
      I2 => rCnt_Current(6),
      I3 => rCnt_Current(9),
      I4 => rCnt_Current(8),
      I5 => rCnt_Current(10),
      O => \FSM_sequential_rFSM_Current[1]_i_2_n_0\
    );
\FSM_sequential_rFSM_Current[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => rCnt_Current(3),
      I1 => rCnt_Current(2),
      I2 => rCnt_Current(5),
      I3 => rCnt_Current(4),
      O => \FSM_sequential_rFSM_Current[1]_i_3_n_0\
    );
\FSM_sequential_rFSM_Current[2]_inv_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => rCnt_Next,
      I1 => rFSM_Current(1),
      I2 => rFSM_Current(0),
      I3 => \FSM_sequential_rFSM_Current[1]_i_2_n_0\,
      O => rFSM_Next(2)
    );
\FSM_sequential_rFSM_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => rFSM_Next(0),
      Q => rFSM_Current(0),
      R => iRst
    );
\FSM_sequential_rFSM_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => rFSM_Next(1),
      Q => rFSM_Current(1),
      R => iRst
    );
\FSM_sequential_rFSM_Current_reg[2]_inv\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => '1',
      D => rFSM_Next(2),
      Q => rCnt_Next,
      S => iRst
    );
\rBit_Current[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF3F3F300040404"
    )
        port map (
      I0 => \rBit_Current[0]_i_2_n_0\,
      I1 => rCnt_Next,
      I2 => rFSM_Current(0),
      I3 => rFSM_Current(1),
      I4 => \FSM_sequential_rFSM_Current[1]_i_2_n_0\,
      I5 => \rBit_Current_reg_n_0_[0]\,
      O => \rBit_Current[0]_i_1_n_0\
    );
\rBit_Current[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => \rBit_Current_reg_n_0_[2]\,
      I1 => \rBit_Current_reg_n_0_[1]\,
      I2 => \rBit_Current_reg_n_0_[0]\,
      I3 => rFSM_Current(1),
      O => \rBit_Current[0]_i_2_n_0\
    );
\rBit_Current[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FF8000"
    )
        port map (
      I0 => rCnt_Next,
      I1 => \rBit_Current_reg_n_0_[0]\,
      I2 => rFSM_Current(1),
      I3 => rBit_Next,
      I4 => \rBit_Current_reg_n_0_[1]\,
      O => \rBit_Current[1]_i_1_n_0\
    );
\rBit_Current[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2202222202020202"
    )
        port map (
      I0 => rCnt_Next,
      I1 => rFSM_Current(0),
      I2 => rFSM_Current(1),
      I3 => \FSM_sequential_rFSM_Current[1]_i_3_n_0\,
      I4 => \rCnt_Current[10]_i_4__0_n_0\,
      I5 => rCnt_Current(10),
      O => rBit_Next
    );
\rBit_Current[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF3FBF300000400"
    )
        port map (
      I0 => \rBit_Current[2]_i_2__0_n_0\,
      I1 => rCnt_Next,
      I2 => rFSM_Current(0),
      I3 => rFSM_Current(1),
      I4 => \FSM_sequential_rFSM_Current[1]_i_2_n_0\,
      I5 => \rBit_Current_reg_n_0_[2]\,
      O => \rBit_Current[2]_i_1_n_0\
    );
\rBit_Current[2]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \rBit_Current_reg_n_0_[1]\,
      I1 => \rBit_Current_reg_n_0_[0]\,
      O => \rBit_Current[2]_i_2__0_n_0\
    );
\rBit_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBit_Current[0]_i_1_n_0\,
      Q => \rBit_Current_reg_n_0_[0]\,
      R => iRst
    );
\rBit_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBit_Current[1]_i_1_n_0\,
      Q => \rBit_Current_reg_n_0_[1]\,
      R => iRst
    );
\rBit_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBit_Current[2]_i_1_n_0\,
      Q => \rBit_Current_reg_n_0_[2]\,
      R => iRst
    );
rBuffer_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F000440000"
    )
        port map (
      I0 => rCnt_Next,
      I1 => \rCnt[4]_i_3_n_0\,
      I2 => \rBuffer_reg[88]\,
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => rBuffer_0
    );
\rBuffer_reg[72]_srl10___inst_rBuffer_reg_r_8_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rRxData_Current(0),
      I1 => Q(1),
      O => rBuffer(0)
    );
\rBuffer_reg[73]_srl10___inst_rBuffer_reg_r_8_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rRxData_Current(1),
      I1 => Q(1),
      O => rBuffer(1)
    );
\rBuffer_reg[74]_srl10___inst_rBuffer_reg_r_8_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rRxData_Current(2),
      I1 => Q(1),
      O => rBuffer(2)
    );
\rBuffer_reg[75]_srl10___inst_rBuffer_reg_r_8_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rRxData_Current(3),
      I1 => Q(1),
      O => rBuffer(3)
    );
\rBuffer_reg[76]_srl10___inst_rBuffer_reg_r_8_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rRxData_Current(4),
      I1 => Q(1),
      O => rBuffer(4)
    );
\rBuffer_reg[77]_srl10___inst_rBuffer_reg_r_8_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rRxData_Current(5),
      I1 => Q(1),
      O => rBuffer(5)
    );
\rBuffer_reg[78]_srl10___inst_rBuffer_reg_r_8_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rRxData_Current(6),
      I1 => Q(1),
      O => rBuffer(6)
    );
\rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rRxData_Current(7),
      I1 => Q(1),
      O => rBuffer(7)
    );
\rCnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000026266626"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \rCnt_reg[0]\,
      I3 => \rCnt[4]_i_3_n_0\,
      I4 => rCnt_Next,
      I5 => Q(2),
      O => E(0)
    );
\rCnt[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rFSM_Current(1),
      I1 => rFSM_Current(0),
      O => \rCnt[4]_i_3_n_0\
    );
\rCnt_Current[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rCnt_Current[10]_i_3__0_n_0\,
      I1 => rCnt_Current(0),
      O => \rCnt_Current[0]_i_1__0_n_0\
    );
\rCnt_Current[10]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => rCnt_Current(9),
      I1 => rCnt_Current(7),
      I2 => \rCnt_Current[10]_i_2_n_0\,
      I3 => rCnt_Current(8),
      I4 => \rCnt_Current[10]_i_3__0_n_0\,
      I5 => rCnt_Current(10),
      O => \rCnt_Current[10]_i_1__0_n_0\
    );
\rCnt_Current[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rCnt_Current(6),
      I1 => rCnt_Current(4),
      I2 => rCnt_Current(2),
      I3 => \rCnt_Current[5]_i_2_n_0\,
      I4 => rCnt_Current(3),
      I5 => rCnt_Current(5),
      O => \rCnt_Current[10]_i_2_n_0\
    );
\rCnt_Current[10]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20AA20AA20AA0000"
    )
        port map (
      I0 => rCnt_Next,
      I1 => \FSM_sequential_rFSM_Current[1]_i_3_n_0\,
      I2 => \rCnt_Current[10]_i_4__0_n_0\,
      I3 => rCnt_Current(10),
      I4 => rFSM_Current(0),
      I5 => rFSM_Current(1),
      O => \rCnt_Current[10]_i_3__0_n_0\
    );
\rCnt_Current[10]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => rCnt_Current(7),
      I1 => rCnt_Current(6),
      I2 => rCnt_Current(9),
      I3 => rCnt_Current(8),
      O => \rCnt_Current[10]_i_4__0_n_0\
    );
\rCnt_Current[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \rCnt_Current[10]_i_3__0_n_0\,
      I1 => rCnt_Current(0),
      I2 => rCnt_Current(1),
      O => \rCnt_Current[1]_i_1__0_n_0\
    );
\rCnt_Current[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \rCnt_Current[10]_i_3__0_n_0\,
      I1 => rCnt_Current(0),
      I2 => rCnt_Current(1),
      I3 => rCnt_Current(2),
      O => \rCnt_Current[2]_i_1__0_n_0\
    );
\rCnt_Current[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_3__0_n_0\,
      I1 => rCnt_Current(1),
      I2 => rCnt_Current(0),
      I3 => rCnt_Current(2),
      I4 => rCnt_Current(3),
      O => \rCnt_Current[3]_i_1__0_n_0\
    );
\rCnt_Current[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_3__0_n_0\,
      I1 => rCnt_Current(2),
      I2 => rCnt_Current(0),
      I3 => rCnt_Current(1),
      I4 => rCnt_Current(3),
      I5 => rCnt_Current(4),
      O => \rCnt_Current[4]_i_1__0_n_0\
    );
\rCnt_Current[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_3__0_n_0\,
      I1 => rCnt_Current(3),
      I2 => \rCnt_Current[5]_i_2_n_0\,
      I3 => rCnt_Current(2),
      I4 => rCnt_Current(4),
      I5 => rCnt_Current(5),
      O => \rCnt_Current[5]_i_1__0_n_0\
    );
\rCnt_Current[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rCnt_Current(1),
      I1 => rCnt_Current(0),
      O => \rCnt_Current[5]_i_2_n_0\
    );
\rCnt_Current[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \rCnt_Current[9]_i_2_n_0\,
      I1 => \rCnt_Current[10]_i_3__0_n_0\,
      I2 => rCnt_Current(6),
      O => \rCnt_Current[6]_i_1__0_n_0\
    );
\rCnt_Current[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => rCnt_Current(6),
      I1 => \rCnt_Current[9]_i_2_n_0\,
      I2 => \rCnt_Current[10]_i_3__0_n_0\,
      I3 => rCnt_Current(7),
      O => \rCnt_Current[7]_i_1__0_n_0\
    );
\rCnt_Current[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => rCnt_Current(7),
      I1 => \rCnt_Current[9]_i_2_n_0\,
      I2 => rCnt_Current(6),
      I3 => \rCnt_Current[10]_i_3__0_n_0\,
      I4 => rCnt_Current(8),
      O => \rCnt_Current[8]_i_1__0_n_0\
    );
\rCnt_Current[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => rCnt_Current(8),
      I1 => rCnt_Current(6),
      I2 => \rCnt_Current[9]_i_2_n_0\,
      I3 => rCnt_Current(7),
      I4 => \rCnt_Current[10]_i_3__0_n_0\,
      I5 => rCnt_Current(9),
      O => \rCnt_Current[9]_i_1__0_n_0\
    );
\rCnt_Current[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rCnt_Current(5),
      I1 => rCnt_Current(3),
      I2 => rCnt_Current(1),
      I3 => rCnt_Current(0),
      I4 => rCnt_Current(2),
      I5 => rCnt_Current(4),
      O => \rCnt_Current[9]_i_2_n_0\
    );
\rCnt_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt_Next,
      D => \rCnt_Current[0]_i_1__0_n_0\,
      Q => rCnt_Current(0),
      R => iRst
    );
\rCnt_Current_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt_Next,
      D => \rCnt_Current[10]_i_1__0_n_0\,
      Q => rCnt_Current(10),
      R => iRst
    );
\rCnt_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt_Next,
      D => \rCnt_Current[1]_i_1__0_n_0\,
      Q => rCnt_Current(1),
      R => iRst
    );
\rCnt_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt_Next,
      D => \rCnt_Current[2]_i_1__0_n_0\,
      Q => rCnt_Current(2),
      R => iRst
    );
\rCnt_Current_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt_Next,
      D => \rCnt_Current[3]_i_1__0_n_0\,
      Q => rCnt_Current(3),
      R => iRst
    );
\rCnt_Current_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt_Next,
      D => \rCnt_Current[4]_i_1__0_n_0\,
      Q => rCnt_Current(4),
      R => iRst
    );
\rCnt_Current_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt_Next,
      D => \rCnt_Current[5]_i_1__0_n_0\,
      Q => rCnt_Current(5),
      R => iRst
    );
\rCnt_Current_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt_Next,
      D => \rCnt_Current[6]_i_1__0_n_0\,
      Q => rCnt_Current(6),
      R => iRst
    );
\rCnt_Current_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt_Next,
      D => \rCnt_Current[7]_i_1__0_n_0\,
      Q => rCnt_Current(7),
      R => iRst
    );
\rCnt_Current_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt_Next,
      D => \rCnt_Current[8]_i_1__0_n_0\,
      Q => rCnt_Current(8),
      R => iRst
    );
\rCnt_Current_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt_Next,
      D => \rCnt_Current[9]_i_1__0_n_0\,
      Q => rCnt_Current(9),
      R => iRst
    );
rRx1_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => iRx,
      Q => rRx1,
      R => '0'
    );
rRx2_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => rRx1,
      Q => rRx2,
      R => '0'
    );
\rRxData_Current[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \rRxData_Current[7]_i_2_n_0\,
      I1 => \FSM_sequential_rFSM_Current[1]_i_2_n_0\,
      I2 => rCnt_Next,
      I3 => \rRxData_Current[7]_i_3_n_0\,
      O => rRxData_Next
    );
\rRxData_Current[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => \rCnt_Current[5]_i_2_n_0\,
      I1 => \rRxData_Current[7]_i_4_n_0\,
      I2 => rCnt_Current(7),
      I3 => rCnt_Current(8),
      I4 => rCnt_Current(9),
      I5 => rCnt_Current(10),
      O => \rRxData_Current[7]_i_2_n_0\
    );
\rRxData_Current[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"080A"
    )
        port map (
      I0 => \rRxData_Current[7]_i_5_n_0\,
      I1 => rCnt_Current(7),
      I2 => rCnt_Current(8),
      I3 => rCnt_Current(6),
      O => \rRxData_Current[7]_i_3_n_0\
    );
\rRxData_Current[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rFSM_Current(1),
      I1 => rFSM_Current(0),
      O => \rRxData_Current[7]_i_4_n_0\
    );
\rRxData_Current[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => rCnt_Current(3),
      I1 => rCnt_Current(4),
      I2 => rCnt_Current(5),
      I3 => rCnt_Current(1),
      I4 => rCnt_Current(2),
      O => \rRxData_Current[7]_i_5_n_0\
    );
\rRxData_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rRxData_Next,
      D => rRxData_Current(1),
      Q => rRxData_Current(0),
      R => iRst
    );
\rRxData_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rRxData_Next,
      D => rRxData_Current(2),
      Q => rRxData_Current(1),
      R => iRst
    );
\rRxData_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rRxData_Next,
      D => rRxData_Current(3),
      Q => rRxData_Current(2),
      R => iRst
    );
\rRxData_Current_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rRxData_Next,
      D => rRxData_Current(4),
      Q => rRxData_Current(3),
      R => iRst
    );
\rRxData_Current_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rRxData_Next,
      D => rRxData_Current(5),
      Q => rRxData_Current(4),
      R => iRst
    );
\rRxData_Current_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rRxData_Next,
      D => rRxData_Current(6),
      Q => rRxData_Current(5),
      R => iRst
    );
\rRxData_Current_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rRxData_Next,
      D => rRxData_Current(7),
      Q => rRxData_Current(6),
      R => iRst
    );
\rRxData_Current_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rRxData_Next,
      D => rRx2,
      Q => rRxData_Current(7),
      R => iRst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_top_0_0_uart_tx is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \FSM_sequential_rFSM_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_onehot_rFSM_Current_reg[0]_0\ : out STD_LOGIC;
    \rCnt_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    oTx : out STD_LOGIC;
    \FSM_sequential_rFSM_reg[2]_0\ : out STD_LOGIC;
    rTxStart_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \rTxByte_reg[0]\ : in STD_LOGIC;
    \rTxByte_reg[1]\ : in STD_LOGIC;
    \rTxByte_reg[2]\ : in STD_LOGIC;
    \rTxByte_reg[3]\ : in STD_LOGIC;
    \rTxByte_reg[4]\ : in STD_LOGIC;
    \rTxByte_reg[5]\ : in STD_LOGIC;
    \rTxByte_reg[6]\ : in STD_LOGIC;
    \rTxByte_reg[7]\ : in STD_LOGIC;
    rTxStart_reg_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_rFSM_reg[1]\ : in STD_LOGIC;
    \rTxData_Current_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    iRst : in STD_LOGIC;
    iClk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_uart_top_0_0_uart_tx : entity is "uart_tx";
end design_1_uart_top_0_0_uart_tx;

architecture STRUCTURE of design_1_uart_top_0_0_uart_tx is
  signal \FSM_onehot_rFSM_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[4]_i_3_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_rfsm_current_reg[0]_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[3]\ : STD_LOGIC;
  signal in7 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal rBit_Current : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \rBit_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_2_n_0\ : STD_LOGIC;
  signal \rCnt[4]_i_4_n_0\ : STD_LOGIC;
  signal \rCnt_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_2__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_3_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_4_n_0\ : STD_LOGIC;
  signal \rCnt_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[3]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[4]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[5]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[6]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[7]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[8]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[9]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[9]_i_2__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[10]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[1]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[2]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[3]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[4]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[5]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[6]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[7]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[8]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[9]\ : STD_LOGIC;
  signal \rTxData_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[3]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[4]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[5]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[6]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[7]_i_2_n_0\ : STD_LOGIC;
  signal \rTxData_Current[7]_i_3_n_0\ : STD_LOGIC;
  signal \rTxData_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal wTxData_Next : STD_LOGIC;
  signal wTxDone : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[4]_i_1\ : label is "soft_lutpair19";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[0]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[1]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[2]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[3]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[4]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute SOFT_HLUTNM of \rBit_Current[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rBit_Current[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rBit_Current[2]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rCnt[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rCnt[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rCnt[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rCnt[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rCnt_Current[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rCnt_Current[10]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rCnt_Current[10]_i_2__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rCnt_Current[10]_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rCnt_Current[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rCnt_Current[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rCnt_Current[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rCnt_Current[5]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rCnt_Current[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rCnt_Current[8]_i_1\ : label is "soft_lutpair15";
begin
  \FSM_onehot_rFSM_Current_reg[0]_0\ <= \^fsm_onehot_rfsm_current_reg[0]_0\;
\FSM_onehot_rFSM_Current[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => rTxStart_reg,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => wTxDone,
      O => \FSM_onehot_rFSM_Current[0]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rTxStart_reg,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \FSM_onehot_rFSM_Current[1]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFFFF007F00"
    )
        port map (
      I0 => rBit_Current(1),
      I1 => rBit_Current(0),
      I2 => rBit_Current(2),
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I4 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I5 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \FSM_onehot_rFSM_Current[2]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I1 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I2 => rBit_Current(1),
      I3 => rBit_Current(0),
      I4 => rBit_Current(2),
      I5 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \FSM_onehot_rFSM_Current[3]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I1 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      O => \FSM_onehot_rFSM_Current[4]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[4]_i_3_n_0\,
      I1 => \rCnt_Current_reg_n_0_[7]\,
      I2 => \rCnt_Current_reg_n_0_[6]\,
      I3 => \rCnt_Current_reg_n_0_[9]\,
      I4 => \rCnt_Current_reg_n_0_[8]\,
      I5 => \rCnt_Current_reg_n_0_[10]\,
      O => \FSM_onehot_rFSM_Current[4]_i_2_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[3]\,
      I1 => \rCnt_Current_reg_n_0_[2]\,
      I2 => \rCnt_Current_reg_n_0_[5]\,
      I3 => \rCnt_Current_reg_n_0_[4]\,
      O => \FSM_onehot_rFSM_Current[4]_i_3_n_0\
    );
\FSM_onehot_rFSM_Current_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[0]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      S => iRst
    );
\FSM_onehot_rFSM_Current_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[1]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      R => iRst
    );
\FSM_onehot_rFSM_Current_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[2]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      R => iRst
    );
\FSM_onehot_rFSM_Current_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[3]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      R => iRst
    );
\FSM_onehot_rFSM_Current_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[4]_i_1_n_0\,
      Q => wTxDone,
      R => iRst
    );
\FSM_sequential_rFSM[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000CFCCF8F"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => \FSM_sequential_rFSM_reg[1]\,
      I2 => rTxStart_reg_0(1),
      I3 => wTxDone,
      I4 => rTxStart_reg_0(0),
      I5 => rTxStart_reg_0(2),
      O => \FSM_sequential_rFSM_reg[2]\(0)
    );
\FSM_sequential_rFSM[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEAA00AA"
    )
        port map (
      I0 => rTxStart_reg_0(0),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => wTxDone,
      I3 => \FSM_sequential_rFSM_reg[1]\,
      I4 => rTxStart_reg_0(1),
      I5 => rTxStart_reg_0(2),
      O => \FSM_sequential_rFSM_reg[2]\(1)
    );
\FSM_sequential_rFSM[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => rTxStart_reg_0(2),
      I1 => rTxStart_reg_0(0),
      I2 => rTxStart_reg_0(1),
      I3 => \^fsm_onehot_rfsm_current_reg[0]_0\,
      O => \FSM_sequential_rFSM_reg[2]\(2)
    );
\FSM_sequential_rFSM[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000E0E0E"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => wTxDone,
      I2 => Q(4),
      I3 => Q(3),
      I4 => Q(2),
      O => \^fsm_onehot_rfsm_current_reg[0]_0\
    );
oTx_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \rTxData_Current_reg_n_0_[0]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => oTx
    );
\rBit_Current[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"45B0"
    )
        port map (
      I0 => \rBit_Current[2]_i_2_n_0\,
      I1 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => rBit_Current(0),
      O => \rBit_Current[0]_i_1_n_0\
    );
\rBit_Current[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75338A00"
    )
        port map (
      I0 => rBit_Current(0),
      I1 => \rBit_Current[2]_i_2_n_0\,
      I2 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I4 => rBit_Current(1),
      O => \rBit_Current[1]_i_1_n_0\
    );
\rBit_Current[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F770F0F80880000"
    )
        port map (
      I0 => rBit_Current(1),
      I1 => rBit_Current(0),
      I2 => \rBit_Current[2]_i_2_n_0\,
      I3 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I5 => rBit_Current(2),
      O => \rBit_Current[2]_i_1_n_0\
    );
\rBit_Current[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wTxDone,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rBit_Current[2]_i_2_n_0\
    );
\rBit_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBit_Current[0]_i_1_n_0\,
      Q => rBit_Current(0),
      R => iRst
    );
\rBit_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBit_Current[1]_i_1_n_0\,
      Q => rBit_Current(1),
      R => iRst
    );
\rBit_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBit_Current[2]_i_1_n_0\,
      Q => rBit_Current(2),
      R => iRst
    );
\rCnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rCnt[4]_i_4_n_0\,
      I1 => Q(0),
      O => \rCnt_reg[4]\(0)
    );
\rCnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \rCnt[4]_i_4_n_0\,
      I1 => Q(1),
      I2 => Q(0),
      O => \rCnt_reg[4]\(1)
    );
\rCnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \rCnt[4]_i_4_n_0\,
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      O => \rCnt_reg[4]\(2)
    );
\rCnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \rCnt[4]_i_4_n_0\,
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      O => \rCnt_reg[4]\(3)
    );
\rCnt[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \rCnt[4]_i_4_n_0\,
      I1 => Q(4),
      I2 => Q(3),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(2),
      O => \rCnt_reg[4]\(4)
    );
\rCnt[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF150015"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(2),
      I3 => rTxStart_reg_0(1),
      I4 => \^fsm_onehot_rfsm_current_reg[0]_0\,
      I5 => rTxStart_reg_0(2),
      O => \rCnt[4]_i_4_n_0\
    );
\rCnt_Current[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rCnt_Current[10]_i_3_n_0\,
      I1 => \rCnt_Current_reg_n_0_[0]\,
      O => \rCnt_Current[0]_i_1_n_0\
    );
\rCnt_Current[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[9]\,
      I1 => \rCnt_Current[10]_i_2__0_n_0\,
      I2 => \rCnt_Current[10]_i_3_n_0\,
      I3 => \rCnt_Current_reg_n_0_[10]\,
      O => \rCnt_Current[10]_i_1_n_0\
    );
\rCnt_Current[10]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[8]\,
      I1 => \rCnt_Current_reg_n_0_[6]\,
      I2 => \rCnt_Current[9]_i_2__0_n_0\,
      I3 => \rCnt_Current_reg_n_0_[7]\,
      O => \rCnt_Current[10]_i_2__0_n_0\
    );
\rCnt_Current[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FE00FEFEFE00FE"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I3 => \rCnt_Current_reg_n_0_[10]\,
      I4 => \rCnt_Current[10]_i_4_n_0\,
      I5 => \FSM_onehot_rFSM_Current[4]_i_3_n_0\,
      O => \rCnt_Current[10]_i_3_n_0\
    );
\rCnt_Current[10]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[7]\,
      I1 => \rCnt_Current_reg_n_0_[6]\,
      I2 => \rCnt_Current_reg_n_0_[9]\,
      I3 => \rCnt_Current_reg_n_0_[8]\,
      O => \rCnt_Current[10]_i_4_n_0\
    );
\rCnt_Current[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \rCnt_Current[10]_i_3_n_0\,
      I1 => \rCnt_Current_reg_n_0_[0]\,
      I2 => \rCnt_Current_reg_n_0_[1]\,
      O => \rCnt_Current[1]_i_1_n_0\
    );
\rCnt_Current[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \rCnt_Current[10]_i_3_n_0\,
      I1 => \rCnt_Current_reg_n_0_[0]\,
      I2 => \rCnt_Current_reg_n_0_[1]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      O => \rCnt_Current[2]_i_1_n_0\
    );
\rCnt_Current[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_3_n_0\,
      I1 => \rCnt_Current_reg_n_0_[1]\,
      I2 => \rCnt_Current_reg_n_0_[0]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      I4 => \rCnt_Current_reg_n_0_[3]\,
      O => \rCnt_Current[3]_i_1_n_0\
    );
\rCnt_Current[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_3_n_0\,
      I1 => \rCnt_Current_reg_n_0_[2]\,
      I2 => \rCnt_Current_reg_n_0_[0]\,
      I3 => \rCnt_Current_reg_n_0_[1]\,
      I4 => \rCnt_Current_reg_n_0_[3]\,
      I5 => \rCnt_Current_reg_n_0_[4]\,
      O => \rCnt_Current[4]_i_1_n_0\
    );
\rCnt_Current[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \rCnt_Current[5]_i_2__0_n_0\,
      I1 => \rCnt_Current[10]_i_3_n_0\,
      I2 => \rCnt_Current_reg_n_0_[5]\,
      O => \rCnt_Current[5]_i_1_n_0\
    );
\rCnt_Current[5]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[4]\,
      I1 => \rCnt_Current_reg_n_0_[2]\,
      I2 => \rCnt_Current_reg_n_0_[0]\,
      I3 => \rCnt_Current_reg_n_0_[1]\,
      I4 => \rCnt_Current_reg_n_0_[3]\,
      O => \rCnt_Current[5]_i_2__0_n_0\
    );
\rCnt_Current[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \rCnt_Current[9]_i_2__0_n_0\,
      I1 => \rCnt_Current[10]_i_3_n_0\,
      I2 => \rCnt_Current_reg_n_0_[6]\,
      O => \rCnt_Current[6]_i_1_n_0\
    );
\rCnt_Current[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[6]\,
      I1 => \rCnt_Current[9]_i_2__0_n_0\,
      I2 => \rCnt_Current[10]_i_3_n_0\,
      I3 => \rCnt_Current_reg_n_0_[7]\,
      O => \rCnt_Current[7]_i_1_n_0\
    );
\rCnt_Current[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[7]\,
      I1 => \rCnt_Current[9]_i_2__0_n_0\,
      I2 => \rCnt_Current_reg_n_0_[6]\,
      I3 => \rCnt_Current[10]_i_3_n_0\,
      I4 => \rCnt_Current_reg_n_0_[8]\,
      O => \rCnt_Current[8]_i_1_n_0\
    );
\rCnt_Current[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[8]\,
      I1 => \rCnt_Current_reg_n_0_[6]\,
      I2 => \rCnt_Current[9]_i_2__0_n_0\,
      I3 => \rCnt_Current_reg_n_0_[7]\,
      I4 => \rCnt_Current[10]_i_3_n_0\,
      I5 => \rCnt_Current_reg_n_0_[9]\,
      O => \rCnt_Current[9]_i_1_n_0\
    );
\rCnt_Current[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[5]\,
      I1 => \rCnt_Current_reg_n_0_[3]\,
      I2 => \rCnt_Current_reg_n_0_[1]\,
      I3 => \rCnt_Current_reg_n_0_[0]\,
      I4 => \rCnt_Current_reg_n_0_[2]\,
      I5 => \rCnt_Current_reg_n_0_[4]\,
      O => \rCnt_Current[9]_i_2__0_n_0\
    );
\rCnt_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[0]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[0]\,
      R => iRst
    );
\rCnt_Current_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[10]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[10]\,
      R => iRst
    );
\rCnt_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[1]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[1]\,
      R => iRst
    );
\rCnt_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[2]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[2]\,
      R => iRst
    );
\rCnt_Current_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[3]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[3]\,
      R => iRst
    );
\rCnt_Current_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[4]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[4]\,
      R => iRst
    );
\rCnt_Current_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[5]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[5]\,
      R => iRst
    );
\rCnt_Current_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[6]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[6]\,
      R => iRst
    );
\rCnt_Current_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[7]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[7]\,
      R => iRst
    );
\rCnt_Current_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[8]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[8]\,
      R => iRst
    );
\rCnt_Current_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[9]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[9]\,
      R => iRst
    );
\rTxByte[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0707070000000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => Q(4),
      I3 => wTxDone,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I5 => \rTxByte_reg[0]\,
      O => D(0)
    );
\rTxByte[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0707070000000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => Q(4),
      I3 => wTxDone,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I5 => \rTxByte_reg[1]\,
      O => D(1)
    );
\rTxByte[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0707070000000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => Q(4),
      I3 => wTxDone,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I5 => \rTxByte_reg[2]\,
      O => D(2)
    );
\rTxByte[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0707070000000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => Q(4),
      I3 => wTxDone,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I5 => \rTxByte_reg[3]\,
      O => D(3)
    );
\rTxByte[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0707070000000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => Q(4),
      I3 => wTxDone,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I5 => \rTxByte_reg[4]\,
      O => D(4)
    );
\rTxByte[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0707070000000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => Q(4),
      I3 => wTxDone,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I5 => \rTxByte_reg[5]\,
      O => D(5)
    );
\rTxByte[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0707070000000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => Q(4),
      I3 => wTxDone,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I5 => \rTxByte_reg[6]\,
      O => D(6)
    );
\rTxByte[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0707070000000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => Q(4),
      I3 => wTxDone,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I5 => \rTxByte_reg[7]\,
      O => D(7)
    );
\rTxData_Current[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \rTxData_Current_reg[7]_0\(0),
      I3 => in7(0),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rTxData_Current[0]_i_1_n_0\
    );
\rTxData_Current[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \rTxData_Current_reg[7]_0\(1),
      I3 => in7(1),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rTxData_Current[1]_i_1_n_0\
    );
\rTxData_Current[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \rTxData_Current_reg[7]_0\(2),
      I3 => in7(2),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rTxData_Current[2]_i_1_n_0\
    );
\rTxData_Current[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \rTxData_Current_reg[7]_0\(3),
      I3 => in7(3),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rTxData_Current[3]_i_1_n_0\
    );
\rTxData_Current[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \rTxData_Current_reg[7]_0\(4),
      I3 => in7(4),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rTxData_Current[4]_i_1_n_0\
    );
\rTxData_Current[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \rTxData_Current_reg[7]_0\(5),
      I3 => in7(5),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rTxData_Current[5]_i_1_n_0\
    );
\rTxData_Current[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \rTxData_Current_reg[7]_0\(6),
      I3 => in7(6),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rTxData_Current[6]_i_1_n_0\
    );
\rTxData_Current[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I1 => \rTxData_Current[7]_i_3_n_0\,
      I2 => rTxStart_reg,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      O => wTxData_Next
    );
\rTxData_Current[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => \rTxData_Current_reg[7]_0\(7),
      O => \rTxData_Current[7]_i_2_n_0\
    );
\rTxData_Current[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => rBit_Current(1),
      I2 => rBit_Current(0),
      I3 => rBit_Current(2),
      O => \rTxData_Current[7]_i_3_n_0\
    );
\rTxData_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[0]_i_1_n_0\,
      Q => \rTxData_Current_reg_n_0_[0]\,
      R => iRst
    );
\rTxData_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[1]_i_1_n_0\,
      Q => in7(0),
      R => iRst
    );
\rTxData_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[2]_i_1_n_0\,
      Q => in7(1),
      R => iRst
    );
\rTxData_Current_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[3]_i_1_n_0\,
      Q => in7(2),
      R => iRst
    );
\rTxData_Current_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[4]_i_1_n_0\,
      Q => in7(3),
      R => iRst
    );
\rTxData_Current_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[5]_i_1_n_0\,
      Q => in7(4),
      R => iRst
    );
\rTxData_Current_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[6]_i_1_n_0\,
      Q => in7(5),
      R => iRst
    );
\rTxData_Current_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[7]_i_2_n_0\,
      Q => in7(6),
      R => iRst
    );
rTxStart_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCFEFEF00002020"
    )
        port map (
      I0 => \^fsm_onehot_rfsm_current_reg[0]_0\,
      I1 => rTxStart_reg_0(2),
      I2 => rTxStart_reg_0(1),
      I3 => wTxDone,
      I4 => rTxStart_reg_0(0),
      I5 => rTxStart_reg,
      O => \FSM_sequential_rFSM_reg[2]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_top_0_0_uart_top is
  port (
    oTx : out STD_LOGIC;
    iRst : in STD_LOGIC;
    iClk : in STD_LOGIC;
    iRx : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_uart_top_0_0_uart_top : entity is "uart_top";
end design_1_uart_top_0_0_uart_top;

architecture STRUCTURE of design_1_uart_top_0_0_uart_top is
  signal \FSM_sequential_rFSM[1]_i_2_n_0\ : STD_LOGIC;
  signal UART_TX_INST_n_11 : STD_LOGIC;
  signal UART_TX_INST_n_12 : STD_LOGIC;
  signal UART_TX_INST_n_13 : STD_LOGIC;
  signal UART_TX_INST_n_14 : STD_LOGIC;
  signal UART_TX_INST_n_15 : STD_LOGIC;
  signal UART_TX_INST_n_16 : STD_LOGIC;
  signal UART_TX_INST_n_18 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rBuffer : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rBuffer_0 : STD_LOGIC;
  signal \rBuffer_reg[72]_srl10___inst_rBuffer_reg_r_8_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[73]_srl10___inst_rBuffer_reg_r_8_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[74]_srl10___inst_rBuffer_reg_r_8_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[75]_srl10___inst_rBuffer_reg_r_8_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[76]_srl10___inst_rBuffer_reg_r_8_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[77]_srl10___inst_rBuffer_reg_r_8_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[78]_srl10___inst_rBuffer_reg_r_8_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[80]_inst_rBuffer_reg_r_9_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[81]_inst_rBuffer_reg_r_9_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[82]_inst_rBuffer_reg_r_9_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[83]_inst_rBuffer_reg_r_9_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[84]_inst_rBuffer_reg_r_9_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[85]_inst_rBuffer_reg_r_9_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[86]_inst_rBuffer_reg_r_9_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[87]_inst_rBuffer_reg_r_9_n_0\ : STD_LOGIC;
  signal \rBuffer_reg_gate__0_n_0\ : STD_LOGIC;
  signal \rBuffer_reg_gate__1_n_0\ : STD_LOGIC;
  signal \rBuffer_reg_gate__2_n_0\ : STD_LOGIC;
  signal \rBuffer_reg_gate__3_n_0\ : STD_LOGIC;
  signal \rBuffer_reg_gate__4_n_0\ : STD_LOGIC;
  signal \rBuffer_reg_gate__5_n_0\ : STD_LOGIC;
  signal \rBuffer_reg_gate__6_n_0\ : STD_LOGIC;
  signal rBuffer_reg_gate_n_0 : STD_LOGIC;
  signal \rBuffer_reg_n_0_[88]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[89]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[90]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[91]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[92]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[93]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[94]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[95]\ : STD_LOGIC;
  signal rBuffer_reg_r_0_n_0 : STD_LOGIC;
  signal rBuffer_reg_r_1_n_0 : STD_LOGIC;
  signal rBuffer_reg_r_2_n_0 : STD_LOGIC;
  signal rBuffer_reg_r_3_n_0 : STD_LOGIC;
  signal rBuffer_reg_r_4_n_0 : STD_LOGIC;
  signal rBuffer_reg_r_5_n_0 : STD_LOGIC;
  signal rBuffer_reg_r_6_n_0 : STD_LOGIC;
  signal rBuffer_reg_r_7_n_0 : STD_LOGIC;
  signal rBuffer_reg_r_8_n_0 : STD_LOGIC;
  signal rBuffer_reg_r_9_n_0 : STD_LOGIC;
  signal rBuffer_reg_r_n_0 : STD_LOGIC;
  signal rCnt : STD_LOGIC;
  signal \rCnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[4]\ : STD_LOGIC;
  signal rFSM : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \rFSM__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rTxByte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rTxByte_1 : STD_LOGIC;
  signal rTxStart_reg_n_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_reg[0]\ : label is "s_IDLE:000,s_WAIT_RX:001,s_DONE:100,s_WAIT_TX:011,s_TX:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_reg[1]\ : label is "s_IDLE:000,s_WAIT_RX:001,s_DONE:100,s_WAIT_TX:011,s_TX:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_reg[2]\ : label is "s_IDLE:000,s_WAIT_RX:001,s_DONE:100,s_WAIT_TX:011,s_TX:010";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \rBuffer_reg[72]_srl10___inst_rBuffer_reg_r_8\ : label is "\inst/rBuffer_reg ";
  attribute srl_name : string;
  attribute srl_name of \rBuffer_reg[72]_srl10___inst_rBuffer_reg_r_8\ : label is "\inst/rBuffer_reg[72]_srl10___inst_rBuffer_reg_r_8 ";
  attribute srl_bus_name of \rBuffer_reg[73]_srl10___inst_rBuffer_reg_r_8\ : label is "\inst/rBuffer_reg ";
  attribute srl_name of \rBuffer_reg[73]_srl10___inst_rBuffer_reg_r_8\ : label is "\inst/rBuffer_reg[73]_srl10___inst_rBuffer_reg_r_8 ";
  attribute srl_bus_name of \rBuffer_reg[74]_srl10___inst_rBuffer_reg_r_8\ : label is "\inst/rBuffer_reg ";
  attribute srl_name of \rBuffer_reg[74]_srl10___inst_rBuffer_reg_r_8\ : label is "\inst/rBuffer_reg[74]_srl10___inst_rBuffer_reg_r_8 ";
  attribute srl_bus_name of \rBuffer_reg[75]_srl10___inst_rBuffer_reg_r_8\ : label is "\inst/rBuffer_reg ";
  attribute srl_name of \rBuffer_reg[75]_srl10___inst_rBuffer_reg_r_8\ : label is "\inst/rBuffer_reg[75]_srl10___inst_rBuffer_reg_r_8 ";
  attribute srl_bus_name of \rBuffer_reg[76]_srl10___inst_rBuffer_reg_r_8\ : label is "\inst/rBuffer_reg ";
  attribute srl_name of \rBuffer_reg[76]_srl10___inst_rBuffer_reg_r_8\ : label is "\inst/rBuffer_reg[76]_srl10___inst_rBuffer_reg_r_8 ";
  attribute srl_bus_name of \rBuffer_reg[77]_srl10___inst_rBuffer_reg_r_8\ : label is "\inst/rBuffer_reg ";
  attribute srl_name of \rBuffer_reg[77]_srl10___inst_rBuffer_reg_r_8\ : label is "\inst/rBuffer_reg[77]_srl10___inst_rBuffer_reg_r_8 ";
  attribute srl_bus_name of \rBuffer_reg[78]_srl10___inst_rBuffer_reg_r_8\ : label is "\inst/rBuffer_reg ";
  attribute srl_name of \rBuffer_reg[78]_srl10___inst_rBuffer_reg_r_8\ : label is "\inst/rBuffer_reg[78]_srl10___inst_rBuffer_reg_r_8 ";
  attribute srl_bus_name of \rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8\ : label is "\inst/rBuffer_reg ";
  attribute srl_name of \rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8\ : label is "\inst/rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of rBuffer_reg_gate : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rBuffer_reg_gate__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rBuffer_reg_gate__1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rBuffer_reg_gate__2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rBuffer_reg_gate__3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rBuffer_reg_gate__4\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rBuffer_reg_gate__5\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rBuffer_reg_gate__6\ : label is "soft_lutpair27";
begin
\FSM_sequential_rFSM[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => \rCnt_reg_n_0_[2]\,
      I1 => \rCnt_reg_n_0_[3]\,
      I2 => \rCnt_reg_n_0_[4]\,
      O => \FSM_sequential_rFSM[1]_i_2_n_0\
    );
\FSM_sequential_rFSM_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rFSM__0\(0),
      Q => rFSM(0),
      R => iRst
    );
\FSM_sequential_rFSM_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rFSM__0\(1),
      Q => rFSM(1),
      R => iRst
    );
\FSM_sequential_rFSM_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rFSM__0\(2),
      Q => rFSM(2),
      R => iRst
    );
UART_RX_INST: entity work.design_1_uart_top_0_0_uart_rx
     port map (
      E(0) => rCnt,
      Q(2 downto 0) => rFSM(2 downto 0),
      iClk => iClk,
      iRst => iRst,
      iRx => iRx,
      rBuffer(7 downto 0) => rBuffer(7 downto 0),
      rBuffer_0 => rBuffer_0,
      \rBuffer_reg[88]\ => UART_TX_INST_n_11,
      \rCnt_reg[0]\ => \FSM_sequential_rFSM[1]_i_2_n_0\
    );
UART_TX_INST: entity work.design_1_uart_top_0_0_uart_tx
     port map (
      D(7 downto 0) => p_0_in(7 downto 0),
      \FSM_onehot_rFSM_Current_reg[0]_0\ => UART_TX_INST_n_11,
      \FSM_sequential_rFSM_reg[1]\ => \FSM_sequential_rFSM[1]_i_2_n_0\,
      \FSM_sequential_rFSM_reg[2]\(2 downto 0) => \rFSM__0\(2 downto 0),
      \FSM_sequential_rFSM_reg[2]_0\ => UART_TX_INST_n_18,
      Q(4) => \rCnt_reg_n_0_[4]\,
      Q(3) => \rCnt_reg_n_0_[3]\,
      Q(2) => \rCnt_reg_n_0_[2]\,
      Q(1) => \rCnt_reg_n_0_[1]\,
      Q(0) => \rCnt_reg_n_0_[0]\,
      iClk => iClk,
      iRst => iRst,
      oTx => oTx,
      \rCnt_reg[4]\(4) => UART_TX_INST_n_12,
      \rCnt_reg[4]\(3) => UART_TX_INST_n_13,
      \rCnt_reg[4]\(2) => UART_TX_INST_n_14,
      \rCnt_reg[4]\(1) => UART_TX_INST_n_15,
      \rCnt_reg[4]\(0) => UART_TX_INST_n_16,
      \rTxByte_reg[0]\ => \rBuffer_reg_n_0_[88]\,
      \rTxByte_reg[1]\ => \rBuffer_reg_n_0_[89]\,
      \rTxByte_reg[2]\ => \rBuffer_reg_n_0_[90]\,
      \rTxByte_reg[3]\ => \rBuffer_reg_n_0_[91]\,
      \rTxByte_reg[4]\ => \rBuffer_reg_n_0_[92]\,
      \rTxByte_reg[5]\ => \rBuffer_reg_n_0_[93]\,
      \rTxByte_reg[6]\ => \rBuffer_reg_n_0_[94]\,
      \rTxByte_reg[7]\ => \rBuffer_reg_n_0_[95]\,
      \rTxData_Current_reg[7]_0\(7 downto 0) => rTxByte(7 downto 0),
      rTxStart_reg => rTxStart_reg_n_0,
      rTxStart_reg_0(2 downto 0) => rFSM(2 downto 0)
    );
\rBuffer_reg[72]_srl10___inst_rBuffer_reg_r_8\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '1',
      CE => rBuffer_0,
      CLK => iClk,
      D => rBuffer(0),
      Q => \rBuffer_reg[72]_srl10___inst_rBuffer_reg_r_8_n_0\
    );
\rBuffer_reg[73]_srl10___inst_rBuffer_reg_r_8\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '1',
      CE => rBuffer_0,
      CLK => iClk,
      D => rBuffer(1),
      Q => \rBuffer_reg[73]_srl10___inst_rBuffer_reg_r_8_n_0\
    );
\rBuffer_reg[74]_srl10___inst_rBuffer_reg_r_8\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '1',
      CE => rBuffer_0,
      CLK => iClk,
      D => rBuffer(2),
      Q => \rBuffer_reg[74]_srl10___inst_rBuffer_reg_r_8_n_0\
    );
\rBuffer_reg[75]_srl10___inst_rBuffer_reg_r_8\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '1',
      CE => rBuffer_0,
      CLK => iClk,
      D => rBuffer(3),
      Q => \rBuffer_reg[75]_srl10___inst_rBuffer_reg_r_8_n_0\
    );
\rBuffer_reg[76]_srl10___inst_rBuffer_reg_r_8\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '1',
      CE => rBuffer_0,
      CLK => iClk,
      D => rBuffer(4),
      Q => \rBuffer_reg[76]_srl10___inst_rBuffer_reg_r_8_n_0\
    );
\rBuffer_reg[77]_srl10___inst_rBuffer_reg_r_8\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '1',
      CE => rBuffer_0,
      CLK => iClk,
      D => rBuffer(5),
      Q => \rBuffer_reg[77]_srl10___inst_rBuffer_reg_r_8_n_0\
    );
\rBuffer_reg[78]_srl10___inst_rBuffer_reg_r_8\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '1',
      CE => rBuffer_0,
      CLK => iClk,
      D => rBuffer(6),
      Q => \rBuffer_reg[78]_srl10___inst_rBuffer_reg_r_8_n_0\
    );
\rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '1',
      CE => rBuffer_0,
      CLK => iClk,
      D => rBuffer(7),
      Q => \rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8_n_0\
    );
\rBuffer_reg[80]_inst_rBuffer_reg_r_9\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => \rBuffer_reg[72]_srl10___inst_rBuffer_reg_r_8_n_0\,
      Q => \rBuffer_reg[80]_inst_rBuffer_reg_r_9_n_0\,
      R => '0'
    );
\rBuffer_reg[81]_inst_rBuffer_reg_r_9\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => \rBuffer_reg[73]_srl10___inst_rBuffer_reg_r_8_n_0\,
      Q => \rBuffer_reg[81]_inst_rBuffer_reg_r_9_n_0\,
      R => '0'
    );
\rBuffer_reg[82]_inst_rBuffer_reg_r_9\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => \rBuffer_reg[74]_srl10___inst_rBuffer_reg_r_8_n_0\,
      Q => \rBuffer_reg[82]_inst_rBuffer_reg_r_9_n_0\,
      R => '0'
    );
\rBuffer_reg[83]_inst_rBuffer_reg_r_9\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => \rBuffer_reg[75]_srl10___inst_rBuffer_reg_r_8_n_0\,
      Q => \rBuffer_reg[83]_inst_rBuffer_reg_r_9_n_0\,
      R => '0'
    );
\rBuffer_reg[84]_inst_rBuffer_reg_r_9\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => \rBuffer_reg[76]_srl10___inst_rBuffer_reg_r_8_n_0\,
      Q => \rBuffer_reg[84]_inst_rBuffer_reg_r_9_n_0\,
      R => '0'
    );
\rBuffer_reg[85]_inst_rBuffer_reg_r_9\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => \rBuffer_reg[77]_srl10___inst_rBuffer_reg_r_8_n_0\,
      Q => \rBuffer_reg[85]_inst_rBuffer_reg_r_9_n_0\,
      R => '0'
    );
\rBuffer_reg[86]_inst_rBuffer_reg_r_9\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => \rBuffer_reg[78]_srl10___inst_rBuffer_reg_r_8_n_0\,
      Q => \rBuffer_reg[86]_inst_rBuffer_reg_r_9_n_0\,
      R => '0'
    );
\rBuffer_reg[87]_inst_rBuffer_reg_r_9\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => \rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8_n_0\,
      Q => \rBuffer_reg[87]_inst_rBuffer_reg_r_9_n_0\,
      R => '0'
    );
\rBuffer_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => \rBuffer_reg_gate__6_n_0\,
      Q => \rBuffer_reg_n_0_[88]\,
      R => iRst
    );
\rBuffer_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => \rBuffer_reg_gate__5_n_0\,
      Q => \rBuffer_reg_n_0_[89]\,
      R => iRst
    );
\rBuffer_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => \rBuffer_reg_gate__4_n_0\,
      Q => \rBuffer_reg_n_0_[90]\,
      R => iRst
    );
\rBuffer_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => \rBuffer_reg_gate__3_n_0\,
      Q => \rBuffer_reg_n_0_[91]\,
      R => iRst
    );
\rBuffer_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => \rBuffer_reg_gate__2_n_0\,
      Q => \rBuffer_reg_n_0_[92]\,
      R => iRst
    );
\rBuffer_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => \rBuffer_reg_gate__1_n_0\,
      Q => \rBuffer_reg_n_0_[93]\,
      R => iRst
    );
\rBuffer_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => \rBuffer_reg_gate__0_n_0\,
      Q => \rBuffer_reg_n_0_[94]\,
      R => iRst
    );
\rBuffer_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer_reg_gate_n_0,
      Q => \rBuffer_reg_n_0_[95]\,
      R => iRst
    );
rBuffer_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rBuffer_reg[87]_inst_rBuffer_reg_r_9_n_0\,
      I1 => rBuffer_reg_r_9_n_0,
      O => rBuffer_reg_gate_n_0
    );
\rBuffer_reg_gate__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rBuffer_reg[86]_inst_rBuffer_reg_r_9_n_0\,
      I1 => rBuffer_reg_r_9_n_0,
      O => \rBuffer_reg_gate__0_n_0\
    );
\rBuffer_reg_gate__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rBuffer_reg[85]_inst_rBuffer_reg_r_9_n_0\,
      I1 => rBuffer_reg_r_9_n_0,
      O => \rBuffer_reg_gate__1_n_0\
    );
\rBuffer_reg_gate__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rBuffer_reg[84]_inst_rBuffer_reg_r_9_n_0\,
      I1 => rBuffer_reg_r_9_n_0,
      O => \rBuffer_reg_gate__2_n_0\
    );
\rBuffer_reg_gate__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rBuffer_reg[83]_inst_rBuffer_reg_r_9_n_0\,
      I1 => rBuffer_reg_r_9_n_0,
      O => \rBuffer_reg_gate__3_n_0\
    );
\rBuffer_reg_gate__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rBuffer_reg[82]_inst_rBuffer_reg_r_9_n_0\,
      I1 => rBuffer_reg_r_9_n_0,
      O => \rBuffer_reg_gate__4_n_0\
    );
\rBuffer_reg_gate__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rBuffer_reg[81]_inst_rBuffer_reg_r_9_n_0\,
      I1 => rBuffer_reg_r_9_n_0,
      O => \rBuffer_reg_gate__5_n_0\
    );
\rBuffer_reg_gate__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rBuffer_reg[80]_inst_rBuffer_reg_r_9_n_0\,
      I1 => rBuffer_reg_r_9_n_0,
      O => \rBuffer_reg_gate__6_n_0\
    );
rBuffer_reg_r: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => '1',
      Q => rBuffer_reg_r_n_0,
      R => iRst
    );
rBuffer_reg_r_0: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer_reg_r_n_0,
      Q => rBuffer_reg_r_0_n_0,
      R => iRst
    );
rBuffer_reg_r_1: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer_reg_r_0_n_0,
      Q => rBuffer_reg_r_1_n_0,
      R => iRst
    );
rBuffer_reg_r_2: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer_reg_r_1_n_0,
      Q => rBuffer_reg_r_2_n_0,
      R => iRst
    );
rBuffer_reg_r_3: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer_reg_r_2_n_0,
      Q => rBuffer_reg_r_3_n_0,
      R => iRst
    );
rBuffer_reg_r_4: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer_reg_r_3_n_0,
      Q => rBuffer_reg_r_4_n_0,
      R => iRst
    );
rBuffer_reg_r_5: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer_reg_r_4_n_0,
      Q => rBuffer_reg_r_5_n_0,
      R => iRst
    );
rBuffer_reg_r_6: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer_reg_r_5_n_0,
      Q => rBuffer_reg_r_6_n_0,
      R => iRst
    );
rBuffer_reg_r_7: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer_reg_r_6_n_0,
      Q => rBuffer_reg_r_7_n_0,
      R => iRst
    );
rBuffer_reg_r_8: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer_reg_r_7_n_0,
      Q => rBuffer_reg_r_8_n_0,
      R => iRst
    );
rBuffer_reg_r_9: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer_reg_r_8_n_0,
      Q => rBuffer_reg_r_9_n_0,
      R => iRst
    );
\rCnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => UART_TX_INST_n_16,
      Q => \rCnt_reg_n_0_[0]\,
      R => iRst
    );
\rCnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => UART_TX_INST_n_15,
      Q => \rCnt_reg_n_0_[1]\,
      R => iRst
    );
\rCnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => UART_TX_INST_n_14,
      Q => \rCnt_reg_n_0_[2]\,
      R => iRst
    );
\rCnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => UART_TX_INST_n_13,
      Q => \rCnt_reg_n_0_[3]\,
      R => iRst
    );
\rCnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => UART_TX_INST_n_12,
      Q => \rCnt_reg_n_0_[4]\,
      R => iRst
    );
\rTxByte[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => rFSM(2),
      I1 => rFSM(0),
      I2 => rFSM(1),
      O => rTxByte_1
    );
\rTxByte_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_1,
      D => p_0_in(0),
      Q => rTxByte(0),
      R => iRst
    );
\rTxByte_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_1,
      D => p_0_in(1),
      Q => rTxByte(1),
      R => iRst
    );
\rTxByte_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_1,
      D => p_0_in(2),
      Q => rTxByte(2),
      R => iRst
    );
\rTxByte_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_1,
      D => p_0_in(3),
      Q => rTxByte(3),
      R => iRst
    );
\rTxByte_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_1,
      D => p_0_in(4),
      Q => rTxByte(4),
      R => iRst
    );
\rTxByte_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_1,
      D => p_0_in(5),
      Q => rTxByte(5),
      R => iRst
    );
\rTxByte_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_1,
      D => p_0_in(6),
      Q => rTxByte(6),
      R => iRst
    );
\rTxByte_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_1,
      D => p_0_in(7),
      Q => rTxByte(7),
      R => iRst
    );
rTxStart_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => UART_TX_INST_n_18,
      Q => rTxStart_reg_n_0,
      R => iRst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_top_0_0 is
  port (
    iClk : in STD_LOGIC;
    iRst : in STD_LOGIC;
    iRx : in STD_LOGIC;
    oTx : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_uart_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_uart_top_0_0 : entity is "design_1_uart_top_0_0,uart_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_uart_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_uart_top_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_uart_top_0_0 : entity is "uart_top,Vivado 2024.2";
end design_1_uart_top_0_0;

architecture STRUCTURE of design_1_uart_top_0_0 is
begin
inst: entity work.design_1_uart_top_0_0_uart_top
     port map (
      iClk => iClk,
      iRst => iRst,
      iRx => iRx,
      oTx => oTx
    );
end STRUCTURE;
