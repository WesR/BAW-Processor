----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Austin W.
-- 
-- Create Date: 04/27/2019 10:56:52 PM
-- Design Name: 
-- Module Name: Pre-Normalize - Behavioral
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

entity Pre_Normalize is
    Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
           inputB : in STD_LOGIC_VECTOR (31 downto 0);
           outputA : out STD_LOGIC_VECTOR (31 downto 0);
           outputB : out STD_LOGIC_VECTOR (31 downto 0));
end Pre_Normalize;

architecture Behavioral of Pre_Normalize is

begin

    outputA <= inputA;
    outputB <= inputB;

end Behavioral;
