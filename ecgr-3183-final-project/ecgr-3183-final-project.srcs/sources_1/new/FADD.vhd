----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/13/2019 05:07:23 PM
-- Design Name: 
-- Module Name: FADD - Behavioral
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
use IEEE.FLOAT_PKG.ALL;
use IEEE.FIXED_PKG.ALL;
use IEEE.FIXED_FLOAT_TYPES.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FADD is
    Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
           inputB : in STD_LOGIC_VECTOR (31 downto 0);
           result : out STD_LOGIC_VECTOR (31 downto 0);
           CY : out STD_LOGIC;
           OV : out STD_LOGIC);
end FADD;

architecture Behavioral of FADD is

signal output_bus : STD_LOGIC_VECTOR(31 downto 0) := "00000000000000000000000000000000";

begin
process(inputA, inputB)
variable tempA, tempB, tempResult: float32;
begin
    tempA := to_float(inputA, exponent_width => 8, fraction_width => 23);
    tempB := to_float(inputB, exponent_width => 8, fraction_width => 23);
    tempResult := tempA + tempB;
    
    output_bus <= STD_LOGIC_VECTOR(to_slv(tempResult));

end process;

process(output_bus)
begin
    result <= output_bus;
end process;


end Behavioral;
