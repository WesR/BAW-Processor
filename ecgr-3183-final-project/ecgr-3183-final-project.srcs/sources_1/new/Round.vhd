----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/28/2019 12:34:33 AM
-- Design Name: 
-- Module Name: Round - Behavioral
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

entity Round is
    Port ( input : in STD_LOGIC_VECTOR (31 downto 0);
           clock : in STD_LOGIC;
           output : out STD_LOGIC_VECTOR (31 downto 0));
end Round;

architecture Behavioral of Round is

begin

process(clock)
begin
    if rising_edge(clock) then
        output <= input;
    end if;
end process;

end Behavioral;
