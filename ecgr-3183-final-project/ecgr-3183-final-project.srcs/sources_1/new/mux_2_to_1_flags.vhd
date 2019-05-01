----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/30/2019 01:09:34 AM
-- Design Name: 
-- Module Name: mux_2_to_1_flags - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux_2_to_1_flags is
    Port ( select_bit : in STD_LOGIC;
           flags_0 : in STD_LOGIC_VECTOR (2 downto 0);
           flags_1 : in STD_LOGIC_VECTOR (2 downto 0);
           flags_out : out STD_LOGIC_VECTOR (2 downto 0) := (others => '0'));
end mux_2_to_1_flags;

architecture Behavioral of mux_2_to_1_flags is
    signal selection_sig : STD_LOGIC := select_bit;
begin
    --selection_sig <= to_bit(select_bit);
    flags_out <= flags_0 when (selection_sig = '0') else
        flags_1 when (selection_sig = '1') else
        (others => '0'); -- indicate error

end Behavioral;
