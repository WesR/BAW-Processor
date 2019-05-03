----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/03/2019 08:56:54 AM
-- Design Name: 
-- Module Name: Stage_ID - Behavioral
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

entity Stage_ID is
    Port ( clock : in STD_LOGIC;
           Instruction_in : in STD_LOGIC_VECTOR (31 downto 0);
           Read__Data_1 : out STD_LOGIC_VECTOR (31 downto 0);
           Read_Data_2 : out STD_LOGIC_VECTOR (31 downto 0));
end Stage_ID;

architecture Behavioral of Stage_ID is

begin


end Behavioral;
