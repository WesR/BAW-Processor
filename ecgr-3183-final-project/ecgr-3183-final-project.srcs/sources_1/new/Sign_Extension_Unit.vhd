----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/01/2019 05:46:55 PM
-- Design Name: 
-- Module Name: Sign_Extension_Unit - Behavioral
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

entity Sign_Extension_Unit is
    Port ( input : in STD_LOGIC_VECTOR (15 downto 0);
           output : out STD_LOGIC_VECTOR (31 downto 0) := (others => '0'));
end Sign_Extension_Unit;

architecture Behavioral of Sign_Extension_Unit is

begin
    process(input)
        variable temp_input: integer;
        variable input_extended: float32;
    begin
        temp_input := to_integer(signed(input));
        input_extended := to_float(temp_input, 8, 23);
        output <= to_slv(input_extended);
    
    end process;

end Behavioral;
