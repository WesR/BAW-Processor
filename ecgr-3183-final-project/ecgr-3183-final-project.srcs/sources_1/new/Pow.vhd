----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/13/2019 05:20:44 PM
-- Design Name: 
-- Module Name: Pow - Behavioral
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
library IEEE_PROPOSED;
use IEEE_PROPOSED.FLOAT_PKG.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Pow is
    Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
           inputB : in STD_LOGIC_VECTOR (31 downto 0);
           result : out STD_LOGIC_VECTOR (31 downto 0));
end Pow;

architecture Behavioral of Pow is

--signal output_bus : STD_LOGIC_VECTOR(31 downto 0);

begin
   process(inputA, inputB)
   begin
   
   
   end process;



end Behavioral;
