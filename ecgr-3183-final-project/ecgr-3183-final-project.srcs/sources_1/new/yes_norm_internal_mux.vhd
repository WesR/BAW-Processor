----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/28/2019 12:51:21 PM
-- Design Name: 
-- Module Name: yes_norm_internal_flags_mux - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity yes_norm_internal_flags_mux is
    Port ( selection : in STD_LOGIC_VECTOR (2 downto 0);
           flags_out : out STD_LOGIC_VECTOR (2 downto 0);
           flags_0 : in STD_LOGIC_VECTOR (2 downto 0);
           flags_1 : in STD_LOGIC_VECTOR (2 downto 0);
           flags_2 : in STD_LOGIC_VECTOR (2 downto 0);
           flags_3 : in STD_LOGIC_VECTOR (2 downto 0);
           flags_4 : in STD_LOGIC_VECTOR (2 downto 0);
           flags_5 : in STD_LOGIC_VECTOR (2 downto 0);
           flags_6 : in STD_LOGIC_VECTOR (2 downto 0);
           flags_7 : in STD_LOGIC_VECTOR (2 downto 0));
end yes_norm_internal_flags_mux;

architecture Behavioral of yes_norm_internal_flags_mux is

signal selection_sig : unsigned(2 downto 0); -- (2) is CY, (1) is OV, (0) is E

begin
    selection_sig <= unsigned(selection);
	--muxing the inputs to the output (CY)
	flags_out(2) <= flags_0(2) when (selection_sig = "000") else -- Fadd
	     flags_1(2) when (selection_sig = "001") else -- Fsub
	     flags_2(2) when (selection_sig = "010") else -- Fmul
	     flags_3(2) when (selection_sig = "011") else -- Fdiv
	     flags_4(2) when (selection_sig = "100") else -- Exp
	     flags_5(2) when (selection_sig = "101") else -- Pow
	     '0';
	     
	 --muxing the inputs to the output (OV)
     flags_out(1) <= flags_0(1) when (selection_sig = "000") else -- Fadd
          flags_1(1) when (selection_sig = "001") else -- Fsub
          flags_2(1) when (selection_sig = "010") else -- Fmul
          flags_3(1) when (selection_sig = "011") else -- Fdiv
          flags_4(1) when (selection_sig = "100") else -- Exp
          flags_5(1) when (selection_sig = "101") else -- Pow
          '0';
     
      --muxing the inputs to the output (E)
      flags_out(0) <= '0' when (selection_sig = "000") else -- Fadd
           '0' when (selection_sig = "001") else -- Fsub
           '0' when (selection_sig = "010") else -- Fmul
           flags_3(0) when (selection_sig = "011") else -- Fdiv
           '0' when (selection_sig = "100") else -- Exp
           '0' when (selection_sig = "101") else -- Pow
           '0';


end Behavioral;
