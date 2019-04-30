----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/29/2019 11:23:20 PM
-- Design Name: 
-- Module Name: mux_8_to_1_word32 - Behavioral
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

entity mux_8_to_1_word32 is
    Port ( selection : in STD_LOGIC_VECTOR (2 downto 0);
           input_0 : in STD_LOGIC_VECTOR (31 downto 0);
           input_1 : in STD_LOGIC_VECTOR (31 downto 0);
           input_2 : in STD_LOGIC_VECTOR (31 downto 0);
           input_3 : in STD_LOGIC_VECTOR (31 downto 0);
           input_4 : in STD_LOGIC_VECTOR (31 downto 0);
           input_5 : in STD_LOGIC_VECTOR (31 downto 0);
           input_6 : in STD_LOGIC_VECTOR (31 downto 0);
           input_7 : in STD_LOGIC_VECTOR (31 downto 0);
           output : out STD_LOGIC_VECTOR (31 downto 0));
end mux_8_to_1_word32;

architecture Behavioral of mux_8_to_1_word32 is
    signal selection_sig : unsigned(2 downto 0);
begin
    selection_sig <= unsigned(selection);
    output <= input_0 when (selection_sig = "000") else
        input_1 when (selection_sig = "001") else
        input_2 when (selection_sig = "010") else
        input_3 when (selection_sig = "011") else
        input_4 when (selection_sig = "100") else
        input_5 when (selection_sig = "101") else
        input_6 when (selection_sig = "110") else
        input_7 when (selection_sig = "111") else
        (others => '0'); -- indicate error

end Behavioral;
