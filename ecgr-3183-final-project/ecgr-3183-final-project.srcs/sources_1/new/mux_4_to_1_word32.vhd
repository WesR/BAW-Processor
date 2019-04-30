----------------------------------------------------------------------------------
-- Company: ECGR-3183
-- Engineer: 
-- 
-- Create Date: 04/30/2019 03:25:18 PM
-- Design Name: 
-- Module Name: mux_4_to_1_word32 - Behavioral
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

entity mux_4_to_1_word32 is
    Port ( selection : in STD_LOGIC_VECTOR (1 downto 0);
           input_0 : in STD_LOGIC_VECTOR (31 downto 0);
           input_1 : in STD_LOGIC_VECTOR (31 downto 0);
           input_2 : in STD_LOGIC_VECTOR (31 downto 0);
           input_3 : in STD_LOGIC_VECTOR (31 downto 0);
           output : out STD_LOGIC_VECTOR (31 downto 0));
end mux_4_to_1_word32;

architecture Behavioral of mux_4_to_1_word32 is
    signal selection_sig : unsigned(1 downto 0);
begin
    selection_sig <= unsigned(selection);
    
    output <= input_0 when (selection_sig = "00") else
              input_1 when (selection_sig = "01") else
              input_2 when (selection_sig = "10") else
              input_3 when (selection_sig = "11") else
              (others => '0'); -- indicate error

end Behavioral;
