----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Austin W.
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
use IEEE.NUMERIC_STD.ALL;
library IEEE_PROPOSED;
use IEEE_PROPOSED.FLOAT_PKG.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Round is
    Port ( input : in STD_LOGIC_VECTOR (31 downto 0);
           output : out STD_LOGIC_VECTOR (31 downto 0);
           flags_out : out STD_LOGIC_VECTOR(1 downto 0));
end Round;

architecture Behavioral of Round is
    constant zero_val: float32 := to_float(real(0), exponent_width => 8, fraction_width => 23);
begin

    output <= input; --add((to_float(input, 8, 23)), zero_val, round_style => round_neginf); 
                     -- plan was to add zero to input and change round style for Floor, Ceiling, and Round operations,
                     -- but could not get the add function in ieee_proposed.float_pkg to work, i.e.
                     --         add((to_float(input, 8, 23)), zero_val, round_style => round_neginf);       --
    flags_out <= "01" when (to_float(input, exponent_width => 8, fraction_width => 23) = zero_val) else
            "10" when (to_float(input, exponent_width => 8, fraction_width => 23) < zero_val) else
            "00"; -- format flags_out(N, Z)

end Behavioral;
