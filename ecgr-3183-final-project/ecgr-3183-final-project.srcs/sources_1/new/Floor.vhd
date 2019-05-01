----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/28/2019 12:34:33 AM
-- Design Name: 
-- Module Name: Floor - Behavioral
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

entity Floor is
    Port ( input : in STD_LOGIC_VECTOR (31 downto 0);
           output : out STD_LOGIC_VECTOR (31 downto 0);
           flags_out : out STD_LOGIC_VECTOR(1 downto 0));
end Floor;

architecture Behavioral of Floor is
    constant zero_val: float32 := to_float(real(0), exponent_width => 8, fraction_width => 23);
begin


process(input)
    variable internal_word32_value: float32;
begin
    output <= input;
    internal_word32_value := to_float(input, exponent_width => 8, fraction_width => 23);
    if (internal_word32_value = zero_val) then
        flags_out(1) <= '0'; -- N
        flags_out(0) <= '1'; -- Z
    else
        flags_out(1) <= '1'; -- N
        flags_out(0) <= '0'; -- Z
    end if;

end process;

end Behavioral;
