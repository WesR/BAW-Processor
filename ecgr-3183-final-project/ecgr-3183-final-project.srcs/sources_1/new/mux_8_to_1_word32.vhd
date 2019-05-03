----------------------------------------------------------------------------------
-- Company: ECGR-3183
-- Engineer: Austin W.
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
    Port ( selection : in STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
           input_0 : in STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
           input_1 : in STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
           input_2 : in STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
           input_3 : in STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
           input_4 : in STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
           input_5 : in STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
           input_6 : in STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
           input_7 : in STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
           output : out STD_LOGIC_VECTOR (31 downto 0) := (others => '0'));
end mux_8_to_1_word32;

architecture Behavioral of mux_8_to_1_word32 is
    --signal selection_sig : unsigned(2 downto 0) := unsigned(selection);
begin
    --selection_sig <= unsigned(selection);
    
    --process(selection) is
    --begin
    output <= input_0 when (selection = "000") else
              input_1 when (selection = "001") else
              input_2 when (selection = "010") else
              input_3 when (selection = "011") else
              input_4 when (selection = "100") else
              input_5 when (selection = "101") else
              input_6 when (selection = "110") else
              input_7 when (selection = "111") else
              (others => '-'); -- indicate error
     --end process;
     
--     process(selection, input_0, input_1, input_2, input_3, input_4, input_5, input_6, input_7)
--     begin
--        case selection is
--            when "000" => output <= input_0;
--            when "001" => output <= input_1;
--            when "010" => output <= input_2;
--            when "011" => output <= input_3;
--            when "100" => output <= input_4;
--            when "101" => output <= input_5;
--            when "110" => output <= input_6;
--            when "111" => output <= input_7;
--            when others => output <= (others => '-');
--        end case;
--    end process;

end Behavioral;
