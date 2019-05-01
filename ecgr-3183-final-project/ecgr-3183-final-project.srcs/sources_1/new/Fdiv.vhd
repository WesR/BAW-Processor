----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/13/2019 05:13:00 PM
-- Design Name: 
-- Module Name: Fdiv - Behavioral
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

entity Fdiv is
    Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
           inputB : in STD_LOGIC_VECTOR (31 downto 0);
           result : out STD_LOGIC_VECTOR (31 downto 0);
           E : out STD_LOGIC);
end Fdiv;

architecture Behavioral of Fdiv is
    --signal output_bus : STD_LOGIC_VECTOR(31 downto 0);
begin
    process(inputA, inputB)
        variable tempA, tempB, tempResult: float32;
    begin
        tempA := to_float(inputA, exponent_width => 8, fraction_width => 23);
        tempB := to_float(inputB, exponent_width => 8, fraction_width => 23);
        
        -- need to check for division by zero
        tempResult := tempA / tempB;
        
        result <= STD_LOGIC_VECTOR(to_slv(tempResult));
        
        --result <= output_bus;
    
    end process;

end Behavioral;
