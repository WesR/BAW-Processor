----------------------------------------------------------------------------------
-- Company: ECGR-3183
-- Engineer: 
-- 
-- Create Date: 05/02/2019 04:29:11 AM
-- Design Name: 
-- Module Name: mux_PC_input - Behavioral
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

entity mux_PC_input is
    Port ( PCSrc : in STD_LOGIC;
           input_0 : in STD_LOGIC_VECTOR (19 downto 0);
           input_1 : in STD_LOGIC_VECTOR (19 downto 0);
           output : out STD_LOGIC_VECTOR (19 downto 0));
end mux_PC_input;

architecture Behavioral of mux_PC_input is

begin
    output <= input_0 when (PCSrc = '0') else
        input_1 when (PCSrc = '1') else
        (others => '-'); -- indicate error

end Behavioral;
