----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Austin W.
-- 
-- Create Date: 05/02/2019 04:26:27 AM
-- Design Name: 
-- Module Name: PC - Behavioral
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

entity PC is
    Port ( PCWrite : in STD_LOGIC := '0';
           input : in STD_LOGIC_VECTOR (19 downto 0);
           output : out STD_LOGIC_VECTOR (19 downto 0));
end PC;

architecture Behavioral of PC is
--    signal current_val: STD_LOGIC_VECTOR(19 downto 0);
begin

    output <= input when (PCWrite = '0');
--    process(input)
--    begin
--        if (PCWrite = '0') then
--            current_val <= input;
--            output <= input;
--        else
--            output <= output;
--        end if;
--    end process;
    

end Behavioral;
