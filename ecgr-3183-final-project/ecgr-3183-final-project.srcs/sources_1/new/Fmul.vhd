----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/13/2019 05:13:00 PM
-- Design Name: 
-- Module Name: Fmul - Behavioral
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

entity Fmul is
    Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
           inputB : in STD_LOGIC_VECTOR (31 downto 0);
           result : out STD_LOGIC_VECTOR (31 downto 0));
end Fmul;

architecture Behavioral of Fmul is
    signal output_bus : STD_LOGIC_VECTOR(31 downto 0);
begin
    process(inputA, inputB)
        variable tempA, tempB, tempResult: float32;
                -- 0
               constant ztest: float32 := "00000000000000000000000000000000";
               -- 1
               constant ptest: float32 := "00111111100000000000000000000000";
               -- -1
               constant ntest: float32 := "10111111100000000000000000000000";
                
           begin
               tempA := to_float(inputA, exponent_width => 8, fraction_width => 23);
               tempB := to_float(inputB, exponent_width => 8, fraction_width => 23);
                              
               --Quick multiply by 0
               if (tempA OR tempB) = ztest then
                   tempResult := ztest;
               
               --Quick multiply by 1
               elsif tempA = ptest then
                   tempResult := tempB;
               elsif tempB = ptest then
                   tempResult := tempA;
               
               --Qucik multiply by -1
               elsif tempA(8 downto -23) = ntest then
                   tempB(8) := '1';
                   tempResult:= tempB;
               elsif tempB(8 downto -23) = ntest then
                   tempA(8) := '1';
                   tempResult := tempA;
                   
              -- Quick multiply by power of 2
               elsif tempB(-1 downto -23) = ztest(-1 downto -23) then
                   tempA(7 downto 0) := tempA(7 downto 0) + tempB(7 downto 0) - 127;
               elsif tempA(-1 downto -23) = ztest(-1 downto -23) then
                   tempB(7 downto 0) := tempA(7 downto 0) + tempB(7 downto 0) - 127;  
                 
               --Do normal multiply
               else
                   tempResult := tempA * tempB;
               end if;
        
        output_bus <= STD_LOGIC_VECTOR(to_slv(tempResult));
        
        result <= output_bus;
    
    end process;


end Behavioral;
