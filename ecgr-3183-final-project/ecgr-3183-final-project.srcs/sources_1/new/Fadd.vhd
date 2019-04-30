----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/13/2019 05:07:23 PM
-- Design Name: 
-- Module Name: Fadd - Behavioral
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

use STD.TEXTIO.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
library IEEE_PROPOSED;
use IEEE_PROPOSED.FLOAT_PKG.ALL;

--use IEEE.FIXED_PKG.ALL;
--use IEEE.FIXED_FLOAT_TYPES.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Fadd is
    Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
           inputB : in STD_LOGIC_VECTOR (31 downto 0);
           result : out STD_LOGIC_VECTOR (31 downto 0);
           CY : out STD_LOGIC;
           OV : out STD_LOGIC);
end Fadd;

architecture Behavioral of Fadd is
    signal output_bus : STD_LOGIC_VECTOR(31 downto 0);
begin
    process(inputA, inputB)
        variable tempA, tempB, tempResult: float32;
        variable l: line;
    begin
        tempA := to_float(inputA, exponent_width => 8, fraction_width => 23);
        tempB := to_float(inputB, exponent_width => 8, fraction_width => 23);
        tempResult := tempA + tempB;
        
        write(l, to_real(tempResult));
        writeline (output, l);
    
        output_bus <= STD_LOGIC_VECTOR(to_slv(tempResult));
        
        result <= output_bus;
    
    end process;

end Behavioral;
