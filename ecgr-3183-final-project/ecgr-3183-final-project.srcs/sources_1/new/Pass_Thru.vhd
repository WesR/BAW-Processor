----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Austin W.
-- 
-- Create Date: 04/28/2019 12:34:33 AM
-- Design Name: 
-- Module Name: Pass_Thru - Behavioral
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

entity Pass_Thru is
    Port ( input : in STD_LOGIC_VECTOR (31 downto 0);
           output : out STD_LOGIC_VECTOR (31 downto 0);
           flags_out : out STD_LOGIC_VECTOR(1 downto 0));
end Pass_Thru;

architecture Behavioral of Pass_Thru is
    constant zero_val: float32 := to_float(real(0), exponent_width => 8, fraction_width => 23);
begin

    output <= input;
    flags_out <= "01" when (to_float(input, exponent_width => 8, fraction_width => 23) = zero_val) else
            "10" when (to_float(input, exponent_width => 8, fraction_width => 23) < zero_val) else
            "00"; -- format flags_out(N, Z)

end Behavioral;
