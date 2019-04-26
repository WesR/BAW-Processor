-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Apr 24 18:07:15 2019
-- Host        : Mobile running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               D:/Xilinx/Projects/ecgr-3183-final-project/ecgr-3183-final-project.sim/sim_1/synth/func/xsim/ADD_tb_func_synth.vhd
-- Design      : ADD
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ADD is
  port (
    inputA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    inputB : in STD_LOGIC_VECTOR ( 31 downto 0 );
    result : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CY : out STD_LOGIC;
    OV : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ADD : entity is true;
end ADD;

architecture STRUCTURE of ADD is
  signal fract_in : STD_LOGIC;
  signal inputA_IBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal inputB_IBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_10_in : STD_LOGIC;
  signal p_12_in : STD_LOGIC;
  signal p_13_in : STD_LOGIC;
  signal p_14_in : STD_LOGIC;
  signal p_16_in : STD_LOGIC;
  signal p_18_in : STD_LOGIC;
  signal p_20_in : STD_LOGIC;
  signal p_22_in : STD_LOGIC;
  signal p_24_in : STD_LOGIC;
  signal p_26_in : STD_LOGIC;
  signal p_28_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_30_in : STD_LOGIC;
  signal p_32_in : STD_LOGIC;
  signal p_34_in : STD_LOGIC;
  signal p_36_in : STD_LOGIC;
  signal p_38_in : STD_LOGIC;
  signal p_40_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 22 downto 1 );
  signal result_OBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \result_OBUF[10]_inst_i_2_n_0\ : STD_LOGIC;
  signal \result_OBUF[10]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_OBUF[10]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_OBUF[10]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_OBUF[10]_inst_i_6_n_0\ : STD_LOGIC;
  signal \result_OBUF[11]_inst_i_2_n_0\ : STD_LOGIC;
  signal \result_OBUF[11]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_OBUF[11]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_OBUF[11]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_OBUF[12]_inst_i_10_n_0\ : STD_LOGIC;
  signal \result_OBUF[12]_inst_i_2_n_0\ : STD_LOGIC;
  signal \result_OBUF[12]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_OBUF[12]_inst_i_3_n_1\ : STD_LOGIC;
  signal \result_OBUF[12]_inst_i_3_n_2\ : STD_LOGIC;
  signal \result_OBUF[12]_inst_i_3_n_3\ : STD_LOGIC;
  signal \result_OBUF[12]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_OBUF[12]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_OBUF[12]_inst_i_6_n_0\ : STD_LOGIC;
  signal \result_OBUF[12]_inst_i_7_n_0\ : STD_LOGIC;
  signal \result_OBUF[12]_inst_i_8_n_0\ : STD_LOGIC;
  signal \result_OBUF[12]_inst_i_9_n_0\ : STD_LOGIC;
  signal \result_OBUF[13]_inst_i_2_n_0\ : STD_LOGIC;
  signal \result_OBUF[13]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_OBUF[13]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_OBUF[13]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_OBUF[14]_inst_i_2_n_0\ : STD_LOGIC;
  signal \result_OBUF[14]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_OBUF[14]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_OBUF[14]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_OBUF[14]_inst_i_6_n_0\ : STD_LOGIC;
  signal \result_OBUF[14]_inst_i_7_n_0\ : STD_LOGIC;
  signal \result_OBUF[15]_inst_i_2_n_0\ : STD_LOGIC;
  signal \result_OBUF[15]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_OBUF[15]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_OBUF[15]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_OBUF[15]_inst_i_6_n_0\ : STD_LOGIC;
  signal \result_OBUF[15]_inst_i_7_n_0\ : STD_LOGIC;
  signal \result_OBUF[15]_inst_i_8_n_0\ : STD_LOGIC;
  signal \result_OBUF[16]_inst_i_10_n_0\ : STD_LOGIC;
  signal \result_OBUF[16]_inst_i_2_n_0\ : STD_LOGIC;
  signal \result_OBUF[16]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_OBUF[16]_inst_i_3_n_1\ : STD_LOGIC;
  signal \result_OBUF[16]_inst_i_3_n_2\ : STD_LOGIC;
  signal \result_OBUF[16]_inst_i_3_n_3\ : STD_LOGIC;
  signal \result_OBUF[16]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_OBUF[16]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_OBUF[16]_inst_i_6_n_0\ : STD_LOGIC;
  signal \result_OBUF[16]_inst_i_7_n_0\ : STD_LOGIC;
  signal \result_OBUF[16]_inst_i_8_n_0\ : STD_LOGIC;
  signal \result_OBUF[16]_inst_i_9_n_0\ : STD_LOGIC;
  signal \result_OBUF[17]_inst_i_2_n_0\ : STD_LOGIC;
  signal \result_OBUF[17]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_OBUF[17]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_OBUF[17]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_OBUF[18]_inst_i_2_n_0\ : STD_LOGIC;
  signal \result_OBUF[18]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_OBUF[18]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_OBUF[18]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_OBUF[19]_inst_i_2_n_0\ : STD_LOGIC;
  signal \result_OBUF[19]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_OBUF[19]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_OBUF[19]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_OBUF[1]_inst_i_2_n_0\ : STD_LOGIC;
  signal \result_OBUF[1]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_OBUF[1]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_OBUF[1]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_OBUF[20]_inst_i_2_n_0\ : STD_LOGIC;
  signal \result_OBUF[20]_inst_i_2_n_1\ : STD_LOGIC;
  signal \result_OBUF[20]_inst_i_2_n_2\ : STD_LOGIC;
  signal \result_OBUF[20]_inst_i_2_n_3\ : STD_LOGIC;
  signal \result_OBUF[20]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_OBUF[20]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_OBUF[20]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_OBUF[20]_inst_i_6_n_0\ : STD_LOGIC;
  signal \result_OBUF[22]_inst_i_10_n_0\ : STD_LOGIC;
  signal \result_OBUF[22]_inst_i_11_n_0\ : STD_LOGIC;
  signal \result_OBUF[22]_inst_i_12_n_0\ : STD_LOGIC;
  signal \result_OBUF[22]_inst_i_13_n_0\ : STD_LOGIC;
  signal \result_OBUF[22]_inst_i_14_n_0\ : STD_LOGIC;
  signal \result_OBUF[22]_inst_i_15_n_0\ : STD_LOGIC;
  signal \result_OBUF[22]_inst_i_16_n_0\ : STD_LOGIC;
  signal \result_OBUF[22]_inst_i_17_n_0\ : STD_LOGIC;
  signal \result_OBUF[22]_inst_i_18_n_0\ : STD_LOGIC;
  signal \result_OBUF[22]_inst_i_19_n_0\ : STD_LOGIC;
  signal \result_OBUF[22]_inst_i_20_n_0\ : STD_LOGIC;
  signal \result_OBUF[22]_inst_i_21_n_0\ : STD_LOGIC;
  signal \result_OBUF[22]_inst_i_22_n_0\ : STD_LOGIC;
  signal \result_OBUF[22]_inst_i_23_n_0\ : STD_LOGIC;
  signal \result_OBUF[22]_inst_i_24_n_0\ : STD_LOGIC;
  signal \result_OBUF[22]_inst_i_2_n_0\ : STD_LOGIC;
  signal \result_OBUF[22]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_OBUF[22]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_OBUF[22]_inst_i_5_n_3\ : STD_LOGIC;
  signal \result_OBUF[22]_inst_i_6_n_0\ : STD_LOGIC;
  signal \result_OBUF[22]_inst_i_7_n_0\ : STD_LOGIC;
  signal \result_OBUF[22]_inst_i_8_n_0\ : STD_LOGIC;
  signal \result_OBUF[22]_inst_i_9_n_0\ : STD_LOGIC;
  signal \result_OBUF[23]_inst_i_10_n_0\ : STD_LOGIC;
  signal \result_OBUF[23]_inst_i_11_n_0\ : STD_LOGIC;
  signal \result_OBUF[23]_inst_i_12_n_0\ : STD_LOGIC;
  signal \result_OBUF[23]_inst_i_13_n_0\ : STD_LOGIC;
  signal \result_OBUF[23]_inst_i_14_n_0\ : STD_LOGIC;
  signal \result_OBUF[23]_inst_i_15_n_0\ : STD_LOGIC;
  signal \result_OBUF[23]_inst_i_16_n_0\ : STD_LOGIC;
  signal \result_OBUF[23]_inst_i_17_n_0\ : STD_LOGIC;
  signal \result_OBUF[23]_inst_i_18_n_0\ : STD_LOGIC;
  signal \result_OBUF[23]_inst_i_19_n_0\ : STD_LOGIC;
  signal \result_OBUF[23]_inst_i_20_n_0\ : STD_LOGIC;
  signal \result_OBUF[23]_inst_i_21_n_0\ : STD_LOGIC;
  signal \result_OBUF[23]_inst_i_22_n_0\ : STD_LOGIC;
  signal \result_OBUF[23]_inst_i_23_n_0\ : STD_LOGIC;
  signal \result_OBUF[23]_inst_i_24_n_0\ : STD_LOGIC;
  signal \result_OBUF[23]_inst_i_25_n_0\ : STD_LOGIC;
  signal \result_OBUF[23]_inst_i_26_n_0\ : STD_LOGIC;
  signal \result_OBUF[23]_inst_i_27_n_0\ : STD_LOGIC;
  signal \result_OBUF[23]_inst_i_28_n_0\ : STD_LOGIC;
  signal \result_OBUF[23]_inst_i_29_n_0\ : STD_LOGIC;
  signal \result_OBUF[23]_inst_i_2_n_0\ : STD_LOGIC;
  signal \result_OBUF[23]_inst_i_30_n_0\ : STD_LOGIC;
  signal \result_OBUF[23]_inst_i_31_n_0\ : STD_LOGIC;
  signal \result_OBUF[23]_inst_i_32_n_0\ : STD_LOGIC;
  signal \result_OBUF[23]_inst_i_33_n_0\ : STD_LOGIC;
  signal \result_OBUF[23]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_OBUF[23]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_OBUF[23]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_OBUF[23]_inst_i_6_n_0\ : STD_LOGIC;
  signal \result_OBUF[23]_inst_i_7_n_0\ : STD_LOGIC;
  signal \result_OBUF[23]_inst_i_8_n_0\ : STD_LOGIC;
  signal \result_OBUF[23]_inst_i_9_n_0\ : STD_LOGIC;
  signal \result_OBUF[24]_inst_i_10_n_0\ : STD_LOGIC;
  signal \result_OBUF[24]_inst_i_11_n_0\ : STD_LOGIC;
  signal \result_OBUF[24]_inst_i_12_n_0\ : STD_LOGIC;
  signal \result_OBUF[24]_inst_i_13_n_0\ : STD_LOGIC;
  signal \result_OBUF[24]_inst_i_14_n_0\ : STD_LOGIC;
  signal \result_OBUF[24]_inst_i_15_n_0\ : STD_LOGIC;
  signal \result_OBUF[24]_inst_i_16_n_0\ : STD_LOGIC;
  signal \result_OBUF[24]_inst_i_2_n_0\ : STD_LOGIC;
  signal \result_OBUF[24]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_OBUF[24]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_OBUF[24]_inst_i_4_n_1\ : STD_LOGIC;
  signal \result_OBUF[24]_inst_i_4_n_2\ : STD_LOGIC;
  signal \result_OBUF[24]_inst_i_4_n_3\ : STD_LOGIC;
  signal \result_OBUF[24]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_OBUF[24]_inst_i_6_n_0\ : STD_LOGIC;
  signal \result_OBUF[24]_inst_i_7_n_0\ : STD_LOGIC;
  signal \result_OBUF[24]_inst_i_8_n_0\ : STD_LOGIC;
  signal \result_OBUF[24]_inst_i_9_n_0\ : STD_LOGIC;
  signal \result_OBUF[26]_inst_i_10_n_0\ : STD_LOGIC;
  signal \result_OBUF[26]_inst_i_11_n_0\ : STD_LOGIC;
  signal \result_OBUF[26]_inst_i_2_n_0\ : STD_LOGIC;
  signal \result_OBUF[26]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_OBUF[26]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_OBUF[26]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_OBUF[26]_inst_i_6_n_0\ : STD_LOGIC;
  signal \result_OBUF[26]_inst_i_7_n_0\ : STD_LOGIC;
  signal \result_OBUF[26]_inst_i_8_n_0\ : STD_LOGIC;
  signal \result_OBUF[26]_inst_i_9_n_0\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_10_n_0\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_11_n_0\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_12_n_0\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_12_n_1\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_12_n_2\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_12_n_3\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_13_n_0\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_14_n_0\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_14_n_1\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_14_n_2\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_14_n_3\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_15_n_0\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_16_n_0\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_17_n_0\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_18_n_0\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_19_n_0\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_20_n_0\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_21_n_0\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_22_n_0\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_23_n_0\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_24_n_0\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_25_n_0\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_26_n_0\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_27_n_0\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_28_n_0\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_29_n_0\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_2_n_0\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_30_n_0\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_31_n_0\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_32_n_0\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_33_n_0\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_34_n_0\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_6_n_0\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_7_n_0\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_8_n_0\ : STD_LOGIC;
  signal \result_OBUF[27]_inst_i_9_n_0\ : STD_LOGIC;
  signal \result_OBUF[2]_inst_i_2_n_0\ : STD_LOGIC;
  signal \result_OBUF[2]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_OBUF[2]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_OBUF[2]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_10_n_0\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_11_n_0\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_12_n_0\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_12_n_1\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_12_n_2\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_12_n_3\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_13_n_0\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_14_n_0\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_15_n_0\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_16_n_0\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_17_n_0\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_18_n_0\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_19_n_0\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_20_n_0\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_21_n_0\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_22_n_0\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_23_n_0\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_24_n_0\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_25_n_0\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_26_n_0\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_27_n_0\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_28_n_0\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_2_n_0\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_2_n_1\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_2_n_2\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_2_n_3\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_2_n_7\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_4_n_1\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_4_n_2\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_4_n_3\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_4_n_4\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_4_n_5\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_6_n_0\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_7_n_0\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_8_n_0\ : STD_LOGIC;
  signal \result_OBUF[30]_inst_i_9_n_0\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_10_n_0\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_11_n_0\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_12_n_0\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_13_n_0\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_14_n_0\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_15_n_0\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_16_n_0\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_17_n_0\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_18_n_0\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_19_n_0\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_19_n_1\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_19_n_2\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_19_n_3\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_20_n_0\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_21_n_0\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_22_n_0\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_23_n_0\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_24_n_0\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_25_n_0\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_26_n_0\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_27_n_0\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_28_n_0\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_29_n_0\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_2_n_0\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_30_n_0\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_31_n_0\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_32_n_0\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_33_n_0\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_34_n_0\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_35_n_0\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_3_n_1\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_3_n_2\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_3_n_3\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_6_n_0\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_7_n_0\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_7_n_1\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_7_n_2\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_7_n_3\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_8_n_0\ : STD_LOGIC;
  signal \result_OBUF[31]_inst_i_9_n_0\ : STD_LOGIC;
  signal \result_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \result_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_OBUF[3]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_OBUF[4]_inst_i_10_n_0\ : STD_LOGIC;
  signal \result_OBUF[4]_inst_i_2_n_0\ : STD_LOGIC;
  signal \result_OBUF[4]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_OBUF[4]_inst_i_3_n_1\ : STD_LOGIC;
  signal \result_OBUF[4]_inst_i_3_n_2\ : STD_LOGIC;
  signal \result_OBUF[4]_inst_i_3_n_3\ : STD_LOGIC;
  signal \result_OBUF[4]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_OBUF[4]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_OBUF[4]_inst_i_7_n_0\ : STD_LOGIC;
  signal \result_OBUF[4]_inst_i_8_n_0\ : STD_LOGIC;
  signal \result_OBUF[4]_inst_i_9_n_0\ : STD_LOGIC;
  signal \result_OBUF[5]_inst_i_2_n_0\ : STD_LOGIC;
  signal \result_OBUF[5]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_OBUF[5]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_OBUF[5]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_OBUF[5]_inst_i_6_n_0\ : STD_LOGIC;
  signal \result_OBUF[6]_inst_i_2_n_0\ : STD_LOGIC;
  signal \result_OBUF[6]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_OBUF[6]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_OBUF[6]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_OBUF[6]_inst_i_6_n_0\ : STD_LOGIC;
  signal \result_OBUF[7]_inst_i_2_n_0\ : STD_LOGIC;
  signal \result_OBUF[7]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_OBUF[7]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_OBUF[7]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_OBUF[8]_inst_i_10_n_0\ : STD_LOGIC;
  signal \result_OBUF[8]_inst_i_2_n_0\ : STD_LOGIC;
  signal \result_OBUF[8]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_OBUF[8]_inst_i_3_n_1\ : STD_LOGIC;
  signal \result_OBUF[8]_inst_i_3_n_2\ : STD_LOGIC;
  signal \result_OBUF[8]_inst_i_3_n_3\ : STD_LOGIC;
  signal \result_OBUF[8]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_OBUF[8]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_OBUF[8]_inst_i_6_n_0\ : STD_LOGIC;
  signal \result_OBUF[8]_inst_i_7_n_0\ : STD_LOGIC;
  signal \result_OBUF[8]_inst_i_8_n_0\ : STD_LOGIC;
  signal \result_OBUF[8]_inst_i_9_n_0\ : STD_LOGIC;
  signal \result_OBUF[9]_inst_i_2_n_0\ : STD_LOGIC;
  signal \result_OBUF[9]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_OBUF[9]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_OBUF[9]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_OBUF[9]_inst_i_6_n_0\ : STD_LOGIC;
  signal \NLW_result_OBUF[22]_inst_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_result_OBUF[22]_inst_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_result_OBUF[30]_inst_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_result_OBUF[30]_inst_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_result_OBUF[31]_inst_i_19_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_result_OBUF[31]_inst_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_result_OBUF[31]_inst_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \result_OBUF[0]_inst_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \result_OBUF[10]_inst_i_4\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \result_OBUF[10]_inst_i_5\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \result_OBUF[10]_inst_i_6\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \result_OBUF[11]_inst_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \result_OBUF[11]_inst_i_4\ : label is "soft_lutpair28";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \result_OBUF[12]_inst_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \result_OBUF[12]_inst_i_4\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \result_OBUF[12]_inst_i_5\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \result_OBUF[13]_inst_i_4\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \result_OBUF[14]_inst_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \result_OBUF[14]_inst_i_5\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \result_OBUF[15]_inst_i_4\ : label is "soft_lutpair29";
  attribute METHODOLOGY_DRC_VIOS of \result_OBUF[16]_inst_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \result_OBUF[16]_inst_i_5\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \result_OBUF[17]_inst_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \result_OBUF[18]_inst_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \result_OBUF[19]_inst_i_4\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \result_OBUF[1]_inst_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \result_OBUF[1]_inst_i_4\ : label is "soft_lutpair8";
  attribute METHODOLOGY_DRC_VIOS of \result_OBUF[20]_inst_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \result_OBUF[22]_inst_i_18\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \result_OBUF[22]_inst_i_19\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \result_OBUF[22]_inst_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \result_OBUF[22]_inst_i_21\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \result_OBUF[22]_inst_i_22\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \result_OBUF[22]_inst_i_24\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \result_OBUF[22]_inst_i_3\ : label is "soft_lutpair7";
  attribute METHODOLOGY_DRC_VIOS of \result_OBUF[22]_inst_i_5\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \result_OBUF[22]_inst_i_7\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \result_OBUF[22]_inst_i_8\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \result_OBUF[23]_inst_i_14\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \result_OBUF[23]_inst_i_16\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \result_OBUF[23]_inst_i_30\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \result_OBUF[23]_inst_i_31\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \result_OBUF[23]_inst_i_32\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \result_OBUF[23]_inst_i_33\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \result_OBUF[23]_inst_i_6\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \result_OBUF[24]_inst_i_2\ : label is "soft_lutpair3";
  attribute METHODOLOGY_DRC_VIOS of \result_OBUF[24]_inst_i_4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \result_OBUF[24]_inst_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \result_OBUF[24]_inst_i_6\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \result_OBUF[25]_inst_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \result_OBUF[26]_inst_i_11\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \result_OBUF[26]_inst_i_8\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \result_OBUF[26]_inst_i_9\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \result_OBUF[27]_inst_i_10\ : label is "soft_lutpair5";
  attribute METHODOLOGY_DRC_VIOS of \result_OBUF[27]_inst_i_12\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \result_OBUF[27]_inst_i_14\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \result_OBUF[27]_inst_i_15\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \result_OBUF[27]_inst_i_9\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \result_OBUF[29]_inst_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \result_OBUF[2]_inst_i_4\ : label is "soft_lutpair6";
  attribute METHODOLOGY_DRC_VIOS of \result_OBUF[30]_inst_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \result_OBUF[30]_inst_i_12\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \result_OBUF[30]_inst_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \result_OBUF[30]_inst_i_4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \result_OBUF[31]_inst_i_16\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \result_OBUF[31]_inst_i_17\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \result_OBUF[31]_inst_i_18\ : label is "soft_lutpair2";
  attribute METHODOLOGY_DRC_VIOS of \result_OBUF[4]_inst_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \result_OBUF[5]_inst_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \result_OBUF[5]_inst_i_5\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \result_OBUF[5]_inst_i_6\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \result_OBUF[6]_inst_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \result_OBUF[6]_inst_i_5\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \result_OBUF[6]_inst_i_6\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \result_OBUF[7]_inst_i_4\ : label is "soft_lutpair9";
  attribute METHODOLOGY_DRC_VIOS of \result_OBUF[8]_inst_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \result_OBUF[8]_inst_i_5\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \result_OBUF[9]_inst_i_4\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \result_OBUF[9]_inst_i_5\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \result_OBUF[9]_inst_i_6\ : label is "soft_lutpair22";
begin
CY_OBUF_inst: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => CY,
      T => '1'
    );
OV_OBUF_inst: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => OV,
      T => '1'
    );
\inputA_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputA(0),
      O => inputA_IBUF(0)
    );
\inputA_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputA(10),
      O => inputA_IBUF(10)
    );
\inputA_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputA(11),
      O => inputA_IBUF(11)
    );
\inputA_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputA(12),
      O => inputA_IBUF(12)
    );
\inputA_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputA(13),
      O => inputA_IBUF(13)
    );
\inputA_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputA(14),
      O => inputA_IBUF(14)
    );
\inputA_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputA(15),
      O => inputA_IBUF(15)
    );
\inputA_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputA(16),
      O => inputA_IBUF(16)
    );
\inputA_IBUF[17]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputA(17),
      O => inputA_IBUF(17)
    );
\inputA_IBUF[18]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputA(18),
      O => inputA_IBUF(18)
    );
\inputA_IBUF[19]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputA(19),
      O => inputA_IBUF(19)
    );
\inputA_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputA(1),
      O => inputA_IBUF(1)
    );
\inputA_IBUF[20]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputA(20),
      O => inputA_IBUF(20)
    );
\inputA_IBUF[21]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputA(21),
      O => inputA_IBUF(21)
    );
\inputA_IBUF[22]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputA(22),
      O => inputA_IBUF(22)
    );
\inputA_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputA(2),
      O => inputA_IBUF(2)
    );
\inputA_IBUF[31]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputA(31),
      O => inputA_IBUF(31)
    );
\inputA_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputA(3),
      O => inputA_IBUF(3)
    );
\inputA_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputA(4),
      O => inputA_IBUF(4)
    );
\inputA_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputA(5),
      O => inputA_IBUF(5)
    );
\inputA_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputA(6),
      O => inputA_IBUF(6)
    );
\inputA_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputA(7),
      O => inputA_IBUF(7)
    );
\inputA_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputA(8),
      O => inputA_IBUF(8)
    );
\inputA_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputA(9),
      O => inputA_IBUF(9)
    );
\inputB_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputB(0),
      O => inputB_IBUF(0)
    );
\inputB_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputB(10),
      O => inputB_IBUF(10)
    );
\inputB_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputB(11),
      O => inputB_IBUF(11)
    );
\inputB_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputB(12),
      O => inputB_IBUF(12)
    );
\inputB_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputB(13),
      O => inputB_IBUF(13)
    );
\inputB_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputB(14),
      O => inputB_IBUF(14)
    );
\inputB_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputB(15),
      O => inputB_IBUF(15)
    );
\inputB_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputB(16),
      O => inputB_IBUF(16)
    );
\inputB_IBUF[17]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputB(17),
      O => inputB_IBUF(17)
    );
\inputB_IBUF[18]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputB(18),
      O => inputB_IBUF(18)
    );
\inputB_IBUF[19]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputB(19),
      O => inputB_IBUF(19)
    );
\inputB_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputB(1),
      O => inputB_IBUF(1)
    );
\inputB_IBUF[20]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputB(20),
      O => inputB_IBUF(20)
    );
\inputB_IBUF[21]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputB(21),
      O => inputB_IBUF(21)
    );
\inputB_IBUF[22]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputB(22),
      O => inputB_IBUF(22)
    );
\inputB_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputB(2),
      O => inputB_IBUF(2)
    );
\inputB_IBUF[31]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputB(31),
      O => inputB_IBUF(31)
    );
\inputB_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputB(3),
      O => inputB_IBUF(3)
    );
\inputB_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputB(4),
      O => inputB_IBUF(4)
    );
\inputB_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputB(5),
      O => inputB_IBUF(5)
    );
\inputB_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputB(6),
      O => inputB_IBUF(6)
    );
\inputB_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputB(7),
      O => inputB_IBUF(7)
    );
\inputB_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputB(8),
      O => inputB_IBUF(8)
    );
\inputB_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inputB(9),
      O => inputB_IBUF(9)
    );
\result_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(0),
      O => result(0)
    );
\result_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_OBUF[22]_inst_i_3_n_0\,
      I1 => \result_OBUF[22]_inst_i_2_n_0\,
      O => result_OBUF(0)
    );
\result_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(10),
      O => result(10)
    );
\result_OBUF[10]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E0E1F0E"
    )
        port map (
      I0 => \result_OBUF[22]_inst_i_2_n_0\,
      I1 => \result_OBUF[22]_inst_i_3_n_0\,
      I2 => \result_OBUF[10]_inst_i_2_n_0\,
      I3 => plusOp(10),
      I4 => \result_OBUF[22]_inst_i_6_n_0\,
      O => result_OBUF(10)
    );
\result_OBUF[10]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FCFAFA00FC"
    )
        port map (
      I0 => \result_OBUF[10]_inst_i_3_n_0\,
      I1 => \result_OBUF[11]_inst_i_3_n_0\,
      I2 => \result_OBUF[23]_inst_i_12_n_0\,
      I3 => \result_OBUF[10]_inst_i_4_n_0\,
      I4 => \result_OBUF[27]_inst_i_5_n_0\,
      I5 => \result_OBUF[11]_inst_i_4_n_0\,
      O => \result_OBUF[10]_inst_i_2_n_0\
    );
\result_OBUF[10]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB888BBBB"
    )
        port map (
      I0 => \result_OBUF[12]_inst_i_10_n_0\,
      I1 => \result_OBUF[23]_inst_i_20_n_0\,
      I2 => \result_OBUF[10]_inst_i_5_n_0\,
      I3 => \result_OBUF[23]_inst_i_22_n_0\,
      I4 => \result_OBUF[22]_inst_i_20_n_0\,
      I5 => \result_OBUF[10]_inst_i_6_n_0\,
      O => \result_OBUF[10]_inst_i_3_n_0\
    );
\result_OBUF[10]_inst_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_20_in,
      I1 => \result_OBUF[27]_inst_i_2_n_0\,
      O => \result_OBUF[10]_inst_i_4_n_0\
    );
\result_OBUF[10]_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \result_OBUF[1]_inst_i_5_n_0\,
      I1 => p_34_in,
      O => \result_OBUF[10]_inst_i_5_n_0\
    );
\result_OBUF[10]_inst_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \result_OBUF[1]_inst_i_5_n_0\,
      I1 => p_26_in,
      O => \result_OBUF[10]_inst_i_6_n_0\
    );
\result_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(11),
      O => result(11)
    );
\result_OBUF[11]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E0E1F0E"
    )
        port map (
      I0 => \result_OBUF[22]_inst_i_2_n_0\,
      I1 => \result_OBUF[22]_inst_i_3_n_0\,
      I2 => \result_OBUF[11]_inst_i_2_n_0\,
      I3 => plusOp(11),
      I4 => \result_OBUF[22]_inst_i_6_n_0\,
      O => result_OBUF(11)
    );
\result_OBUF[11]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FCFAFA00FC"
    )
        port map (
      I0 => \result_OBUF[11]_inst_i_3_n_0\,
      I1 => \result_OBUF[12]_inst_i_4_n_0\,
      I2 => \result_OBUF[23]_inst_i_12_n_0\,
      I3 => \result_OBUF[11]_inst_i_4_n_0\,
      I4 => \result_OBUF[27]_inst_i_5_n_0\,
      I5 => \result_OBUF[12]_inst_i_5_n_0\,
      O => \result_OBUF[11]_inst_i_2_n_0\
    );
\result_OBUF[11]_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result_OBUF[13]_inst_i_5_n_0\,
      I1 => \result_OBUF[23]_inst_i_20_n_0\,
      I2 => \result_OBUF[11]_inst_i_5_n_0\,
      O => \result_OBUF[11]_inst_i_3_n_0\
    );
\result_OBUF[11]_inst_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_18_in,
      I1 => \result_OBUF[27]_inst_i_2_n_0\,
      O => \result_OBUF[11]_inst_i_4_n_0\
    );
\result_OBUF[11]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BFF8B8B8BCC"
    )
        port map (
      I0 => \result_OBUF[5]_inst_i_6_n_0\,
      I1 => \result_OBUF[23]_inst_i_22_n_0\,
      I2 => p_24_in,
      I3 => \result_OBUF[23]_inst_i_12_n_0\,
      I4 => result_OBUF(26),
      I5 => \result_OBUF[5]_inst_i_5_n_0\,
      O => \result_OBUF[11]_inst_i_5_n_0\
    );
\result_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(12),
      O => result(12)
    );
\result_OBUF[12]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E0E1F0E"
    )
        port map (
      I0 => \result_OBUF[22]_inst_i_2_n_0\,
      I1 => \result_OBUF[22]_inst_i_3_n_0\,
      I2 => \result_OBUF[12]_inst_i_2_n_0\,
      I3 => plusOp(12),
      I4 => \result_OBUF[22]_inst_i_6_n_0\,
      O => result_OBUF(12)
    );
\result_OBUF[12]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BFF8B8B8BCC"
    )
        port map (
      I0 => \result_OBUF[6]_inst_i_6_n_0\,
      I1 => \result_OBUF[23]_inst_i_22_n_0\,
      I2 => p_22_in,
      I3 => \result_OBUF[23]_inst_i_12_n_0\,
      I4 => result_OBUF(26),
      I5 => \result_OBUF[6]_inst_i_5_n_0\,
      O => \result_OBUF[12]_inst_i_10_n_0\
    );
\result_OBUF[12]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FCFAFA00FC"
    )
        port map (
      I0 => \result_OBUF[12]_inst_i_4_n_0\,
      I1 => \result_OBUF[13]_inst_i_3_n_0\,
      I2 => \result_OBUF[23]_inst_i_12_n_0\,
      I3 => \result_OBUF[12]_inst_i_5_n_0\,
      I4 => \result_OBUF[27]_inst_i_5_n_0\,
      I5 => \result_OBUF[13]_inst_i_4_n_0\,
      O => \result_OBUF[12]_inst_i_2_n_0\
    );
\result_OBUF[12]_inst_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_OBUF[8]_inst_i_3_n_0\,
      CO(3) => \result_OBUF[12]_inst_i_3_n_0\,
      CO(2) => \result_OBUF[12]_inst_i_3_n_1\,
      CO(1) => \result_OBUF[12]_inst_i_3_n_2\,
      CO(0) => \result_OBUF[12]_inst_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(12 downto 9),
      S(3) => \result_OBUF[12]_inst_i_6_n_0\,
      S(2) => \result_OBUF[12]_inst_i_7_n_0\,
      S(1) => \result_OBUF[12]_inst_i_8_n_0\,
      S(0) => \result_OBUF[12]_inst_i_9_n_0\
    );
\result_OBUF[12]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result_OBUF[14]_inst_i_6_n_0\,
      I1 => \result_OBUF[23]_inst_i_20_n_0\,
      I2 => \result_OBUF[12]_inst_i_10_n_0\,
      O => \result_OBUF[12]_inst_i_4_n_0\
    );
\result_OBUF[12]_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_16_in,
      I1 => \result_OBUF[27]_inst_i_2_n_0\,
      O => \result_OBUF[12]_inst_i_5_n_0\
    );
\result_OBUF[12]_inst_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_OBUF[12]_inst_i_2_n_0\,
      O => \result_OBUF[12]_inst_i_6_n_0\
    );
\result_OBUF[12]_inst_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_OBUF[11]_inst_i_2_n_0\,
      O => \result_OBUF[12]_inst_i_7_n_0\
    );
\result_OBUF[12]_inst_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_OBUF[10]_inst_i_2_n_0\,
      O => \result_OBUF[12]_inst_i_8_n_0\
    );
\result_OBUF[12]_inst_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_OBUF[9]_inst_i_2_n_0\,
      O => \result_OBUF[12]_inst_i_9_n_0\
    );
\result_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(13),
      O => result(13)
    );
\result_OBUF[13]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E0E1F0E"
    )
        port map (
      I0 => \result_OBUF[22]_inst_i_2_n_0\,
      I1 => \result_OBUF[22]_inst_i_3_n_0\,
      I2 => \result_OBUF[13]_inst_i_2_n_0\,
      I3 => plusOp(13),
      I4 => \result_OBUF[22]_inst_i_6_n_0\,
      O => result_OBUF(13)
    );
\result_OBUF[13]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FCFAFA00FC"
    )
        port map (
      I0 => \result_OBUF[13]_inst_i_3_n_0\,
      I1 => \result_OBUF[14]_inst_i_3_n_0\,
      I2 => \result_OBUF[23]_inst_i_12_n_0\,
      I3 => \result_OBUF[13]_inst_i_4_n_0\,
      I4 => \result_OBUF[27]_inst_i_5_n_0\,
      I5 => \result_OBUF[14]_inst_i_5_n_0\,
      O => \result_OBUF[13]_inst_i_2_n_0\
    );
\result_OBUF[13]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \result_OBUF[14]_inst_i_7_n_0\,
      I1 => \result_OBUF[23]_inst_i_22_n_0\,
      I2 => \result_OBUF[19]_inst_i_5_n_0\,
      I3 => \result_OBUF[23]_inst_i_20_n_0\,
      I4 => \result_OBUF[13]_inst_i_5_n_0\,
      O => \result_OBUF[13]_inst_i_3_n_0\
    );
\result_OBUF[13]_inst_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_14_in,
      I1 => \result_OBUF[27]_inst_i_2_n_0\,
      O => \result_OBUF[13]_inst_i_4_n_0\
    );
\result_OBUF[13]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BFF8B8B8BCC"
    )
        port map (
      I0 => \result_OBUF[9]_inst_i_6_n_0\,
      I1 => \result_OBUF[23]_inst_i_22_n_0\,
      I2 => p_20_in,
      I3 => \result_OBUF[23]_inst_i_12_n_0\,
      I4 => result_OBUF(26),
      I5 => \result_OBUF[9]_inst_i_5_n_0\,
      O => \result_OBUF[13]_inst_i_5_n_0\
    );
\result_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(14),
      O => result(14)
    );
\result_OBUF[14]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E0E1F0E"
    )
        port map (
      I0 => \result_OBUF[22]_inst_i_2_n_0\,
      I1 => \result_OBUF[22]_inst_i_3_n_0\,
      I2 => \result_OBUF[14]_inst_i_2_n_0\,
      I3 => plusOp(14),
      I4 => \result_OBUF[22]_inst_i_6_n_0\,
      O => result_OBUF(14)
    );
\result_OBUF[14]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FCFAFA00FC"
    )
        port map (
      I0 => \result_OBUF[14]_inst_i_3_n_0\,
      I1 => \result_OBUF[14]_inst_i_4_n_0\,
      I2 => \result_OBUF[23]_inst_i_12_n_0\,
      I3 => \result_OBUF[14]_inst_i_5_n_0\,
      I4 => \result_OBUF[27]_inst_i_5_n_0\,
      I5 => \result_OBUF[15]_inst_i_4_n_0\,
      O => \result_OBUF[14]_inst_i_2_n_0\
    );
\result_OBUF[14]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \result_OBUF[16]_inst_i_10_n_0\,
      I1 => \result_OBUF[23]_inst_i_22_n_0\,
      I2 => \result_OBUF[23]_inst_i_21_n_0\,
      I3 => \result_OBUF[23]_inst_i_20_n_0\,
      I4 => \result_OBUF[14]_inst_i_6_n_0\,
      O => \result_OBUF[14]_inst_i_3_n_0\
    );
\result_OBUF[14]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_OBUF[17]_inst_i_5_n_0\,
      I1 => \result_OBUF[23]_inst_i_26_n_0\,
      I2 => \result_OBUF[23]_inst_i_20_n_0\,
      I3 => \result_OBUF[14]_inst_i_7_n_0\,
      I4 => \result_OBUF[23]_inst_i_22_n_0\,
      I5 => \result_OBUF[19]_inst_i_5_n_0\,
      O => \result_OBUF[14]_inst_i_4_n_0\
    );
\result_OBUF[14]_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_12_in,
      I1 => \result_OBUF[27]_inst_i_2_n_0\,
      O => \result_OBUF[14]_inst_i_5_n_0\
    );
\result_OBUF[14]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BFF8B8B8BCC"
    )
        port map (
      I0 => \result_OBUF[10]_inst_i_6_n_0\,
      I1 => \result_OBUF[23]_inst_i_22_n_0\,
      I2 => p_18_in,
      I3 => \result_OBUF[23]_inst_i_12_n_0\,
      I4 => result_OBUF(26),
      I5 => \result_OBUF[10]_inst_i_5_n_0\,
      O => \result_OBUF[14]_inst_i_6_n_0\
    );
\result_OBUF[14]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7557455475577557"
    )
        port map (
      I0 => p_24_in,
      I1 => \result_OBUF[23]_inst_i_12_n_0\,
      I2 => \result_OBUF[23]_inst_i_29_n_0\,
      I3 => \result_OBUF[27]_inst_i_3_n_0\,
      I4 => \result_OBUF[1]_inst_i_5_n_0\,
      I5 => p_40_in,
      O => \result_OBUF[14]_inst_i_7_n_0\
    );
\result_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(15),
      O => result(15)
    );
\result_OBUF[15]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E0E1F0E"
    )
        port map (
      I0 => \result_OBUF[22]_inst_i_2_n_0\,
      I1 => \result_OBUF[22]_inst_i_3_n_0\,
      I2 => \result_OBUF[15]_inst_i_2_n_0\,
      I3 => plusOp(15),
      I4 => \result_OBUF[22]_inst_i_6_n_0\,
      O => result_OBUF(15)
    );
\result_OBUF[15]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FEFEFE00FE"
    )
        port map (
      I0 => \result_OBUF[15]_inst_i_3_n_0\,
      I1 => result_OBUF(30),
      I2 => p_13_in,
      I3 => \result_OBUF[15]_inst_i_4_n_0\,
      I4 => \result_OBUF[27]_inst_i_5_n_0\,
      I5 => \result_OBUF[16]_inst_i_5_n_0\,
      O => \result_OBUF[15]_inst_i_2_n_0\
    );
\result_OBUF[15]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_OBUF[15]_inst_i_5_n_0\,
      I1 => \result_OBUF[15]_inst_i_6_n_0\,
      I2 => \result_OBUF[27]_inst_i_5_n_0\,
      I3 => \result_OBUF[15]_inst_i_7_n_0\,
      I4 => \result_OBUF[23]_inst_i_20_n_0\,
      I5 => \result_OBUF[15]_inst_i_8_n_0\,
      O => \result_OBUF[15]_inst_i_3_n_0\
    );
\result_OBUF[15]_inst_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_10_in,
      I1 => \result_OBUF[27]_inst_i_3_n_0\,
      O => \result_OBUF[15]_inst_i_4_n_0\
    );
\result_OBUF[15]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505FCFCF505FC0C0"
    )
        port map (
      I0 => p_20_in,
      I1 => \result_OBUF[9]_inst_i_5_n_0\,
      I2 => \result_OBUF[23]_inst_i_22_n_0\,
      I3 => p_12_in,
      I4 => \result_OBUF[22]_inst_i_20_n_0\,
      I5 => \result_OBUF[9]_inst_i_6_n_0\,
      O => \result_OBUF[15]_inst_i_5_n_0\
    );
\result_OBUF[15]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505FCFCF505FC0C0"
    )
        port map (
      I0 => p_24_in,
      I1 => \result_OBUF[5]_inst_i_5_n_0\,
      I2 => \result_OBUF[23]_inst_i_22_n_0\,
      I3 => p_16_in,
      I4 => \result_OBUF[22]_inst_i_20_n_0\,
      I5 => \result_OBUF[5]_inst_i_6_n_0\,
      O => \result_OBUF[15]_inst_i_6_n_0\
    );
\result_OBUF[15]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505FCFCF505FC0C0"
    )
        port map (
      I0 => p_18_in,
      I1 => \result_OBUF[10]_inst_i_5_n_0\,
      I2 => \result_OBUF[23]_inst_i_22_n_0\,
      I3 => p_10_in,
      I4 => \result_OBUF[22]_inst_i_20_n_0\,
      I5 => \result_OBUF[10]_inst_i_6_n_0\,
      O => \result_OBUF[15]_inst_i_7_n_0\
    );
\result_OBUF[15]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505FCFCF505FC0C0"
    )
        port map (
      I0 => p_22_in,
      I1 => \result_OBUF[6]_inst_i_5_n_0\,
      I2 => \result_OBUF[23]_inst_i_22_n_0\,
      I3 => p_14_in,
      I4 => \result_OBUF[22]_inst_i_20_n_0\,
      I5 => \result_OBUF[6]_inst_i_6_n_0\,
      O => \result_OBUF[15]_inst_i_8_n_0\
    );
\result_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(16),
      O => result(16)
    );
\result_OBUF[16]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E0E1F0E"
    )
        port map (
      I0 => \result_OBUF[22]_inst_i_2_n_0\,
      I1 => \result_OBUF[22]_inst_i_3_n_0\,
      I2 => \result_OBUF[16]_inst_i_2_n_0\,
      I3 => plusOp(16),
      I4 => \result_OBUF[22]_inst_i_6_n_0\,
      O => result_OBUF(16)
    );
\result_OBUF[16]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7557455475577557"
    )
        port map (
      I0 => p_22_in,
      I1 => \result_OBUF[23]_inst_i_12_n_0\,
      I2 => \result_OBUF[23]_inst_i_29_n_0\,
      I3 => \result_OBUF[27]_inst_i_3_n_0\,
      I4 => \result_OBUF[1]_inst_i_5_n_0\,
      I5 => p_38_in,
      O => \result_OBUF[16]_inst_i_10_n_0\
    );
\result_OBUF[16]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FCFAFA00FC"
    )
        port map (
      I0 => \result_OBUF[16]_inst_i_4_n_0\,
      I1 => \result_OBUF[17]_inst_i_3_n_0\,
      I2 => \result_OBUF[23]_inst_i_12_n_0\,
      I3 => \result_OBUF[16]_inst_i_5_n_0\,
      I4 => \result_OBUF[27]_inst_i_5_n_0\,
      I5 => \result_OBUF[17]_inst_i_4_n_0\,
      O => \result_OBUF[16]_inst_i_2_n_0\
    );
\result_OBUF[16]_inst_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_OBUF[12]_inst_i_3_n_0\,
      CO(3) => \result_OBUF[16]_inst_i_3_n_0\,
      CO(2) => \result_OBUF[16]_inst_i_3_n_1\,
      CO(1) => \result_OBUF[16]_inst_i_3_n_2\,
      CO(0) => \result_OBUF[16]_inst_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(16 downto 13),
      S(3) => \result_OBUF[16]_inst_i_6_n_0\,
      S(2) => \result_OBUF[16]_inst_i_7_n_0\,
      S(1) => \result_OBUF[16]_inst_i_8_n_0\,
      S(0) => \result_OBUF[16]_inst_i_9_n_0\
    );
\result_OBUF[16]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_OBUF[18]_inst_i_5_n_0\,
      I1 => \result_OBUF[23]_inst_i_18_n_0\,
      I2 => \result_OBUF[23]_inst_i_20_n_0\,
      I3 => \result_OBUF[16]_inst_i_10_n_0\,
      I4 => \result_OBUF[23]_inst_i_22_n_0\,
      I5 => \result_OBUF[23]_inst_i_21_n_0\,
      O => \result_OBUF[16]_inst_i_4_n_0\
    );
\result_OBUF[16]_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_8_in,
      I1 => \result_OBUF[27]_inst_i_2_n_0\,
      O => \result_OBUF[16]_inst_i_5_n_0\
    );
\result_OBUF[16]_inst_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_OBUF[16]_inst_i_2_n_0\,
      O => \result_OBUF[16]_inst_i_6_n_0\
    );
\result_OBUF[16]_inst_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_OBUF[15]_inst_i_2_n_0\,
      O => \result_OBUF[16]_inst_i_7_n_0\
    );
\result_OBUF[16]_inst_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_OBUF[14]_inst_i_2_n_0\,
      O => \result_OBUF[16]_inst_i_8_n_0\
    );
\result_OBUF[16]_inst_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_OBUF[13]_inst_i_2_n_0\,
      O => \result_OBUF[16]_inst_i_9_n_0\
    );
\result_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(17),
      O => result(17)
    );
\result_OBUF[17]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E0E1F0E"
    )
        port map (
      I0 => \result_OBUF[22]_inst_i_2_n_0\,
      I1 => \result_OBUF[22]_inst_i_3_n_0\,
      I2 => \result_OBUF[17]_inst_i_2_n_0\,
      I3 => plusOp(17),
      I4 => \result_OBUF[22]_inst_i_6_n_0\,
      O => result_OBUF(17)
    );
\result_OBUF[17]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FCFAFA00FC"
    )
        port map (
      I0 => \result_OBUF[17]_inst_i_3_n_0\,
      I1 => \result_OBUF[18]_inst_i_4_n_0\,
      I2 => \result_OBUF[23]_inst_i_12_n_0\,
      I3 => \result_OBUF[17]_inst_i_4_n_0\,
      I4 => \result_OBUF[27]_inst_i_5_n_0\,
      I5 => \result_OBUF[18]_inst_i_3_n_0\,
      O => \result_OBUF[17]_inst_i_2_n_0\
    );
\result_OBUF[17]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_OBUF[19]_inst_i_5_n_0\,
      I1 => \result_OBUF[23]_inst_i_25_n_0\,
      I2 => \result_OBUF[23]_inst_i_20_n_0\,
      I3 => \result_OBUF[17]_inst_i_5_n_0\,
      I4 => \result_OBUF[23]_inst_i_22_n_0\,
      I5 => \result_OBUF[23]_inst_i_26_n_0\,
      O => \result_OBUF[17]_inst_i_3_n_0\
    );
\result_OBUF[17]_inst_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_6_in,
      I1 => \result_OBUF[27]_inst_i_2_n_0\,
      O => \result_OBUF[17]_inst_i_4_n_0\
    );
\result_OBUF[17]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7557455475577557"
    )
        port map (
      I0 => p_20_in,
      I1 => \result_OBUF[23]_inst_i_12_n_0\,
      I2 => \result_OBUF[23]_inst_i_29_n_0\,
      I3 => \result_OBUF[27]_inst_i_3_n_0\,
      I4 => \result_OBUF[1]_inst_i_5_n_0\,
      I5 => p_36_in,
      O => \result_OBUF[17]_inst_i_5_n_0\
    );
\result_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(18),
      O => result(18)
    );
\result_OBUF[18]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0E0F1E0"
    )
        port map (
      I0 => \result_OBUF[22]_inst_i_2_n_0\,
      I1 => \result_OBUF[22]_inst_i_3_n_0\,
      I2 => \result_OBUF[18]_inst_i_2_n_0\,
      I3 => plusOp(18),
      I4 => \result_OBUF[22]_inst_i_6_n_0\,
      O => result_OBUF(18)
    );
\result_OBUF[18]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAACCAACFAACFFF"
    )
        port map (
      I0 => \result_OBUF[18]_inst_i_3_n_0\,
      I1 => \result_OBUF[19]_inst_i_4_n_0\,
      I2 => \result_OBUF[18]_inst_i_4_n_0\,
      I3 => \result_OBUF[27]_inst_i_5_n_0\,
      I4 => \result_OBUF[19]_inst_i_3_n_0\,
      I5 => \result_OBUF[23]_inst_i_12_n_0\,
      O => \result_OBUF[18]_inst_i_2_n_0\
    );
\result_OBUF[18]_inst_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_OBUF[30]_inst_i_4_n_5\,
      I1 => \result_OBUF[27]_inst_i_2_n_0\,
      O => \result_OBUF[18]_inst_i_3_n_0\
    );
\result_OBUF[18]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_OBUF[23]_inst_i_21_n_0\,
      I1 => \result_OBUF[23]_inst_i_23_n_0\,
      I2 => \result_OBUF[23]_inst_i_20_n_0\,
      I3 => \result_OBUF[18]_inst_i_5_n_0\,
      I4 => \result_OBUF[23]_inst_i_22_n_0\,
      I5 => \result_OBUF[23]_inst_i_18_n_0\,
      O => \result_OBUF[18]_inst_i_4_n_0\
    );
\result_OBUF[18]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7557455475577557"
    )
        port map (
      I0 => p_18_in,
      I1 => \result_OBUF[23]_inst_i_12_n_0\,
      I2 => \result_OBUF[23]_inst_i_29_n_0\,
      I3 => \result_OBUF[27]_inst_i_3_n_0\,
      I4 => \result_OBUF[1]_inst_i_5_n_0\,
      I5 => p_34_in,
      O => \result_OBUF[18]_inst_i_5_n_0\
    );
\result_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(19),
      O => result(19)
    );
\result_OBUF[19]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0E0F1E0"
    )
        port map (
      I0 => \result_OBUF[22]_inst_i_2_n_0\,
      I1 => \result_OBUF[22]_inst_i_3_n_0\,
      I2 => \result_OBUF[19]_inst_i_2_n_0\,
      I3 => plusOp(19),
      I4 => \result_OBUF[22]_inst_i_6_n_0\,
      O => result_OBUF(19)
    );
\result_OBUF[19]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF030505FF03"
    )
        port map (
      I0 => \result_OBUF[19]_inst_i_3_n_0\,
      I1 => \result_OBUF[23]_inst_i_10_n_0\,
      I2 => \result_OBUF[23]_inst_i_12_n_0\,
      I3 => \result_OBUF[19]_inst_i_4_n_0\,
      I4 => \result_OBUF[27]_inst_i_5_n_0\,
      I5 => \result_OBUF[23]_inst_i_13_n_0\,
      O => \result_OBUF[19]_inst_i_2_n_0\
    );
\result_OBUF[19]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_OBUF[23]_inst_i_26_n_0\,
      I1 => \result_OBUF[23]_inst_i_27_n_0\,
      I2 => \result_OBUF[23]_inst_i_20_n_0\,
      I3 => \result_OBUF[19]_inst_i_5_n_0\,
      I4 => \result_OBUF[23]_inst_i_22_n_0\,
      I5 => \result_OBUF[23]_inst_i_25_n_0\,
      O => \result_OBUF[19]_inst_i_3_n_0\
    );
\result_OBUF[19]_inst_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_OBUF[30]_inst_i_4_n_4\,
      I1 => \result_OBUF[27]_inst_i_2_n_0\,
      O => \result_OBUF[19]_inst_i_4_n_0\
    );
\result_OBUF[19]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7557455475577557"
    )
        port map (
      I0 => p_16_in,
      I1 => \result_OBUF[23]_inst_i_12_n_0\,
      I2 => \result_OBUF[23]_inst_i_29_n_0\,
      I3 => \result_OBUF[27]_inst_i_3_n_0\,
      I4 => \result_OBUF[1]_inst_i_5_n_0\,
      I5 => p_32_in,
      O => \result_OBUF[19]_inst_i_5_n_0\
    );
\result_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(1),
      O => result(1)
    );
\result_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E0E1F0E"
    )
        port map (
      I0 => \result_OBUF[22]_inst_i_2_n_0\,
      I1 => \result_OBUF[22]_inst_i_3_n_0\,
      I2 => \result_OBUF[1]_inst_i_2_n_0\,
      I3 => plusOp(1),
      I4 => \result_OBUF[22]_inst_i_6_n_0\,
      O => result_OBUF(1)
    );
\result_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FECE3202"
    )
        port map (
      I0 => \result_OBUF[1]_inst_i_3_n_0\,
      I1 => result_OBUF(30),
      I2 => p_13_in,
      I3 => \result_OBUF[22]_inst_i_8_n_0\,
      I4 => \result_OBUF[1]_inst_i_4_n_0\,
      O => \result_OBUF[1]_inst_i_2_n_0\
    );
\result_OBUF[1]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF7FFFF"
    )
        port map (
      I0 => \result_OBUF[22]_inst_i_20_n_0\,
      I1 => p_40_in,
      I2 => \result_OBUF[1]_inst_i_5_n_0\,
      I3 => \result_OBUF[23]_inst_i_22_n_0\,
      I4 => \result_OBUF[23]_inst_i_20_n_0\,
      O => \result_OBUF[1]_inst_i_3_n_0\
    );
\result_OBUF[1]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \result_OBUF[27]_inst_i_3_n_0\,
      I1 => p_36_in,
      I2 => \result_OBUF[27]_inst_i_2_n_0\,
      I3 => \result_OBUF[30]_inst_i_4_n_5\,
      O => \result_OBUF[1]_inst_i_4_n_0\
    );
\result_OBUF[1]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => p_24_in,
      I1 => p_22_in,
      I2 => p_20_in,
      I3 => p_18_in,
      I4 => p_16_in,
      I5 => \result_OBUF[26]_inst_i_10_n_0\,
      O => \result_OBUF[1]_inst_i_5_n_0\
    );
\result_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(20),
      O => result(20)
    );
\result_OBUF[20]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E0E1F0E"
    )
        port map (
      I0 => \result_OBUF[22]_inst_i_2_n_0\,
      I1 => \result_OBUF[22]_inst_i_3_n_0\,
      I2 => \result_OBUF[23]_inst_i_4_n_0\,
      I3 => plusOp(20),
      I4 => \result_OBUF[22]_inst_i_6_n_0\,
      O => result_OBUF(20)
    );
\result_OBUF[20]_inst_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_OBUF[16]_inst_i_3_n_0\,
      CO(3) => \result_OBUF[20]_inst_i_2_n_0\,
      CO(2) => \result_OBUF[20]_inst_i_2_n_1\,
      CO(1) => \result_OBUF[20]_inst_i_2_n_2\,
      CO(0) => \result_OBUF[20]_inst_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(20 downto 17),
      S(3) => \result_OBUF[20]_inst_i_3_n_0\,
      S(2) => \result_OBUF[20]_inst_i_4_n_0\,
      S(1) => \result_OBUF[20]_inst_i_5_n_0\,
      S(0) => \result_OBUF[20]_inst_i_6_n_0\
    );
\result_OBUF[20]_inst_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_OBUF[23]_inst_i_4_n_0\,
      O => \result_OBUF[20]_inst_i_3_n_0\
    );
\result_OBUF[20]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF030505FF03"
    )
        port map (
      I0 => \result_OBUF[19]_inst_i_3_n_0\,
      I1 => \result_OBUF[23]_inst_i_10_n_0\,
      I2 => \result_OBUF[23]_inst_i_12_n_0\,
      I3 => \result_OBUF[19]_inst_i_4_n_0\,
      I4 => \result_OBUF[27]_inst_i_5_n_0\,
      I5 => \result_OBUF[23]_inst_i_13_n_0\,
      O => \result_OBUF[20]_inst_i_4_n_0\
    );
\result_OBUF[20]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAACCAACFAACFFF"
    )
        port map (
      I0 => \result_OBUF[18]_inst_i_3_n_0\,
      I1 => \result_OBUF[19]_inst_i_4_n_0\,
      I2 => \result_OBUF[18]_inst_i_4_n_0\,
      I3 => \result_OBUF[27]_inst_i_5_n_0\,
      I4 => \result_OBUF[19]_inst_i_3_n_0\,
      I5 => \result_OBUF[23]_inst_i_12_n_0\,
      O => \result_OBUF[20]_inst_i_5_n_0\
    );
\result_OBUF[20]_inst_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_OBUF[17]_inst_i_2_n_0\,
      O => \result_OBUF[20]_inst_i_6_n_0\
    );
\result_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(21),
      O => result(21)
    );
\result_OBUF[21]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E0E1F0E"
    )
        port map (
      I0 => \result_OBUF[22]_inst_i_2_n_0\,
      I1 => \result_OBUF[22]_inst_i_3_n_0\,
      I2 => \result_OBUF[23]_inst_i_5_n_0\,
      I3 => plusOp(21),
      I4 => \result_OBUF[22]_inst_i_6_n_0\,
      O => result_OBUF(21)
    );
\result_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(22),
      O => result(22)
    );
\result_OBUF[22]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E0E1F0E"
    )
        port map (
      I0 => \result_OBUF[22]_inst_i_2_n_0\,
      I1 => \result_OBUF[22]_inst_i_3_n_0\,
      I2 => \result_OBUF[22]_inst_i_4_n_0\,
      I3 => plusOp(22),
      I4 => \result_OBUF[22]_inst_i_6_n_0\,
      O => result_OBUF(22)
    );
\result_OBUF[22]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCCFECCEECCEE"
    )
        port map (
      I0 => p_12_in,
      I1 => \result_OBUF[22]_inst_i_21_n_0\,
      I2 => p_20_in,
      I3 => \result_OBUF[22]_inst_i_20_n_0\,
      I4 => \result_OBUF[22]_inst_i_22_n_0\,
      I5 => \result_OBUF[23]_inst_i_22_n_0\,
      O => \result_OBUF[22]_inst_i_10_n_0\
    );
\result_OBUF[22]_inst_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => p_13_in,
      I1 => \result_OBUF[23]_inst_i_16_n_0\,
      I2 => \result_OBUF[27]_inst_i_5_n_0\,
      O => \result_OBUF[22]_inst_i_11_n_0\
    );
\result_OBUF[22]_inst_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_OBUF[22]_inst_i_4_n_0\,
      O => \result_OBUF[22]_inst_i_12_n_0\
    );
\result_OBUF[22]_inst_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_OBUF[23]_inst_i_5_n_0\,
      O => \result_OBUF[22]_inst_i_13_n_0\
    );
\result_OBUF[22]_inst_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \result_OBUF[8]_inst_i_2_n_0\,
      I1 => \result_OBUF[9]_inst_i_2_n_0\,
      I2 => \result_OBUF[5]_inst_i_2_n_0\,
      I3 => \result_OBUF[13]_inst_i_2_n_0\,
      O => \result_OBUF[22]_inst_i_14_n_0\
    );
\result_OBUF[22]_inst_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \result_OBUF[16]_inst_i_2_n_0\,
      I1 => \result_OBUF[12]_inst_i_2_n_0\,
      O => \result_OBUF[22]_inst_i_15_n_0\
    );
\result_OBUF[22]_inst_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \result_OBUF[22]_inst_i_2_n_0\,
      I1 => \result_OBUF[1]_inst_i_2_n_0\,
      I2 => \result_OBUF[23]_inst_i_17_n_0\,
      I3 => \result_OBUF[10]_inst_i_2_n_0\,
      I4 => \result_OBUF[6]_inst_i_2_n_0\,
      I5 => \result_OBUF[22]_inst_i_23_n_0\,
      O => \result_OBUF[22]_inst_i_16_n_0\
    );
\result_OBUF[22]_inst_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \result_OBUF[23]_inst_i_5_n_0\,
      I1 => \result_OBUF[11]_inst_i_2_n_0\,
      I2 => \result_OBUF[17]_inst_i_2_n_0\,
      O => \result_OBUF[22]_inst_i_17_n_0\
    );
\result_OBUF[22]_inst_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \result_OBUF[18]_inst_i_2_n_0\,
      I1 => \result_OBUF[19]_inst_i_2_n_0\,
      I2 => \result_OBUF[23]_inst_i_4_n_0\,
      I3 => \result_OBUF[22]_inst_i_4_n_0\,
      O => \result_OBUF[22]_inst_i_18_n_0\
    );
\result_OBUF[22]_inst_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => \result_OBUF[1]_inst_i_5_n_0\,
      I1 => p_32_in,
      I2 => \result_OBUF[30]_inst_i_2_n_7\,
      O => \result_OBUF[22]_inst_i_19_n_0\
    );
\result_OBUF[22]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F077"
    )
        port map (
      I0 => p_13_in,
      I1 => \result_OBUF[22]_inst_i_7_n_0\,
      I2 => \result_OBUF[22]_inst_i_8_n_0\,
      I3 => result_OBUF(30),
      O => \result_OBUF[22]_inst_i_2_n_0\
    );
\result_OBUF[22]_inst_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEFEEEEEEFE"
    )
        port map (
      I0 => p_13_in,
      I1 => result_OBUF(30),
      I2 => \result_OBUF[27]_inst_i_4_n_0\,
      I3 => \result_OBUF[27]_inst_i_5_n_0\,
      I4 => \result_OBUF[27]_inst_i_6_n_0\,
      I5 => \result_OBUF[27]_inst_i_3_n_0\,
      O => \result_OBUF[22]_inst_i_20_n_0\
    );
\result_OBUF[22]_inst_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => p_2_in,
      I1 => p_28_in,
      I2 => \result_OBUF[1]_inst_i_5_n_0\,
      O => \result_OBUF[22]_inst_i_21_n_0\
    );
\result_OBUF[22]_inst_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_36_in,
      I1 => \result_OBUF[1]_inst_i_5_n_0\,
      I2 => \result_OBUF[30]_inst_i_4_n_5\,
      O => \result_OBUF[22]_inst_i_22_n_0\
    );
\result_OBUF[22]_inst_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55544454"
    )
        port map (
      I0 => \result_OBUF[22]_inst_i_24_n_0\,
      I1 => \result_OBUF[23]_inst_i_12_n_0\,
      I2 => \result_OBUF[8]_inst_i_4_n_0\,
      I3 => \result_OBUF[27]_inst_i_5_n_0\,
      I4 => \result_OBUF[7]_inst_i_3_n_0\,
      I5 => \result_OBUF[2]_inst_i_2_n_0\,
      O => \result_OBUF[22]_inst_i_23_n_0\
    );
\result_OBUF[22]_inst_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => p_24_in,
      I1 => \result_OBUF[27]_inst_i_5_n_0\,
      I2 => p_26_in,
      I3 => \result_OBUF[27]_inst_i_2_n_0\,
      O => \result_OBUF[22]_inst_i_24_n_0\
    );
\result_OBUF[22]_inst_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => result_OBUF(30),
      I1 => \result_OBUF[22]_inst_i_7_n_0\,
      O => \result_OBUF[22]_inst_i_3_n_0\
    );
\result_OBUF[22]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF88B8"
    )
        port map (
      I0 => \result_OBUF[23]_inst_i_15_n_0\,
      I1 => \result_OBUF[27]_inst_i_5_n_0\,
      I2 => \result_OBUF[22]_inst_i_9_n_0\,
      I3 => \result_OBUF[22]_inst_i_10_n_0\,
      I4 => \result_OBUF[23]_inst_i_12_n_0\,
      I5 => \result_OBUF[22]_inst_i_11_n_0\,
      O => \result_OBUF[22]_inst_i_4_n_0\
    );
\result_OBUF[22]_inst_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_OBUF[20]_inst_i_2_n_0\,
      CO(3 downto 1) => \NLW_result_OBUF[22]_inst_i_5_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \result_OBUF[22]_inst_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_result_OBUF[22]_inst_i_5_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => plusOp(22 downto 21),
      S(3 downto 2) => B"00",
      S(1) => \result_OBUF[22]_inst_i_12_n_0\,
      S(0) => \result_OBUF[22]_inst_i_13_n_0\
    );
\result_OBUF[22]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \result_OBUF[22]_inst_i_14_n_0\,
      I1 => \result_OBUF[22]_inst_i_15_n_0\,
      I2 => \result_OBUF[23]_inst_i_9_n_0\,
      I3 => \result_OBUF[22]_inst_i_16_n_0\,
      I4 => \result_OBUF[22]_inst_i_17_n_0\,
      I5 => \result_OBUF[22]_inst_i_18_n_0\,
      O => \result_OBUF[22]_inst_i_6_n_0\
    );
\result_OBUF[22]_inst_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5404"
    )
        port map (
      I0 => \result_OBUF[27]_inst_i_3_n_0\,
      I1 => p_40_in,
      I2 => \result_OBUF[27]_inst_i_2_n_0\,
      I3 => p_8_in,
      O => \result_OBUF[22]_inst_i_7_n_0\
    );
\result_OBUF[22]_inst_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \result_OBUF[27]_inst_i_3_n_0\,
      I1 => p_38_in,
      I2 => \result_OBUF[27]_inst_i_2_n_0\,
      I3 => p_6_in,
      O => \result_OBUF[22]_inst_i_8_n_0\
    );
\result_OBUF[22]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBAAAAAAFBAAFBAA"
    )
        port map (
      I0 => \result_OBUF[23]_inst_i_20_n_0\,
      I1 => \result_OBUF[23]_inst_i_22_n_0\,
      I2 => \result_OBUF[23]_inst_i_25_n_0\,
      I3 => \result_OBUF[22]_inst_i_19_n_0\,
      I4 => \result_OBUF[22]_inst_i_20_n_0\,
      I5 => p_16_in,
      O => \result_OBUF[22]_inst_i_9_n_0\
    );
\result_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(23),
      O => result(23)
    );
\result_OBUF[23]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => \result_OBUF[23]_inst_i_2_n_0\,
      I1 => \result_OBUF[23]_inst_i_3_n_0\,
      I2 => \result_OBUF[23]_inst_i_4_n_0\,
      I3 => \result_OBUF[23]_inst_i_5_n_0\,
      I4 => \result_OBUF[23]_inst_i_6_n_0\,
      I5 => \result_OBUF[27]_inst_i_5_n_0\,
      O => result_OBUF(23)
    );
\result_OBUF[23]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_OBUF[23]_inst_i_18_n_0\,
      I1 => \result_OBUF[23]_inst_i_19_n_0\,
      I2 => \result_OBUF[23]_inst_i_20_n_0\,
      I3 => \result_OBUF[23]_inst_i_21_n_0\,
      I4 => \result_OBUF[23]_inst_i_22_n_0\,
      I5 => \result_OBUF[23]_inst_i_23_n_0\,
      O => \result_OBUF[23]_inst_i_10_n_0\
    );
\result_OBUF[23]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F80AFAF8F80A0A0"
    )
        port map (
      I0 => \result_OBUF[23]_inst_i_24_n_0\,
      I1 => \result_OBUF[23]_inst_i_25_n_0\,
      I2 => \result_OBUF[23]_inst_i_20_n_0\,
      I3 => \result_OBUF[23]_inst_i_26_n_0\,
      I4 => \result_OBUF[23]_inst_i_22_n_0\,
      I5 => \result_OBUF[23]_inst_i_27_n_0\,
      O => \result_OBUF[23]_inst_i_11_n_0\
    );
\result_OBUF[23]_inst_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => result_OBUF(30),
      I1 => p_13_in,
      O => \result_OBUF[23]_inst_i_12_n_0\
    );
\result_OBUF[23]_inst_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_OBUF[30]_inst_i_2_n_7\,
      I1 => \result_OBUF[27]_inst_i_2_n_0\,
      O => \result_OBUF[23]_inst_i_13_n_0\
    );
\result_OBUF[23]_inst_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_4_in,
      I1 => \result_OBUF[27]_inst_i_3_n_0\,
      O => \result_OBUF[23]_inst_i_14_n_0\
    );
\result_OBUF[23]_inst_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F80AFAF8F80A0A0"
    )
        port map (
      I0 => \result_OBUF[23]_inst_i_28_n_0\,
      I1 => \result_OBUF[23]_inst_i_23_n_0\,
      I2 => \result_OBUF[23]_inst_i_20_n_0\,
      I3 => \result_OBUF[23]_inst_i_18_n_0\,
      I4 => \result_OBUF[23]_inst_i_22_n_0\,
      I5 => \result_OBUF[23]_inst_i_19_n_0\,
      O => \result_OBUF[23]_inst_i_15_n_0\
    );
\result_OBUF[23]_inst_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_2_in,
      I1 => \result_OBUF[27]_inst_i_3_n_0\,
      O => \result_OBUF[23]_inst_i_16_n_0\
    );
\result_OBUF[23]_inst_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABBBAB00000000"
    )
        port map (
      I0 => \result_OBUF[4]_inst_i_5_n_0\,
      I1 => \result_OBUF[23]_inst_i_12_n_0\,
      I2 => \result_OBUF[5]_inst_i_3_n_0\,
      I3 => \result_OBUF[27]_inst_i_5_n_0\,
      I4 => \result_OBUF[4]_inst_i_4_n_0\,
      I5 => \result_OBUF[3]_inst_i_2_n_0\,
      O => \result_OBUF[23]_inst_i_17_n_0\
    );
\result_OBUF[23]_inst_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7557455475577557"
    )
        port map (
      I0 => p_10_in,
      I1 => \result_OBUF[23]_inst_i_12_n_0\,
      I2 => \result_OBUF[23]_inst_i_29_n_0\,
      I3 => \result_OBUF[27]_inst_i_3_n_0\,
      I4 => \result_OBUF[1]_inst_i_5_n_0\,
      I5 => p_26_in,
      O => \result_OBUF[23]_inst_i_18_n_0\
    );
\result_OBUF[23]_inst_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAAAA8AAAAAAAA"
    )
        port map (
      I0 => \result_OBUF[23]_inst_i_30_n_0\,
      I1 => p_13_in,
      I2 => result_OBUF(30),
      I3 => \result_OBUF[23]_inst_i_29_n_0\,
      I4 => \result_OBUF[27]_inst_i_3_n_0\,
      I5 => p_18_in,
      O => \result_OBUF[23]_inst_i_19_n_0\
    );
\result_OBUF[23]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \result_OBUF[11]_inst_i_2_n_0\,
      I1 => \result_OBUF[10]_inst_i_2_n_0\,
      I2 => \result_OBUF[23]_inst_i_7_n_0\,
      I3 => \result_OBUF[23]_inst_i_8_n_0\,
      O => \result_OBUF[23]_inst_i_2_n_0\
    );
\result_OBUF[23]_inst_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEBBBBBEEEBEEEE"
    )
        port map (
      I0 => \result_OBUF[23]_inst_i_12_n_0\,
      I1 => \result_OBUF[27]_inst_i_5_n_0\,
      I2 => p_36_in,
      I3 => p_38_in,
      I4 => \result_OBUF[26]_inst_i_4_n_0\,
      I5 => \result_OBUF[26]_inst_i_3_n_0\,
      O => \result_OBUF[23]_inst_i_20_n_0\
    );
\result_OBUF[23]_inst_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7557455475577557"
    )
        port map (
      I0 => p_14_in,
      I1 => \result_OBUF[23]_inst_i_12_n_0\,
      I2 => \result_OBUF[23]_inst_i_29_n_0\,
      I3 => \result_OBUF[27]_inst_i_3_n_0\,
      I4 => \result_OBUF[1]_inst_i_5_n_0\,
      I5 => p_30_in,
      O => \result_OBUF[23]_inst_i_21_n_0\
    );
\result_OBUF[23]_inst_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0454510100005555"
    )
        port map (
      I0 => \result_OBUF[23]_inst_i_12_n_0\,
      I1 => \result_OBUF[26]_inst_i_3_n_0\,
      I2 => \result_OBUF[26]_inst_i_4_n_0\,
      I3 => \result_OBUF[26]_inst_i_5_n_0\,
      I4 => \result_OBUF[27]_inst_i_4_n_0\,
      I5 => \result_OBUF[27]_inst_i_5_n_0\,
      O => \result_OBUF[23]_inst_i_22_n_0\
    );
\result_OBUF[23]_inst_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FDFFFFFD"
    )
        port map (
      I0 => p_22_in,
      I1 => p_13_in,
      I2 => result_OBUF(30),
      I3 => \result_OBUF[23]_inst_i_29_n_0\,
      I4 => \result_OBUF[27]_inst_i_3_n_0\,
      I5 => \result_OBUF[23]_inst_i_31_n_0\,
      O => \result_OBUF[23]_inst_i_23_n_0\
    );
\result_OBUF[23]_inst_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAAAA8AAAAAAAA"
    )
        port map (
      I0 => \result_OBUF[22]_inst_i_19_n_0\,
      I1 => p_13_in,
      I2 => result_OBUF(30),
      I3 => \result_OBUF[23]_inst_i_29_n_0\,
      I4 => \result_OBUF[27]_inst_i_3_n_0\,
      I5 => p_16_in,
      O => \result_OBUF[23]_inst_i_24_n_0\
    );
\result_OBUF[23]_inst_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FDFFFFFD"
    )
        port map (
      I0 => p_24_in,
      I1 => p_13_in,
      I2 => result_OBUF(30),
      I3 => \result_OBUF[23]_inst_i_29_n_0\,
      I4 => \result_OBUF[27]_inst_i_3_n_0\,
      I5 => \result_OBUF[23]_inst_i_32_n_0\,
      O => \result_OBUF[23]_inst_i_25_n_0\
    );
\result_OBUF[23]_inst_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7557455475577557"
    )
        port map (
      I0 => p_12_in,
      I1 => \result_OBUF[23]_inst_i_12_n_0\,
      I2 => \result_OBUF[23]_inst_i_29_n_0\,
      I3 => \result_OBUF[27]_inst_i_3_n_0\,
      I4 => \result_OBUF[1]_inst_i_5_n_0\,
      I5 => p_28_in,
      O => \result_OBUF[23]_inst_i_26_n_0\
    );
\result_OBUF[23]_inst_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FDFFFFFD"
    )
        port map (
      I0 => p_20_in,
      I1 => p_13_in,
      I2 => result_OBUF(30),
      I3 => \result_OBUF[23]_inst_i_29_n_0\,
      I4 => \result_OBUF[27]_inst_i_3_n_0\,
      I5 => \result_OBUF[22]_inst_i_22_n_0\,
      O => \result_OBUF[23]_inst_i_27_n_0\
    );
\result_OBUF[23]_inst_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAAAA8AAAAAAAA"
    )
        port map (
      I0 => \result_OBUF[23]_inst_i_33_n_0\,
      I1 => p_13_in,
      I2 => result_OBUF(30),
      I3 => \result_OBUF[23]_inst_i_29_n_0\,
      I4 => \result_OBUF[27]_inst_i_3_n_0\,
      I5 => p_14_in,
      O => \result_OBUF[23]_inst_i_28_n_0\
    );
\result_OBUF[23]_inst_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002222200020000"
    )
        port map (
      I0 => \result_OBUF[27]_inst_i_4_n_0\,
      I1 => \result_OBUF[27]_inst_i_5_n_0\,
      I2 => p_36_in,
      I3 => p_38_in,
      I4 => \result_OBUF[26]_inst_i_4_n_0\,
      I5 => \result_OBUF[26]_inst_i_3_n_0\,
      O => \result_OBUF[23]_inst_i_29_n_0\
    );
\result_OBUF[23]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \result_OBUF[22]_inst_i_4_n_0\,
      I1 => \result_OBUF[12]_inst_i_2_n_0\,
      I2 => \result_OBUF[16]_inst_i_2_n_0\,
      I3 => \result_OBUF[23]_inst_i_9_n_0\,
      I4 => \result_OBUF[13]_inst_i_2_n_0\,
      I5 => \result_OBUF[9]_inst_i_2_n_0\,
      O => \result_OBUF[23]_inst_i_3_n_0\
    );
\result_OBUF[23]_inst_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \result_OBUF[30]_inst_i_4_n_4\,
      I1 => p_34_in,
      I2 => \result_OBUF[1]_inst_i_5_n_0\,
      O => \result_OBUF[23]_inst_i_30_n_0\
    );
\result_OBUF[23]_inst_i_31\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_38_in,
      I1 => \result_OBUF[1]_inst_i_5_n_0\,
      I2 => p_6_in,
      O => \result_OBUF[23]_inst_i_31_n_0\
    );
\result_OBUF[23]_inst_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_40_in,
      I1 => \result_OBUF[1]_inst_i_5_n_0\,
      I2 => p_8_in,
      O => \result_OBUF[23]_inst_i_32_n_0\
    );
\result_OBUF[23]_inst_i_33\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => p_4_in,
      I1 => p_30_in,
      I2 => \result_OBUF[1]_inst_i_5_n_0\,
      O => \result_OBUF[23]_inst_i_33_n_0\
    );
\result_OBUF[23]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FCFAFA00FC"
    )
        port map (
      I0 => \result_OBUF[23]_inst_i_10_n_0\,
      I1 => \result_OBUF[23]_inst_i_11_n_0\,
      I2 => \result_OBUF[23]_inst_i_12_n_0\,
      I3 => \result_OBUF[23]_inst_i_13_n_0\,
      I4 => \result_OBUF[27]_inst_i_5_n_0\,
      I5 => \result_OBUF[23]_inst_i_14_n_0\,
      O => \result_OBUF[23]_inst_i_4_n_0\
    );
\result_OBUF[23]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FCFAFA00FC"
    )
        port map (
      I0 => \result_OBUF[23]_inst_i_11_n_0\,
      I1 => \result_OBUF[23]_inst_i_15_n_0\,
      I2 => \result_OBUF[23]_inst_i_12_n_0\,
      I3 => \result_OBUF[23]_inst_i_14_n_0\,
      I4 => \result_OBUF[27]_inst_i_5_n_0\,
      I5 => \result_OBUF[23]_inst_i_16_n_0\,
      O => \result_OBUF[23]_inst_i_5_n_0\
    );
\result_OBUF[23]_inst_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \result_OBUF[19]_inst_i_2_n_0\,
      I1 => \result_OBUF[18]_inst_i_2_n_0\,
      O => \result_OBUF[23]_inst_i_6_n_0\
    );
\result_OBUF[23]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => \result_OBUF[22]_inst_i_2_n_0\,
      I1 => \result_OBUF[22]_inst_i_3_n_0\,
      I2 => \result_OBUF[23]_inst_i_17_n_0\,
      I3 => \result_OBUF[1]_inst_i_2_n_0\,
      I4 => \result_OBUF[2]_inst_i_2_n_0\,
      I5 => \result_OBUF[5]_inst_i_2_n_0\,
      O => \result_OBUF[23]_inst_i_7_n_0\
    );
\result_OBUF[23]_inst_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \result_OBUF[17]_inst_i_2_n_0\,
      I1 => \result_OBUF[8]_inst_i_2_n_0\,
      I2 => \result_OBUF[7]_inst_i_2_n_0\,
      I3 => \result_OBUF[6]_inst_i_2_n_0\,
      O => \result_OBUF[23]_inst_i_8_n_0\
    );
\result_OBUF[23]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF47474700"
    )
        port map (
      I0 => \result_OBUF[16]_inst_i_5_n_0\,
      I1 => \result_OBUF[27]_inst_i_5_n_0\,
      I2 => \result_OBUF[15]_inst_i_4_n_0\,
      I3 => \result_OBUF[23]_inst_i_12_n_0\,
      I4 => \result_OBUF[15]_inst_i_3_n_0\,
      I5 => \result_OBUF[14]_inst_i_2_n_0\,
      O => \result_OBUF[23]_inst_i_9_n_0\
    );
\result_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(24),
      O => result(24)
    );
\result_OBUF[24]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFB0B040404F4"
    )
        port map (
      I0 => \result_OBUF[24]_inst_i_2_n_0\,
      I1 => \result_OBUF[24]_inst_i_3_n_0\,
      I2 => \result_OBUF[26]_inst_i_4_n_0\,
      I3 => p_38_in,
      I4 => p_36_in,
      I5 => \result_OBUF[27]_inst_i_5_n_0\,
      O => result_OBUF(24)
    );
\result_OBUF[24]_inst_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => inputA_IBUF(31),
      I1 => inputB_IBUF(31),
      I2 => inputB_IBUF(2),
      I3 => \result_OBUF[31]_inst_i_3_n_0\,
      I4 => inputA_IBUF(2),
      O => \result_OBUF[24]_inst_i_10_n_0\
    );
\result_OBUF[24]_inst_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => inputA_IBUF(31),
      I1 => inputB_IBUF(31),
      I2 => inputB_IBUF(1),
      I3 => \result_OBUF[31]_inst_i_3_n_0\,
      I4 => inputA_IBUF(1),
      O => \result_OBUF[24]_inst_i_11_n_0\
    );
\result_OBUF[24]_inst_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => inputA_IBUF(31),
      I1 => inputB_IBUF(31),
      I2 => inputB_IBUF(0),
      I3 => \result_OBUF[31]_inst_i_3_n_0\,
      I4 => inputA_IBUF(0),
      O => \result_OBUF[24]_inst_i_12_n_0\
    );
\result_OBUF[24]_inst_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => inputB_IBUF(31),
      I1 => inputA_IBUF(31),
      I2 => inputA_IBUF(3),
      I3 => inputB_IBUF(3),
      O => \result_OBUF[24]_inst_i_13_n_0\
    );
\result_OBUF[24]_inst_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => inputB_IBUF(31),
      I1 => inputA_IBUF(31),
      I2 => inputA_IBUF(2),
      I3 => inputB_IBUF(2),
      O => \result_OBUF[24]_inst_i_14_n_0\
    );
\result_OBUF[24]_inst_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => inputB_IBUF(31),
      I1 => inputA_IBUF(31),
      I2 => inputA_IBUF(1),
      I3 => inputB_IBUF(1),
      O => \result_OBUF[24]_inst_i_15_n_0\
    );
\result_OBUF[24]_inst_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => inputB_IBUF(31),
      I1 => inputA_IBUF(31),
      I2 => inputA_IBUF(0),
      I3 => inputB_IBUF(0),
      O => \result_OBUF[24]_inst_i_16_n_0\
    );
\result_OBUF[24]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01010100"
    )
        port map (
      I0 => p_24_in,
      I1 => p_26_in,
      I2 => \result_OBUF[27]_inst_i_15_n_0\,
      I3 => p_30_in,
      I4 => p_28_in,
      O => \result_OBUF[24]_inst_i_2_n_0\
    );
\result_OBUF[24]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0FFC0FF5555FFFF"
    )
        port map (
      I0 => \result_OBUF[26]_inst_i_8_n_0\,
      I1 => \result_OBUF[24]_inst_i_5_n_0\,
      I2 => \result_OBUF[24]_inst_i_6_n_0\,
      I3 => \result_OBUF[24]_inst_i_7_n_0\,
      I4 => \result_OBUF[26]_inst_i_9_n_0\,
      I5 => \result_OBUF[26]_inst_i_10_n_0\,
      O => \result_OBUF[24]_inst_i_3_n_0\
    );
\result_OBUF[24]_inst_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \result_OBUF[24]_inst_i_4_n_0\,
      CO(2) => \result_OBUF[24]_inst_i_4_n_1\,
      CO(1) => \result_OBUF[24]_inst_i_4_n_2\,
      CO(0) => \result_OBUF[24]_inst_i_4_n_3\,
      CYINIT => \result_OBUF[24]_inst_i_8_n_0\,
      DI(3) => \result_OBUF[24]_inst_i_9_n_0\,
      DI(2) => \result_OBUF[24]_inst_i_10_n_0\,
      DI(1) => \result_OBUF[24]_inst_i_11_n_0\,
      DI(0) => \result_OBUF[24]_inst_i_12_n_0\,
      O(3) => p_34_in,
      O(2) => p_36_in,
      O(1) => p_38_in,
      O(0) => p_40_in,
      S(3) => \result_OBUF[24]_inst_i_13_n_0\,
      S(2) => \result_OBUF[24]_inst_i_14_n_0\,
      S(1) => \result_OBUF[24]_inst_i_15_n_0\,
      S(0) => \result_OBUF[24]_inst_i_16_n_0\
    );
\result_OBUF[24]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => p_6_in,
      I1 => \result_OBUF[30]_inst_i_4_n_4\,
      I2 => \result_OBUF[30]_inst_i_4_n_5\,
      I3 => \result_OBUF[30]_inst_i_2_n_7\,
      I4 => \result_OBUF[31]_inst_i_17_n_0\,
      O => \result_OBUF[24]_inst_i_5_n_0\
    );
\result_OBUF[24]_inst_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_8_in,
      I1 => p_10_in,
      O => \result_OBUF[24]_inst_i_6_n_0\
    );
\result_OBUF[24]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F000F000F0001"
    )
        port map (
      I0 => \result_OBUF[30]_inst_i_2_n_7\,
      I1 => \result_OBUF[30]_inst_i_4_n_4\,
      I2 => result_OBUF(30),
      I3 => p_13_in,
      I4 => p_2_in,
      I5 => p_4_in,
      O => \result_OBUF[24]_inst_i_7_n_0\
    );
\result_OBUF[24]_inst_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => inputA_IBUF(31),
      I1 => inputB_IBUF(31),
      O => \result_OBUF[24]_inst_i_8_n_0\
    );
\result_OBUF[24]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => inputA_IBUF(31),
      I1 => inputB_IBUF(31),
      I2 => inputB_IBUF(3),
      I3 => \result_OBUF[31]_inst_i_3_n_0\,
      I4 => inputA_IBUF(3),
      O => \result_OBUF[24]_inst_i_9_n_0\
    );
\result_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(25),
      O => result(25)
    );
\result_OBUF[25]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"82A0"
    )
        port map (
      I0 => \result_OBUF[31]_inst_i_2_n_0\,
      I1 => \result_OBUF[27]_inst_i_6_n_0\,
      I2 => \result_OBUF[27]_inst_i_4_n_0\,
      I3 => \result_OBUF[27]_inst_i_5_n_0\,
      O => result_OBUF(25)
    );
\result_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(26),
      O => result(26)
    );
\result_OBUF[26]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"59A95555AAAAAAAA"
    )
        port map (
      I0 => \result_OBUF[26]_inst_i_2_n_0\,
      I1 => \result_OBUF[26]_inst_i_3_n_0\,
      I2 => \result_OBUF[26]_inst_i_4_n_0\,
      I3 => \result_OBUF[26]_inst_i_5_n_0\,
      I4 => \result_OBUF[27]_inst_i_5_n_0\,
      I5 => \result_OBUF[27]_inst_i_4_n_0\,
      O => result_OBUF(26)
    );
\result_OBUF[26]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \result_OBUF[31]_inst_i_16_n_0\,
      I1 => \result_OBUF[31]_inst_i_17_n_0\,
      I2 => \result_OBUF[30]_inst_i_2_n_7\,
      I3 => \result_OBUF[30]_inst_i_4_n_5\,
      I4 => \result_OBUF[30]_inst_i_4_n_4\,
      I5 => p_6_in,
      O => \result_OBUF[26]_inst_i_10_n_0\
    );
\result_OBUF[26]_inst_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_24_in,
      I1 => p_26_in,
      O => \result_OBUF[26]_inst_i_11_n_0\
    );
\result_OBUF[26]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFF00FF00FF00"
    )
        port map (
      I0 => \result_OBUF[26]_inst_i_5_n_0\,
      I1 => \result_OBUF[31]_inst_i_6_n_0\,
      I2 => p_40_in,
      I3 => \result_OBUF[26]_inst_i_6_n_0\,
      I4 => \result_OBUF[31]_inst_i_5_n_0\,
      I5 => \result_OBUF[31]_inst_i_4_n_0\,
      O => \result_OBUF[26]_inst_i_2_n_0\
    );
\result_OBUF[26]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555533FF555533F0"
    )
        port map (
      I0 => \result_OBUF[26]_inst_i_7_n_0\,
      I1 => \result_OBUF[26]_inst_i_8_n_0\,
      I2 => \result_OBUF[31]_inst_i_4_n_0\,
      I3 => \result_OBUF[26]_inst_i_9_n_0\,
      I4 => \result_OBUF[26]_inst_i_10_n_0\,
      I5 => \result_OBUF[26]_inst_i_11_n_0\,
      O => \result_OBUF[26]_inst_i_3_n_0\
    );
\result_OBUF[26]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \result_OBUF[31]_inst_i_4_n_0\,
      I1 => \result_OBUF[27]_inst_i_15_n_0\,
      I2 => p_26_in,
      I3 => p_24_in,
      I4 => p_34_in,
      I5 => p_32_in,
      O => \result_OBUF[26]_inst_i_4_n_0\
    );
\result_OBUF[26]_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_36_in,
      I1 => p_38_in,
      O => \result_OBUF[26]_inst_i_5_n_0\
    );
\result_OBUF[26]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => p_6_in,
      I1 => \result_OBUF[30]_inst_i_4_n_4\,
      I2 => \result_OBUF[30]_inst_i_4_n_5\,
      I3 => \result_OBUF[30]_inst_i_2_n_7\,
      I4 => \result_OBUF[31]_inst_i_16_n_0\,
      I5 => \result_OBUF[31]_inst_i_17_n_0\,
      O => \result_OBUF[26]_inst_i_6_n_0\
    );
\result_OBUF[26]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAA02"
    )
        port map (
      I0 => \result_OBUF[24]_inst_i_7_n_0\,
      I1 => p_8_in,
      I2 => p_10_in,
      I3 => p_6_in,
      I4 => \result_OBUF[31]_inst_i_18_n_0\,
      I5 => \result_OBUF[31]_inst_i_17_n_0\,
      O => \result_OBUF[26]_inst_i_7_n_0\
    );
\result_OBUF[26]_inst_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_16_in,
      I1 => p_18_in,
      O => \result_OBUF[26]_inst_i_8_n_0\
    );
\result_OBUF[26]_inst_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_22_in,
      I1 => p_20_in,
      I2 => p_18_in,
      I3 => p_16_in,
      O => \result_OBUF[26]_inst_i_9_n_0\
    );
\result_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(27),
      O => result(27)
    );
\result_OBUF[27]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA9A"
    )
        port map (
      I0 => \result_OBUF[27]_inst_i_2_n_0\,
      I1 => \result_OBUF[27]_inst_i_3_n_0\,
      I2 => \result_OBUF[27]_inst_i_4_n_0\,
      I3 => \result_OBUF[27]_inst_i_5_n_0\,
      I4 => \result_OBUF[27]_inst_i_6_n_0\,
      O => result_OBUF(27)
    );
\result_OBUF[27]_inst_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22322233"
    )
        port map (
      I0 => p_13_in,
      I1 => result_OBUF(30),
      I2 => p_4_in,
      I3 => p_2_in,
      I4 => \result_OBUF[30]_inst_i_2_n_7\,
      O => \result_OBUF[27]_inst_i_10_n_0\
    );
\result_OBUF[27]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA22220002"
    )
        port map (
      I0 => \result_OBUF[27]_inst_i_17_n_0\,
      I1 => p_6_in,
      I2 => p_10_in,
      I3 => \result_OBUF[27]_inst_i_18_n_0\,
      I4 => p_8_in,
      I5 => \result_OBUF[30]_inst_i_4_n_5\,
      O => \result_OBUF[27]_inst_i_11_n_0\
    );
\result_OBUF[27]_inst_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_OBUF[24]_inst_i_4_n_0\,
      CO(3) => \result_OBUF[27]_inst_i_12_n_0\,
      CO(2) => \result_OBUF[27]_inst_i_12_n_1\,
      CO(1) => \result_OBUF[27]_inst_i_12_n_2\,
      CO(0) => \result_OBUF[27]_inst_i_12_n_3\,
      CYINIT => '0',
      DI(3) => \result_OBUF[27]_inst_i_19_n_0\,
      DI(2) => \result_OBUF[27]_inst_i_20_n_0\,
      DI(1) => \result_OBUF[27]_inst_i_21_n_0\,
      DI(0) => \result_OBUF[27]_inst_i_22_n_0\,
      O(3) => p_26_in,
      O(2) => p_28_in,
      O(1) => p_30_in,
      O(0) => p_32_in,
      S(3) => \result_OBUF[27]_inst_i_23_n_0\,
      S(2) => \result_OBUF[27]_inst_i_24_n_0\,
      S(1) => \result_OBUF[27]_inst_i_25_n_0\,
      S(0) => \result_OBUF[27]_inst_i_26_n_0\
    );
\result_OBUF[27]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555511110010"
    )
        port map (
      I0 => p_28_in,
      I1 => p_32_in,
      I2 => p_38_in,
      I3 => p_36_in,
      I4 => p_34_in,
      I5 => p_30_in,
      O => \result_OBUF[27]_inst_i_13_n_0\
    );
\result_OBUF[27]_inst_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_OBUF[27]_inst_i_12_n_0\,
      CO(3) => \result_OBUF[27]_inst_i_14_n_0\,
      CO(2) => \result_OBUF[27]_inst_i_14_n_1\,
      CO(1) => \result_OBUF[27]_inst_i_14_n_2\,
      CO(0) => \result_OBUF[27]_inst_i_14_n_3\,
      CYINIT => '0',
      DI(3) => \result_OBUF[27]_inst_i_27_n_0\,
      DI(2) => \result_OBUF[27]_inst_i_28_n_0\,
      DI(1) => \result_OBUF[27]_inst_i_29_n_0\,
      DI(0) => \result_OBUF[27]_inst_i_30_n_0\,
      O(3) => p_18_in,
      O(2) => p_20_in,
      O(1) => p_22_in,
      O(0) => p_24_in,
      S(3) => \result_OBUF[27]_inst_i_31_n_0\,
      S(2) => \result_OBUF[27]_inst_i_32_n_0\,
      S(1) => \result_OBUF[27]_inst_i_33_n_0\,
      S(0) => \result_OBUF[27]_inst_i_34_n_0\
    );
\result_OBUF[27]_inst_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_6_in,
      I1 => \result_OBUF[31]_inst_i_18_n_0\,
      I2 => \result_OBUF[31]_inst_i_17_n_0\,
      I3 => \result_OBUF[31]_inst_i_16_n_0\,
      I4 => \result_OBUF[26]_inst_i_9_n_0\,
      O => \result_OBUF[27]_inst_i_15_n_0\
    );
\result_OBUF[27]_inst_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02AAFFFF02AA0000"
    )
        port map (
      I0 => \result_OBUF[24]_inst_i_7_n_0\,
      I1 => p_8_in,
      I2 => p_10_in,
      I3 => \result_OBUF[24]_inst_i_5_n_0\,
      I4 => \result_OBUF[26]_inst_i_10_n_0\,
      I5 => \result_OBUF[26]_inst_i_8_n_0\,
      O => \result_OBUF[27]_inst_i_16_n_0\
    );
\result_OBUF[27]_inst_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \result_OBUF[30]_inst_i_4_n_4\,
      I1 => p_13_in,
      I2 => result_OBUF(30),
      I3 => p_4_in,
      I4 => p_2_in,
      I5 => \result_OBUF[30]_inst_i_2_n_7\,
      O => \result_OBUF[27]_inst_i_17_n_0\
    );
\result_OBUF[27]_inst_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555511110010"
    )
        port map (
      I0 => p_12_in,
      I1 => p_16_in,
      I2 => p_22_in,
      I3 => p_20_in,
      I4 => p_18_in,
      I5 => p_14_in,
      O => \result_OBUF[27]_inst_i_18_n_0\
    );
\result_OBUF[27]_inst_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => inputA_IBUF(31),
      I1 => inputB_IBUF(31),
      I2 => inputB_IBUF(7),
      I3 => \result_OBUF[31]_inst_i_3_n_0\,
      I4 => inputA_IBUF(7),
      O => \result_OBUF[27]_inst_i_19_n_0\
    );
\result_OBUF[27]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04545555FBABAAAA"
    )
        port map (
      I0 => \result_OBUF[26]_inst_i_2_n_0\,
      I1 => \result_OBUF[26]_inst_i_3_n_0\,
      I2 => \result_OBUF[26]_inst_i_4_n_0\,
      I3 => \result_OBUF[26]_inst_i_5_n_0\,
      I4 => \result_OBUF[27]_inst_i_4_n_0\,
      I5 => \result_OBUF[27]_inst_i_7_n_0\,
      O => \result_OBUF[27]_inst_i_2_n_0\
    );
\result_OBUF[27]_inst_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => inputA_IBUF(31),
      I1 => inputB_IBUF(31),
      I2 => inputB_IBUF(6),
      I3 => \result_OBUF[31]_inst_i_3_n_0\,
      I4 => inputA_IBUF(6),
      O => \result_OBUF[27]_inst_i_20_n_0\
    );
\result_OBUF[27]_inst_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => inputA_IBUF(31),
      I1 => inputB_IBUF(31),
      I2 => inputB_IBUF(5),
      I3 => \result_OBUF[31]_inst_i_3_n_0\,
      I4 => inputA_IBUF(5),
      O => \result_OBUF[27]_inst_i_21_n_0\
    );
\result_OBUF[27]_inst_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => inputA_IBUF(31),
      I1 => inputB_IBUF(31),
      I2 => inputB_IBUF(4),
      I3 => \result_OBUF[31]_inst_i_3_n_0\,
      I4 => inputA_IBUF(4),
      O => \result_OBUF[27]_inst_i_22_n_0\
    );
\result_OBUF[27]_inst_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => inputB_IBUF(31),
      I1 => inputA_IBUF(31),
      I2 => inputA_IBUF(7),
      I3 => inputB_IBUF(7),
      O => \result_OBUF[27]_inst_i_23_n_0\
    );
\result_OBUF[27]_inst_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => inputB_IBUF(31),
      I1 => inputA_IBUF(31),
      I2 => inputA_IBUF(6),
      I3 => inputB_IBUF(6),
      O => \result_OBUF[27]_inst_i_24_n_0\
    );
\result_OBUF[27]_inst_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => inputB_IBUF(31),
      I1 => inputA_IBUF(31),
      I2 => inputA_IBUF(5),
      I3 => inputB_IBUF(5),
      O => \result_OBUF[27]_inst_i_25_n_0\
    );
\result_OBUF[27]_inst_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => inputB_IBUF(31),
      I1 => inputA_IBUF(31),
      I2 => inputA_IBUF(4),
      I3 => inputB_IBUF(4),
      O => \result_OBUF[27]_inst_i_26_n_0\
    );
\result_OBUF[27]_inst_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => inputA_IBUF(31),
      I1 => inputB_IBUF(31),
      I2 => inputB_IBUF(11),
      I3 => \result_OBUF[31]_inst_i_3_n_0\,
      I4 => inputA_IBUF(11),
      O => \result_OBUF[27]_inst_i_27_n_0\
    );
\result_OBUF[27]_inst_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => inputA_IBUF(31),
      I1 => inputB_IBUF(31),
      I2 => inputB_IBUF(10),
      I3 => \result_OBUF[31]_inst_i_3_n_0\,
      I4 => inputA_IBUF(10),
      O => \result_OBUF[27]_inst_i_28_n_0\
    );
\result_OBUF[27]_inst_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => inputA_IBUF(31),
      I1 => inputB_IBUF(31),
      I2 => inputB_IBUF(9),
      I3 => \result_OBUF[31]_inst_i_3_n_0\,
      I4 => inputA_IBUF(9),
      O => \result_OBUF[27]_inst_i_29_n_0\
    );
\result_OBUF[27]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5A52D2D0F002D2D"
    )
        port map (
      I0 => \result_OBUF[27]_inst_i_4_n_0\,
      I1 => \result_OBUF[26]_inst_i_3_n_0\,
      I2 => \result_OBUF[27]_inst_i_8_n_0\,
      I3 => p_40_in,
      I4 => \result_OBUF[26]_inst_i_4_n_0\,
      I5 => \result_OBUF[26]_inst_i_5_n_0\,
      O => \result_OBUF[27]_inst_i_3_n_0\
    );
\result_OBUF[27]_inst_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => inputA_IBUF(31),
      I1 => inputB_IBUF(31),
      I2 => inputB_IBUF(8),
      I3 => \result_OBUF[31]_inst_i_3_n_0\,
      I4 => inputA_IBUF(8),
      O => \result_OBUF[27]_inst_i_30_n_0\
    );
\result_OBUF[27]_inst_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => inputB_IBUF(31),
      I1 => inputA_IBUF(31),
      I2 => inputA_IBUF(11),
      I3 => inputB_IBUF(11),
      O => \result_OBUF[27]_inst_i_31_n_0\
    );
\result_OBUF[27]_inst_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => inputB_IBUF(31),
      I1 => inputA_IBUF(31),
      I2 => inputA_IBUF(10),
      I3 => inputB_IBUF(10),
      O => \result_OBUF[27]_inst_i_32_n_0\
    );
\result_OBUF[27]_inst_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => inputB_IBUF(31),
      I1 => inputA_IBUF(31),
      I2 => inputA_IBUF(9),
      I3 => inputB_IBUF(9),
      O => \result_OBUF[27]_inst_i_33_n_0\
    );
\result_OBUF[27]_inst_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => inputB_IBUF(31),
      I1 => inputA_IBUF(31),
      I2 => inputA_IBUF(8),
      I3 => inputB_IBUF(8),
      O => \result_OBUF[27]_inst_i_34_n_0\
    );
\result_OBUF[27]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"033303330333A333"
    )
        port map (
      I0 => p_40_in,
      I1 => \result_OBUF[27]_inst_i_9_n_0\,
      I2 => \result_OBUF[31]_inst_i_4_n_0\,
      I3 => \result_OBUF[31]_inst_i_5_n_0\,
      I4 => \result_OBUF[26]_inst_i_5_n_0\,
      I5 => \result_OBUF[31]_inst_i_6_n_0\,
      O => \result_OBUF[27]_inst_i_4_n_0\
    );
\result_OBUF[27]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDDFFFF000F"
    )
        port map (
      I0 => \result_OBUF[27]_inst_i_10_n_0\,
      I1 => \result_OBUF[27]_inst_i_11_n_0\,
      I2 => p_26_in,
      I3 => \result_OBUF[27]_inst_i_13_n_0\,
      I4 => p_24_in,
      I5 => \result_OBUF[27]_inst_i_15_n_0\,
      O => \result_OBUF[27]_inst_i_5_n_0\
    );
\result_OBUF[27]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFEFEFE0E0E0"
    )
        port map (
      I0 => p_36_in,
      I1 => p_38_in,
      I2 => \result_OBUF[26]_inst_i_4_n_0\,
      I3 => \result_OBUF[27]_inst_i_15_n_0\,
      I4 => \result_OBUF[27]_inst_i_16_n_0\,
      I5 => \result_OBUF[24]_inst_i_2_n_0\,
      O => \result_OBUF[27]_inst_i_6_n_0\
    );
\result_OBUF[27]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFEFFF"
    )
        port map (
      I0 => \result_OBUF[26]_inst_i_5_n_0\,
      I1 => \result_OBUF[31]_inst_i_6_n_0\,
      I2 => \result_OBUF[31]_inst_i_5_n_0\,
      I3 => \result_OBUF[31]_inst_i_4_n_0\,
      I4 => p_40_in,
      I5 => \result_OBUF[26]_inst_i_10_n_0\,
      O => \result_OBUF[27]_inst_i_7_n_0\
    );
\result_OBUF[27]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFDFFFD"
    )
        port map (
      I0 => \result_OBUF[31]_inst_i_4_n_0\,
      I1 => \result_OBUF[26]_inst_i_9_n_0\,
      I2 => p_26_in,
      I3 => p_24_in,
      I4 => \result_OBUF[31]_inst_i_17_n_0\,
      I5 => \result_OBUF[26]_inst_i_10_n_0\,
      O => \result_OBUF[27]_inst_i_8_n_0\
    );
\result_OBUF[27]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33313330"
    )
        port map (
      I0 => \result_OBUF[31]_inst_i_16_n_0\,
      I1 => \result_OBUF[31]_inst_i_17_n_0\,
      I2 => \result_OBUF[31]_inst_i_18_n_0\,
      I3 => p_6_in,
      I4 => \result_OBUF[26]_inst_i_9_n_0\,
      O => \result_OBUF[27]_inst_i_9_n_0\
    );
\result_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(28),
      O => result(28)
    );
\result_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(28),
      O => result(29)
    );
\result_OBUF[29]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_OBUF[31]_inst_i_2_n_0\,
      I1 => result_OBUF(30),
      O => result_OBUF(28)
    );
\result_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(2),
      O => result(2)
    );
\result_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E0E1F0E"
    )
        port map (
      I0 => \result_OBUF[22]_inst_i_2_n_0\,
      I1 => \result_OBUF[22]_inst_i_3_n_0\,
      I2 => \result_OBUF[2]_inst_i_2_n_0\,
      I3 => plusOp(2),
      I4 => \result_OBUF[22]_inst_i_6_n_0\,
      O => result_OBUF(2)
    );
\result_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFB8"
    )
        port map (
      I0 => \result_OBUF[2]_inst_i_3_n_0\,
      I1 => \result_OBUF[27]_inst_i_5_n_0\,
      I2 => \result_OBUF[3]_inst_i_4_n_0\,
      I3 => \result_OBUF[23]_inst_i_12_n_0\,
      I4 => \result_OBUF[2]_inst_i_4_n_0\,
      I5 => \result_OBUF[2]_inst_i_5_n_0\,
      O => \result_OBUF[2]_inst_i_2_n_0\
    );
\result_OBUF[2]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F7FFFFFD"
    )
        port map (
      I0 => \result_OBUF[27]_inst_i_4_n_0\,
      I1 => \result_OBUF[27]_inst_i_3_n_0\,
      I2 => \result_OBUF[6]_inst_i_5_n_0\,
      I3 => \result_OBUF[27]_inst_i_6_n_0\,
      I4 => \result_OBUF[27]_inst_i_5_n_0\,
      I5 => \result_OBUF[23]_inst_i_12_n_0\,
      O => \result_OBUF[2]_inst_i_3_n_0\
    );
\result_OBUF[2]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => result_OBUF(30),
      I1 => \result_OBUF[27]_inst_i_2_n_0\,
      I2 => p_34_in,
      I3 => \result_OBUF[27]_inst_i_3_n_0\,
      O => \result_OBUF[2]_inst_i_4_n_0\
    );
\result_OBUF[2]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040444000"
    )
        port map (
      I0 => result_OBUF(30),
      I1 => p_13_in,
      I2 => \result_OBUF[30]_inst_i_4_n_5\,
      I3 => \result_OBUF[27]_inst_i_2_n_0\,
      I4 => p_36_in,
      I5 => \result_OBUF[27]_inst_i_3_n_0\,
      O => \result_OBUF[2]_inst_i_5_n_0\
    );
\result_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(30),
      O => result(30)
    );
\result_OBUF[30]_inst_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_OBUF[30]_inst_i_2_n_0\,
      CO(3 downto 0) => \NLW_result_OBUF[30]_inst_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_result_OBUF[30]_inst_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => result_OBUF(30),
      S(3 downto 1) => B"000",
      S(0) => \result_OBUF[30]_inst_i_3_n_0\
    );
\result_OBUF[30]_inst_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => inputB_IBUF(31),
      I1 => inputA_IBUF(31),
      I2 => inputA_IBUF(21),
      I3 => inputB_IBUF(21),
      O => \result_OBUF[30]_inst_i_10_n_0\
    );
\result_OBUF[30]_inst_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => inputB_IBUF(31),
      I1 => inputA_IBUF(31),
      I2 => inputA_IBUF(20),
      I3 => inputB_IBUF(20),
      O => \result_OBUF[30]_inst_i_11_n_0\
    );
\result_OBUF[30]_inst_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_OBUF[27]_inst_i_14_n_0\,
      CO(3) => \result_OBUF[30]_inst_i_12_n_0\,
      CO(2) => \result_OBUF[30]_inst_i_12_n_1\,
      CO(1) => \result_OBUF[30]_inst_i_12_n_2\,
      CO(0) => \result_OBUF[30]_inst_i_12_n_3\,
      CYINIT => '0',
      DI(3) => \result_OBUF[30]_inst_i_21_n_0\,
      DI(2) => \result_OBUF[30]_inst_i_22_n_0\,
      DI(1) => \result_OBUF[30]_inst_i_23_n_0\,
      DI(0) => \result_OBUF[30]_inst_i_24_n_0\,
      O(3) => p_10_in,
      O(2) => p_12_in,
      O(1) => p_14_in,
      O(0) => p_16_in,
      S(3) => \result_OBUF[30]_inst_i_25_n_0\,
      S(2) => \result_OBUF[30]_inst_i_26_n_0\,
      S(1) => \result_OBUF[30]_inst_i_27_n_0\,
      S(0) => \result_OBUF[30]_inst_i_28_n_0\
    );
\result_OBUF[30]_inst_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => inputA_IBUF(31),
      I1 => inputB_IBUF(31),
      I2 => inputB_IBUF(19),
      I3 => \result_OBUF[31]_inst_i_3_n_0\,
      I4 => inputA_IBUF(19),
      O => \result_OBUF[30]_inst_i_13_n_0\
    );
\result_OBUF[30]_inst_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => inputA_IBUF(31),
      I1 => inputB_IBUF(31),
      I2 => inputB_IBUF(18),
      I3 => \result_OBUF[31]_inst_i_3_n_0\,
      I4 => inputA_IBUF(18),
      O => \result_OBUF[30]_inst_i_14_n_0\
    );
\result_OBUF[30]_inst_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => inputA_IBUF(31),
      I1 => inputB_IBUF(31),
      I2 => inputB_IBUF(17),
      I3 => \result_OBUF[31]_inst_i_3_n_0\,
      I4 => inputA_IBUF(17),
      O => \result_OBUF[30]_inst_i_15_n_0\
    );
\result_OBUF[30]_inst_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => inputA_IBUF(31),
      I1 => inputB_IBUF(31),
      I2 => inputB_IBUF(16),
      I3 => \result_OBUF[31]_inst_i_3_n_0\,
      I4 => inputA_IBUF(16),
      O => \result_OBUF[30]_inst_i_16_n_0\
    );
\result_OBUF[30]_inst_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => inputB_IBUF(31),
      I1 => inputA_IBUF(31),
      I2 => inputA_IBUF(19),
      I3 => inputB_IBUF(19),
      O => \result_OBUF[30]_inst_i_17_n_0\
    );
\result_OBUF[30]_inst_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => inputB_IBUF(31),
      I1 => inputA_IBUF(31),
      I2 => inputA_IBUF(18),
      I3 => inputB_IBUF(18),
      O => \result_OBUF[30]_inst_i_18_n_0\
    );
\result_OBUF[30]_inst_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => inputB_IBUF(31),
      I1 => inputA_IBUF(31),
      I2 => inputA_IBUF(17),
      I3 => inputB_IBUF(17),
      O => \result_OBUF[30]_inst_i_19_n_0\
    );
\result_OBUF[30]_inst_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_OBUF[30]_inst_i_4_n_0\,
      CO(3) => \result_OBUF[30]_inst_i_2_n_0\,
      CO(2) => \result_OBUF[30]_inst_i_2_n_1\,
      CO(1) => \result_OBUF[30]_inst_i_2_n_2\,
      CO(0) => \result_OBUF[30]_inst_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '1',
      DI(2) => \result_OBUF[30]_inst_i_5_n_0\,
      DI(1) => \result_OBUF[30]_inst_i_6_n_0\,
      DI(0) => \result_OBUF[30]_inst_i_7_n_0\,
      O(3) => p_13_in,
      O(2) => p_2_in,
      O(1) => p_4_in,
      O(0) => \result_OBUF[30]_inst_i_2_n_7\,
      S(3) => \result_OBUF[30]_inst_i_8_n_0\,
      S(2) => \result_OBUF[30]_inst_i_9_n_0\,
      S(1) => \result_OBUF[30]_inst_i_10_n_0\,
      S(0) => \result_OBUF[30]_inst_i_11_n_0\
    );
\result_OBUF[30]_inst_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => inputB_IBUF(31),
      I1 => inputA_IBUF(31),
      I2 => inputA_IBUF(16),
      I3 => inputB_IBUF(16),
      O => \result_OBUF[30]_inst_i_20_n_0\
    );
\result_OBUF[30]_inst_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => inputA_IBUF(31),
      I1 => inputB_IBUF(31),
      I2 => inputB_IBUF(15),
      I3 => \result_OBUF[31]_inst_i_3_n_0\,
      I4 => inputA_IBUF(15),
      O => \result_OBUF[30]_inst_i_21_n_0\
    );
\result_OBUF[30]_inst_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => inputA_IBUF(31),
      I1 => inputB_IBUF(31),
      I2 => inputB_IBUF(14),
      I3 => \result_OBUF[31]_inst_i_3_n_0\,
      I4 => inputA_IBUF(14),
      O => \result_OBUF[30]_inst_i_22_n_0\
    );
\result_OBUF[30]_inst_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => inputA_IBUF(31),
      I1 => inputB_IBUF(31),
      I2 => inputB_IBUF(13),
      I3 => \result_OBUF[31]_inst_i_3_n_0\,
      I4 => inputA_IBUF(13),
      O => \result_OBUF[30]_inst_i_23_n_0\
    );
\result_OBUF[30]_inst_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => inputA_IBUF(31),
      I1 => inputB_IBUF(31),
      I2 => inputB_IBUF(12),
      I3 => \result_OBUF[31]_inst_i_3_n_0\,
      I4 => inputA_IBUF(12),
      O => \result_OBUF[30]_inst_i_24_n_0\
    );
\result_OBUF[30]_inst_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => inputB_IBUF(31),
      I1 => inputA_IBUF(31),
      I2 => inputA_IBUF(15),
      I3 => inputB_IBUF(15),
      O => \result_OBUF[30]_inst_i_25_n_0\
    );
\result_OBUF[30]_inst_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => inputB_IBUF(31),
      I1 => inputA_IBUF(31),
      I2 => inputA_IBUF(14),
      I3 => inputB_IBUF(14),
      O => \result_OBUF[30]_inst_i_26_n_0\
    );
\result_OBUF[30]_inst_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => inputB_IBUF(31),
      I1 => inputA_IBUF(31),
      I2 => inputA_IBUF(13),
      I3 => inputB_IBUF(13),
      O => \result_OBUF[30]_inst_i_27_n_0\
    );
\result_OBUF[30]_inst_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => inputB_IBUF(31),
      I1 => inputA_IBUF(31),
      I2 => inputA_IBUF(12),
      I3 => inputB_IBUF(12),
      O => \result_OBUF[30]_inst_i_28_n_0\
    );
\result_OBUF[30]_inst_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => inputA_IBUF(31),
      I1 => inputB_IBUF(31),
      O => \result_OBUF[30]_inst_i_3_n_0\
    );
\result_OBUF[30]_inst_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_OBUF[30]_inst_i_12_n_0\,
      CO(3) => \result_OBUF[30]_inst_i_4_n_0\,
      CO(2) => \result_OBUF[30]_inst_i_4_n_1\,
      CO(1) => \result_OBUF[30]_inst_i_4_n_2\,
      CO(0) => \result_OBUF[30]_inst_i_4_n_3\,
      CYINIT => '0',
      DI(3) => \result_OBUF[30]_inst_i_13_n_0\,
      DI(2) => \result_OBUF[30]_inst_i_14_n_0\,
      DI(1) => \result_OBUF[30]_inst_i_15_n_0\,
      DI(0) => \result_OBUF[30]_inst_i_16_n_0\,
      O(3) => \result_OBUF[30]_inst_i_4_n_4\,
      O(2) => \result_OBUF[30]_inst_i_4_n_5\,
      O(1) => p_6_in,
      O(0) => p_8_in,
      S(3) => \result_OBUF[30]_inst_i_17_n_0\,
      S(2) => \result_OBUF[30]_inst_i_18_n_0\,
      S(1) => \result_OBUF[30]_inst_i_19_n_0\,
      S(0) => \result_OBUF[30]_inst_i_20_n_0\
    );
\result_OBUF[30]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => inputA_IBUF(31),
      I1 => inputB_IBUF(31),
      I2 => inputB_IBUF(22),
      I3 => \result_OBUF[31]_inst_i_3_n_0\,
      I4 => inputA_IBUF(22),
      O => \result_OBUF[30]_inst_i_5_n_0\
    );
\result_OBUF[30]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => inputA_IBUF(31),
      I1 => inputB_IBUF(31),
      I2 => inputB_IBUF(21),
      I3 => \result_OBUF[31]_inst_i_3_n_0\,
      I4 => inputA_IBUF(21),
      O => \result_OBUF[30]_inst_i_6_n_0\
    );
\result_OBUF[30]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => inputA_IBUF(31),
      I1 => inputB_IBUF(31),
      I2 => inputB_IBUF(20),
      I3 => \result_OBUF[31]_inst_i_3_n_0\,
      I4 => inputA_IBUF(20),
      O => \result_OBUF[30]_inst_i_7_n_0\
    );
\result_OBUF[30]_inst_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => inputA_IBUF(31),
      I1 => inputB_IBUF(31),
      O => \result_OBUF[30]_inst_i_8_n_0\
    );
\result_OBUF[30]_inst_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => inputB_IBUF(31),
      I1 => inputA_IBUF(31),
      I2 => inputA_IBUF(22),
      I3 => inputB_IBUF(22),
      O => \result_OBUF[30]_inst_i_9_n_0\
    );
\result_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(31),
      O => result(31)
    );
\result_OBUF[31]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88A0"
    )
        port map (
      I0 => \result_OBUF[31]_inst_i_2_n_0\,
      I1 => inputB_IBUF(31),
      I2 => inputA_IBUF(31),
      I3 => \result_OBUF[31]_inst_i_3_n_0\,
      O => result_OBUF(31)
    );
\result_OBUF[31]_inst_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => inputB_IBUF(19),
      I1 => inputA_IBUF(19),
      I2 => inputB_IBUF(18),
      I3 => inputA_IBUF(18),
      O => \result_OBUF[31]_inst_i_10_n_0\
    );
\result_OBUF[31]_inst_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => inputB_IBUF(17),
      I1 => inputA_IBUF(17),
      I2 => inputB_IBUF(16),
      I3 => inputA_IBUF(16),
      O => \result_OBUF[31]_inst_i_11_n_0\
    );
\result_OBUF[31]_inst_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => inputA_IBUF(22),
      I1 => inputB_IBUF(22),
      O => \result_OBUF[31]_inst_i_12_n_0\
    );
\result_OBUF[31]_inst_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => inputA_IBUF(21),
      I1 => inputB_IBUF(21),
      I2 => inputA_IBUF(20),
      I3 => inputB_IBUF(20),
      O => \result_OBUF[31]_inst_i_13_n_0\
    );
\result_OBUF[31]_inst_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => inputA_IBUF(19),
      I1 => inputB_IBUF(19),
      I2 => inputA_IBUF(18),
      I3 => inputB_IBUF(18),
      O => \result_OBUF[31]_inst_i_14_n_0\
    );
\result_OBUF[31]_inst_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => inputA_IBUF(17),
      I1 => inputB_IBUF(17),
      I2 => inputA_IBUF(16),
      I3 => inputB_IBUF(16),
      O => \result_OBUF[31]_inst_i_15_n_0\
    );
\result_OBUF[31]_inst_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_10_in,
      I1 => p_8_in,
      I2 => p_14_in,
      I3 => p_12_in,
      O => \result_OBUF[31]_inst_i_16_n_0\
    );
\result_OBUF[31]_inst_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_13_in,
      I1 => result_OBUF(30),
      I2 => p_4_in,
      I3 => p_2_in,
      O => \result_OBUF[31]_inst_i_17_n_0\
    );
\result_OBUF[31]_inst_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \result_OBUF[30]_inst_i_4_n_4\,
      I1 => \result_OBUF[30]_inst_i_4_n_5\,
      I2 => \result_OBUF[30]_inst_i_2_n_7\,
      O => \result_OBUF[31]_inst_i_18_n_0\
    );
\result_OBUF[31]_inst_i_19\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \result_OBUF[31]_inst_i_19_n_0\,
      CO(2) => \result_OBUF[31]_inst_i_19_n_1\,
      CO(1) => \result_OBUF[31]_inst_i_19_n_2\,
      CO(0) => \result_OBUF[31]_inst_i_19_n_3\,
      CYINIT => '0',
      DI(3) => \result_OBUF[31]_inst_i_28_n_0\,
      DI(2) => \result_OBUF[31]_inst_i_29_n_0\,
      DI(1) => \result_OBUF[31]_inst_i_30_n_0\,
      DI(0) => \result_OBUF[31]_inst_i_31_n_0\,
      O(3 downto 0) => \NLW_result_OBUF[31]_inst_i_19_O_UNCONNECTED\(3 downto 0),
      S(3) => \result_OBUF[31]_inst_i_32_n_0\,
      S(2) => \result_OBUF[31]_inst_i_33_n_0\,
      S(1) => \result_OBUF[31]_inst_i_34_n_0\,
      S(0) => \result_OBUF[31]_inst_i_35_n_0\
    );
\result_OBUF[31]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFBF"
    )
        port map (
      I0 => p_40_in,
      I1 => \result_OBUF[31]_inst_i_4_n_0\,
      I2 => \result_OBUF[31]_inst_i_5_n_0\,
      I3 => \result_OBUF[31]_inst_i_6_n_0\,
      I4 => p_36_in,
      I5 => p_38_in,
      O => \result_OBUF[31]_inst_i_2_n_0\
    );
\result_OBUF[31]_inst_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => inputB_IBUF(15),
      I1 => inputA_IBUF(15),
      I2 => inputB_IBUF(14),
      I3 => inputA_IBUF(14),
      O => \result_OBUF[31]_inst_i_20_n_0\
    );
\result_OBUF[31]_inst_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => inputB_IBUF(13),
      I1 => inputA_IBUF(13),
      I2 => inputB_IBUF(12),
      I3 => inputA_IBUF(12),
      O => \result_OBUF[31]_inst_i_21_n_0\
    );
\result_OBUF[31]_inst_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => inputB_IBUF(11),
      I1 => inputA_IBUF(11),
      I2 => inputB_IBUF(10),
      I3 => inputA_IBUF(10),
      O => \result_OBUF[31]_inst_i_22_n_0\
    );
\result_OBUF[31]_inst_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => inputB_IBUF(9),
      I1 => inputA_IBUF(9),
      I2 => inputB_IBUF(8),
      I3 => inputA_IBUF(8),
      O => \result_OBUF[31]_inst_i_23_n_0\
    );
\result_OBUF[31]_inst_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => inputA_IBUF(15),
      I1 => inputB_IBUF(15),
      I2 => inputA_IBUF(14),
      I3 => inputB_IBUF(14),
      O => \result_OBUF[31]_inst_i_24_n_0\
    );
\result_OBUF[31]_inst_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => inputA_IBUF(13),
      I1 => inputB_IBUF(13),
      I2 => inputA_IBUF(12),
      I3 => inputB_IBUF(12),
      O => \result_OBUF[31]_inst_i_25_n_0\
    );
\result_OBUF[31]_inst_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => inputA_IBUF(11),
      I1 => inputB_IBUF(11),
      I2 => inputA_IBUF(10),
      I3 => inputB_IBUF(10),
      O => \result_OBUF[31]_inst_i_26_n_0\
    );
\result_OBUF[31]_inst_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => inputA_IBUF(9),
      I1 => inputB_IBUF(9),
      I2 => inputA_IBUF(8),
      I3 => inputB_IBUF(8),
      O => \result_OBUF[31]_inst_i_27_n_0\
    );
\result_OBUF[31]_inst_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => inputB_IBUF(7),
      I1 => inputA_IBUF(7),
      I2 => inputB_IBUF(6),
      I3 => inputA_IBUF(6),
      O => \result_OBUF[31]_inst_i_28_n_0\
    );
\result_OBUF[31]_inst_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => inputB_IBUF(5),
      I1 => inputA_IBUF(5),
      I2 => inputB_IBUF(4),
      I3 => inputA_IBUF(4),
      O => \result_OBUF[31]_inst_i_29_n_0\
    );
\result_OBUF[31]_inst_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_OBUF[31]_inst_i_7_n_0\,
      CO(3) => \result_OBUF[31]_inst_i_3_n_0\,
      CO(2) => \result_OBUF[31]_inst_i_3_n_1\,
      CO(1) => \result_OBUF[31]_inst_i_3_n_2\,
      CO(0) => \result_OBUF[31]_inst_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \result_OBUF[31]_inst_i_8_n_0\,
      DI(2) => \result_OBUF[31]_inst_i_9_n_0\,
      DI(1) => \result_OBUF[31]_inst_i_10_n_0\,
      DI(0) => \result_OBUF[31]_inst_i_11_n_0\,
      O(3 downto 0) => \NLW_result_OBUF[31]_inst_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \result_OBUF[31]_inst_i_12_n_0\,
      S(2) => \result_OBUF[31]_inst_i_13_n_0\,
      S(1) => \result_OBUF[31]_inst_i_14_n_0\,
      S(0) => \result_OBUF[31]_inst_i_15_n_0\
    );
\result_OBUF[31]_inst_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => inputB_IBUF(3),
      I1 => inputA_IBUF(3),
      I2 => inputB_IBUF(2),
      I3 => inputA_IBUF(2),
      O => \result_OBUF[31]_inst_i_30_n_0\
    );
\result_OBUF[31]_inst_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => inputB_IBUF(1),
      I1 => inputA_IBUF(1),
      I2 => inputB_IBUF(0),
      I3 => inputA_IBUF(0),
      O => \result_OBUF[31]_inst_i_31_n_0\
    );
\result_OBUF[31]_inst_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => inputA_IBUF(7),
      I1 => inputB_IBUF(7),
      I2 => inputA_IBUF(6),
      I3 => inputB_IBUF(6),
      O => \result_OBUF[31]_inst_i_32_n_0\
    );
\result_OBUF[31]_inst_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => inputA_IBUF(5),
      I1 => inputB_IBUF(5),
      I2 => inputA_IBUF(4),
      I3 => inputB_IBUF(4),
      O => \result_OBUF[31]_inst_i_33_n_0\
    );
\result_OBUF[31]_inst_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => inputA_IBUF(3),
      I1 => inputB_IBUF(3),
      I2 => inputA_IBUF(2),
      I3 => inputB_IBUF(2),
      O => \result_OBUF[31]_inst_i_34_n_0\
    );
\result_OBUF[31]_inst_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => inputA_IBUF(1),
      I1 => inputB_IBUF(1),
      I2 => inputA_IBUF(0),
      I3 => inputB_IBUF(0),
      O => \result_OBUF[31]_inst_i_35_n_0\
    );
\result_OBUF[31]_inst_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_28_in,
      I1 => p_30_in,
      O => \result_OBUF[31]_inst_i_4_n_0\
    );
\result_OBUF[31]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \result_OBUF[26]_inst_i_9_n_0\,
      I1 => \result_OBUF[31]_inst_i_16_n_0\,
      I2 => \result_OBUF[31]_inst_i_17_n_0\,
      I3 => \result_OBUF[31]_inst_i_18_n_0\,
      I4 => p_6_in,
      I5 => \result_OBUF[26]_inst_i_11_n_0\,
      O => \result_OBUF[31]_inst_i_5_n_0\
    );
\result_OBUF[31]_inst_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_32_in,
      I1 => p_34_in,
      O => \result_OBUF[31]_inst_i_6_n_0\
    );
\result_OBUF[31]_inst_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_OBUF[31]_inst_i_19_n_0\,
      CO(3) => \result_OBUF[31]_inst_i_7_n_0\,
      CO(2) => \result_OBUF[31]_inst_i_7_n_1\,
      CO(1) => \result_OBUF[31]_inst_i_7_n_2\,
      CO(0) => \result_OBUF[31]_inst_i_7_n_3\,
      CYINIT => '0',
      DI(3) => \result_OBUF[31]_inst_i_20_n_0\,
      DI(2) => \result_OBUF[31]_inst_i_21_n_0\,
      DI(1) => \result_OBUF[31]_inst_i_22_n_0\,
      DI(0) => \result_OBUF[31]_inst_i_23_n_0\,
      O(3 downto 0) => \NLW_result_OBUF[31]_inst_i_7_O_UNCONNECTED\(3 downto 0),
      S(3) => \result_OBUF[31]_inst_i_24_n_0\,
      S(2) => \result_OBUF[31]_inst_i_25_n_0\,
      S(1) => \result_OBUF[31]_inst_i_26_n_0\,
      S(0) => \result_OBUF[31]_inst_i_27_n_0\
    );
\result_OBUF[31]_inst_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => inputB_IBUF(22),
      I1 => inputA_IBUF(22),
      O => \result_OBUF[31]_inst_i_8_n_0\
    );
\result_OBUF[31]_inst_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => inputB_IBUF(21),
      I1 => inputA_IBUF(21),
      I2 => inputB_IBUF(20),
      I3 => inputA_IBUF(20),
      O => \result_OBUF[31]_inst_i_9_n_0\
    );
\result_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(3),
      O => result(3)
    );
\result_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0E0F1E0"
    )
        port map (
      I0 => \result_OBUF[22]_inst_i_2_n_0\,
      I1 => \result_OBUF[22]_inst_i_3_n_0\,
      I2 => \result_OBUF[3]_inst_i_2_n_0\,
      I3 => plusOp(3),
      I4 => \result_OBUF[22]_inst_i_6_n_0\,
      O => result_OBUF(3)
    );
\result_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAABABF"
    )
        port map (
      I0 => \result_OBUF[3]_inst_i_3_n_0\,
      I1 => \result_OBUF[3]_inst_i_4_n_0\,
      I2 => \result_OBUF[27]_inst_i_5_n_0\,
      I3 => \result_OBUF[4]_inst_i_4_n_0\,
      I4 => result_OBUF(30),
      I5 => p_13_in,
      O => \result_OBUF[3]_inst_i_2_n_0\
    );
\result_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000F0000000808"
    )
        port map (
      I0 => p_34_in,
      I1 => p_13_in,
      I2 => \result_OBUF[27]_inst_i_3_n_0\,
      I3 => p_32_in,
      I4 => \result_OBUF[27]_inst_i_2_n_0\,
      I5 => result_OBUF(30),
      O => \result_OBUF[3]_inst_i_3_n_0\
    );
\result_OBUF[3]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBF8FBF8FBF8FFFF"
    )
        port map (
      I0 => \result_OBUF[9]_inst_i_5_n_0\,
      I1 => \result_OBUF[23]_inst_i_20_n_0\,
      I2 => \result_OBUF[23]_inst_i_22_n_0\,
      I3 => \result_OBUF[5]_inst_i_5_n_0\,
      I4 => result_OBUF(26),
      I5 => \result_OBUF[23]_inst_i_12_n_0\,
      O => \result_OBUF[3]_inst_i_4_n_0\
    );
\result_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(4),
      O => result(4)
    );
\result_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0E0F1E0"
    )
        port map (
      I0 => \result_OBUF[22]_inst_i_2_n_0\,
      I1 => \result_OBUF[22]_inst_i_3_n_0\,
      I2 => \result_OBUF[4]_inst_i_2_n_0\,
      I3 => plusOp(4),
      I4 => \result_OBUF[22]_inst_i_6_n_0\,
      O => result_OBUF(4)
    );
\result_OBUF[4]_inst_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_OBUF[1]_inst_i_2_n_0\,
      O => \result_OBUF[4]_inst_i_10_n_0\
    );
\result_OBUF[4]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000047"
    )
        port map (
      I0 => \result_OBUF[4]_inst_i_4_n_0\,
      I1 => \result_OBUF[27]_inst_i_5_n_0\,
      I2 => \result_OBUF[5]_inst_i_3_n_0\,
      I3 => result_OBUF(30),
      I4 => p_13_in,
      I5 => \result_OBUF[4]_inst_i_5_n_0\,
      O => \result_OBUF[4]_inst_i_2_n_0\
    );
\result_OBUF[4]_inst_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \result_OBUF[4]_inst_i_3_n_0\,
      CO(2) => \result_OBUF[4]_inst_i_3_n_1\,
      CO(1) => \result_OBUF[4]_inst_i_3_n_2\,
      CO(0) => \result_OBUF[4]_inst_i_3_n_3\,
      CYINIT => fract_in,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(4 downto 1),
      S(3) => \result_OBUF[4]_inst_i_7_n_0\,
      S(2) => \result_OBUF[4]_inst_i_8_n_0\,
      S(1) => \result_OBUF[4]_inst_i_9_n_0\,
      S(0) => \result_OBUF[4]_inst_i_10_n_0\
    );
\result_OBUF[4]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBF8FBF8FBF8FFFF"
    )
        port map (
      I0 => \result_OBUF[10]_inst_i_5_n_0\,
      I1 => \result_OBUF[23]_inst_i_20_n_0\,
      I2 => \result_OBUF[23]_inst_i_22_n_0\,
      I3 => \result_OBUF[6]_inst_i_5_n_0\,
      I4 => result_OBUF(26),
      I5 => \result_OBUF[23]_inst_i_12_n_0\,
      O => \result_OBUF[4]_inst_i_4_n_0\
    );
\result_OBUF[4]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000004000400"
    )
        port map (
      I0 => \result_OBUF[27]_inst_i_3_n_0\,
      I1 => p_32_in,
      I2 => \result_OBUF[27]_inst_i_2_n_0\,
      I3 => p_13_in,
      I4 => \result_OBUF[5]_inst_i_4_n_0\,
      I5 => result_OBUF(30),
      O => \result_OBUF[4]_inst_i_5_n_0\
    );
\result_OBUF[4]_inst_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_OBUF[22]_inst_i_2_n_0\,
      O => fract_in
    );
\result_OBUF[4]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000047"
    )
        port map (
      I0 => \result_OBUF[4]_inst_i_4_n_0\,
      I1 => \result_OBUF[27]_inst_i_5_n_0\,
      I2 => \result_OBUF[5]_inst_i_3_n_0\,
      I3 => result_OBUF(30),
      I4 => p_13_in,
      I5 => \result_OBUF[4]_inst_i_5_n_0\,
      O => \result_OBUF[4]_inst_i_7_n_0\
    );
\result_OBUF[4]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAABABF"
    )
        port map (
      I0 => \result_OBUF[3]_inst_i_3_n_0\,
      I1 => \result_OBUF[3]_inst_i_4_n_0\,
      I2 => \result_OBUF[27]_inst_i_5_n_0\,
      I3 => \result_OBUF[4]_inst_i_4_n_0\,
      I4 => result_OBUF(30),
      I5 => p_13_in,
      O => \result_OBUF[4]_inst_i_8_n_0\
    );
\result_OBUF[4]_inst_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_OBUF[2]_inst_i_2_n_0\,
      O => \result_OBUF[4]_inst_i_9_n_0\
    );
\result_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(5),
      O => result(5)
    );
\result_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E0E1F0E"
    )
        port map (
      I0 => \result_OBUF[22]_inst_i_2_n_0\,
      I1 => \result_OBUF[22]_inst_i_3_n_0\,
      I2 => \result_OBUF[5]_inst_i_2_n_0\,
      I3 => plusOp(5),
      I4 => \result_OBUF[22]_inst_i_6_n_0\,
      O => result_OBUF(5)
    );
\result_OBUF[5]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FCFAFA00FC"
    )
        port map (
      I0 => \result_OBUF[5]_inst_i_3_n_0\,
      I1 => \result_OBUF[6]_inst_i_3_n_0\,
      I2 => \result_OBUF[23]_inst_i_12_n_0\,
      I3 => \result_OBUF[5]_inst_i_4_n_0\,
      I4 => \result_OBUF[27]_inst_i_5_n_0\,
      I5 => \result_OBUF[6]_inst_i_4_n_0\,
      O => \result_OBUF[5]_inst_i_2_n_0\
    );
\result_OBUF[5]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0FFFFFFFF"
    )
        port map (
      I0 => \result_OBUF[5]_inst_i_5_n_0\,
      I1 => \result_OBUF[5]_inst_i_6_n_0\,
      I2 => \result_OBUF[23]_inst_i_20_n_0\,
      I3 => \result_OBUF[23]_inst_i_22_n_0\,
      I4 => \result_OBUF[9]_inst_i_5_n_0\,
      I5 => \result_OBUF[22]_inst_i_20_n_0\,
      O => \result_OBUF[5]_inst_i_3_n_0\
    );
\result_OBUF[5]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5404"
    )
        port map (
      I0 => \result_OBUF[27]_inst_i_3_n_0\,
      I1 => p_30_in,
      I2 => \result_OBUF[27]_inst_i_2_n_0\,
      I3 => p_4_in,
      O => \result_OBUF[5]_inst_i_4_n_0\
    );
\result_OBUF[5]_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \result_OBUF[1]_inst_i_5_n_0\,
      I1 => p_40_in,
      O => \result_OBUF[5]_inst_i_5_n_0\
    );
\result_OBUF[5]_inst_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \result_OBUF[1]_inst_i_5_n_0\,
      I1 => p_32_in,
      O => \result_OBUF[5]_inst_i_6_n_0\
    );
\result_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(6),
      O => result(6)
    );
\result_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E0E1F0E"
    )
        port map (
      I0 => \result_OBUF[22]_inst_i_2_n_0\,
      I1 => \result_OBUF[22]_inst_i_3_n_0\,
      I2 => \result_OBUF[6]_inst_i_2_n_0\,
      I3 => plusOp(6),
      I4 => \result_OBUF[22]_inst_i_6_n_0\,
      O => result_OBUF(6)
    );
\result_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FCFAFA00FC"
    )
        port map (
      I0 => \result_OBUF[6]_inst_i_3_n_0\,
      I1 => \result_OBUF[7]_inst_i_3_n_0\,
      I2 => \result_OBUF[23]_inst_i_12_n_0\,
      I3 => \result_OBUF[6]_inst_i_4_n_0\,
      I4 => \result_OBUF[27]_inst_i_5_n_0\,
      I5 => \result_OBUF[7]_inst_i_4_n_0\,
      O => \result_OBUF[6]_inst_i_2_n_0\
    );
\result_OBUF[6]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0FFFFFFFF"
    )
        port map (
      I0 => \result_OBUF[6]_inst_i_5_n_0\,
      I1 => \result_OBUF[6]_inst_i_6_n_0\,
      I2 => \result_OBUF[23]_inst_i_20_n_0\,
      I3 => \result_OBUF[23]_inst_i_22_n_0\,
      I4 => \result_OBUF[10]_inst_i_5_n_0\,
      I5 => \result_OBUF[22]_inst_i_20_n_0\,
      O => \result_OBUF[6]_inst_i_3_n_0\
    );
\result_OBUF[6]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_28_in,
      I1 => \result_OBUF[27]_inst_i_2_n_0\,
      I2 => \result_OBUF[27]_inst_i_3_n_0\,
      O => \result_OBUF[6]_inst_i_4_n_0\
    );
\result_OBUF[6]_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \result_OBUF[1]_inst_i_5_n_0\,
      I1 => p_38_in,
      O => \result_OBUF[6]_inst_i_5_n_0\
    );
\result_OBUF[6]_inst_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \result_OBUF[1]_inst_i_5_n_0\,
      I1 => p_30_in,
      O => \result_OBUF[6]_inst_i_6_n_0\
    );
\result_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(7),
      O => result(7)
    );
\result_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E0E1F0E"
    )
        port map (
      I0 => \result_OBUF[22]_inst_i_2_n_0\,
      I1 => \result_OBUF[22]_inst_i_3_n_0\,
      I2 => \result_OBUF[7]_inst_i_2_n_0\,
      I3 => plusOp(7),
      I4 => \result_OBUF[22]_inst_i_6_n_0\,
      O => result_OBUF(7)
    );
\result_OBUF[7]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FCFAFA00FC"
    )
        port map (
      I0 => \result_OBUF[7]_inst_i_3_n_0\,
      I1 => \result_OBUF[8]_inst_i_4_n_0\,
      I2 => \result_OBUF[23]_inst_i_12_n_0\,
      I3 => \result_OBUF[7]_inst_i_4_n_0\,
      I4 => \result_OBUF[27]_inst_i_5_n_0\,
      I5 => \result_OBUF[8]_inst_i_5_n_0\,
      O => \result_OBUF[7]_inst_i_2_n_0\
    );
\result_OBUF[7]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FFFFFBF8F0000"
    )
        port map (
      I0 => \result_OBUF[9]_inst_i_5_n_0\,
      I1 => \result_OBUF[23]_inst_i_22_n_0\,
      I2 => \result_OBUF[22]_inst_i_20_n_0\,
      I3 => \result_OBUF[9]_inst_i_6_n_0\,
      I4 => \result_OBUF[23]_inst_i_20_n_0\,
      I5 => \result_OBUF[7]_inst_i_5_n_0\,
      O => \result_OBUF[7]_inst_i_3_n_0\
    );
\result_OBUF[7]_inst_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_26_in,
      I1 => \result_OBUF[27]_inst_i_2_n_0\,
      O => \result_OBUF[7]_inst_i_4_n_0\
    );
\result_OBUF[7]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBBBBBF8F88888F"
    )
        port map (
      I0 => \result_OBUF[5]_inst_i_5_n_0\,
      I1 => \result_OBUF[23]_inst_i_22_n_0\,
      I2 => \result_OBUF[23]_inst_i_12_n_0\,
      I3 => \result_OBUF[23]_inst_i_29_n_0\,
      I4 => \result_OBUF[27]_inst_i_3_n_0\,
      I5 => \result_OBUF[5]_inst_i_6_n_0\,
      O => \result_OBUF[7]_inst_i_5_n_0\
    );
\result_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(8),
      O => result(8)
    );
\result_OBUF[8]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E0E1F0E"
    )
        port map (
      I0 => \result_OBUF[22]_inst_i_2_n_0\,
      I1 => \result_OBUF[22]_inst_i_3_n_0\,
      I2 => \result_OBUF[8]_inst_i_2_n_0\,
      I3 => plusOp(8),
      I4 => \result_OBUF[22]_inst_i_6_n_0\,
      O => result_OBUF(8)
    );
\result_OBUF[8]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBBBBBF8F88888F"
    )
        port map (
      I0 => \result_OBUF[6]_inst_i_5_n_0\,
      I1 => \result_OBUF[23]_inst_i_22_n_0\,
      I2 => \result_OBUF[23]_inst_i_12_n_0\,
      I3 => \result_OBUF[23]_inst_i_29_n_0\,
      I4 => \result_OBUF[27]_inst_i_3_n_0\,
      I5 => \result_OBUF[6]_inst_i_6_n_0\,
      O => \result_OBUF[8]_inst_i_10_n_0\
    );
\result_OBUF[8]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FCFAFA00FC"
    )
        port map (
      I0 => \result_OBUF[8]_inst_i_4_n_0\,
      I1 => \result_OBUF[9]_inst_i_3_n_0\,
      I2 => \result_OBUF[23]_inst_i_12_n_0\,
      I3 => \result_OBUF[8]_inst_i_5_n_0\,
      I4 => \result_OBUF[27]_inst_i_5_n_0\,
      I5 => \result_OBUF[9]_inst_i_4_n_0\,
      O => \result_OBUF[8]_inst_i_2_n_0\
    );
\result_OBUF[8]_inst_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_OBUF[4]_inst_i_3_n_0\,
      CO(3) => \result_OBUF[8]_inst_i_3_n_0\,
      CO(2) => \result_OBUF[8]_inst_i_3_n_1\,
      CO(1) => \result_OBUF[8]_inst_i_3_n_2\,
      CO(0) => \result_OBUF[8]_inst_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(8 downto 5),
      S(3) => \result_OBUF[8]_inst_i_6_n_0\,
      S(2) => \result_OBUF[8]_inst_i_7_n_0\,
      S(1) => \result_OBUF[8]_inst_i_8_n_0\,
      S(0) => \result_OBUF[8]_inst_i_9_n_0\
    );
\result_OBUF[8]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FFFFFBF8F0000"
    )
        port map (
      I0 => \result_OBUF[10]_inst_i_5_n_0\,
      I1 => \result_OBUF[23]_inst_i_22_n_0\,
      I2 => \result_OBUF[22]_inst_i_20_n_0\,
      I3 => \result_OBUF[10]_inst_i_6_n_0\,
      I4 => \result_OBUF[23]_inst_i_20_n_0\,
      I5 => \result_OBUF[8]_inst_i_10_n_0\,
      O => \result_OBUF[8]_inst_i_4_n_0\
    );
\result_OBUF[8]_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_24_in,
      I1 => \result_OBUF[27]_inst_i_2_n_0\,
      O => \result_OBUF[8]_inst_i_5_n_0\
    );
\result_OBUF[8]_inst_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_OBUF[8]_inst_i_2_n_0\,
      O => \result_OBUF[8]_inst_i_6_n_0\
    );
\result_OBUF[8]_inst_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_OBUF[7]_inst_i_2_n_0\,
      O => \result_OBUF[8]_inst_i_7_n_0\
    );
\result_OBUF[8]_inst_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_OBUF[6]_inst_i_2_n_0\,
      O => \result_OBUF[8]_inst_i_8_n_0\
    );
\result_OBUF[8]_inst_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_OBUF[5]_inst_i_2_n_0\,
      O => \result_OBUF[8]_inst_i_9_n_0\
    );
\result_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(9),
      O => result(9)
    );
\result_OBUF[9]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E0E1F0E"
    )
        port map (
      I0 => \result_OBUF[22]_inst_i_2_n_0\,
      I1 => \result_OBUF[22]_inst_i_3_n_0\,
      I2 => \result_OBUF[9]_inst_i_2_n_0\,
      I3 => plusOp(9),
      I4 => \result_OBUF[22]_inst_i_6_n_0\,
      O => result_OBUF(9)
    );
\result_OBUF[9]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FCFAFA00FC"
    )
        port map (
      I0 => \result_OBUF[9]_inst_i_3_n_0\,
      I1 => \result_OBUF[10]_inst_i_3_n_0\,
      I2 => \result_OBUF[23]_inst_i_12_n_0\,
      I3 => \result_OBUF[9]_inst_i_4_n_0\,
      I4 => \result_OBUF[27]_inst_i_5_n_0\,
      I5 => \result_OBUF[10]_inst_i_4_n_0\,
      O => \result_OBUF[9]_inst_i_2_n_0\
    );
\result_OBUF[9]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB888BBBB"
    )
        port map (
      I0 => \result_OBUF[11]_inst_i_5_n_0\,
      I1 => \result_OBUF[23]_inst_i_20_n_0\,
      I2 => \result_OBUF[9]_inst_i_5_n_0\,
      I3 => \result_OBUF[23]_inst_i_22_n_0\,
      I4 => \result_OBUF[22]_inst_i_20_n_0\,
      I5 => \result_OBUF[9]_inst_i_6_n_0\,
      O => \result_OBUF[9]_inst_i_3_n_0\
    );
\result_OBUF[9]_inst_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_22_in,
      I1 => \result_OBUF[27]_inst_i_2_n_0\,
      O => \result_OBUF[9]_inst_i_4_n_0\
    );
\result_OBUF[9]_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \result_OBUF[1]_inst_i_5_n_0\,
      I1 => p_36_in,
      O => \result_OBUF[9]_inst_i_5_n_0\
    );
\result_OBUF[9]_inst_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \result_OBUF[1]_inst_i_5_n_0\,
      I1 => p_28_in,
      O => \result_OBUF[9]_inst_i_6_n_0\
    );
end STRUCTURE;
