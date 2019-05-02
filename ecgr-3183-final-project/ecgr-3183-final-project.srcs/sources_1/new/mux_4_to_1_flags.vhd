----------------------------------------------------------------------------------
-- Company: ECGR-3183
-- Engineer: 
-- 
-- Create Date: 04/30/2019 03:25:18 PM
-- Design Name: 
-- Module Name: mux_4_to_1_flags - Behavioral
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

entity mux_4_to_1_flags is
    Port ( selection : in STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
           flags_0 : in STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
           flags_1 : in STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
           flags_2 : in STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
           flags_3 : in STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
           flags_out : out STD_LOGIC_VECTOR (1 downto 0));
end mux_4_to_1_flags;

architecture Behavioral of mux_4_to_1_flags is
    --signal selection_sig : unsigned(1 downto 0);
begin
    --selection_sig <= unsigned(selection);
           
    flags_out <= flags_0 when (selection = "00") else
                 flags_1 when (selection = "01") else
                 flags_2 when (selection = "10") else
                 flags_3 when (selection = "11") else
                 (others => '0'); -- set flags to '0' by default

end Behavioral;
