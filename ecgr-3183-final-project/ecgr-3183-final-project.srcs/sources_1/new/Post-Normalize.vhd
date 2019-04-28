----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/27/2019 10:56:52 PM
-- Design Name: 
-- Module Name: Post-Normalize - Behavioral
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

entity Post_Normalize is
    Port ( input : in STD_LOGIC_VECTOR (31 downto 0);
           clock : in STD_LOGIC;
           output : out STD_LOGIC_VECTOR (31 downto 0));
end Post_Normalize;

architecture Behavioral of Post_Normalize is

begin

process(clock)
begin

end process;

end Behavioral;
