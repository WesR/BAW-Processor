----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Austin W.
-- 
-- Create Date: 05/02/2019 04:26:27 AM
-- Design Name: 
-- Module Name: Big_Plus_Unit - Behavioral
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

entity Big_Plus_Unit is
    Port ( input : in STD_LOGIC_VECTOR (19 downto 0);
           output : out STD_LOGIC_VECTOR (19 downto 0));
end Big_Plus_Unit;

architecture Behavioral of Big_Plus_Unit is

begin

    output <= STD_LOGIC_VECTOR(unsigned(input) + 1);

end Behavioral;
