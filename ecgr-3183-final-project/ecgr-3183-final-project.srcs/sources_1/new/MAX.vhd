----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/13/2019 05:17:03 PM
-- Design Name: 
-- Module Name: Max - Behavioral
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

entity Max is
    Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
           inputB : in STD_LOGIC_VECTOR (31 downto 0);
           clock : in STD_LOGIC;
           result : out STD_LOGIC_VECTOR (31 downto 0));
end Max;

architecture Behavioral of Max is

signal output_bus : STD_LOGIC_VECTOR(31 downto 0);
signal exponent_A, exponent_B : unsigned(7 downto 0);
signal mantissa_A, mantissa_B : unsigned(22 downto 0);

begin
process(inputA, inputB)

begin
    -- compare sign bits first
    if inputA(31) = '0' and inputB(31) = '1' then
       output_bus <= inputA;
    elsif inputA(31) = '1' and inputB(31) = '0' then
       output_bus <= inputB;
       
    -- if sign bits are the same, compare the exponents (positive)
    elsif inputA(31) = '0' and inputB(31) = '0' then
        exponent_A <= unsigned(inputA(30 downto 23));
        exponent_B <= unsigned(inputB(30 downto 23));
        
        if exponent_A > exponent_B then
           output_bus <= inputA;
        elsif exponent_A < exponent_B then
           output_bus <= inputB;
           
        -- if exponent bits are the same, compare the mantissas (positive)
        else
            mantissa_A <= unsigned(inputA(22 downto 0));
            mantissa_B <= unsigned(inputB(22 downto 0));
            
            if mantissa_A > mantissa_B then
               output_bus <= inputA;
            else
               output_bus <= inputB;
            end if;
        end if;
        
    -- if sign bits are the same, compare the exponents (negative)
    else
        exponent_A <= unsigned(inputA(30 downto 23));
        exponent_B <= unsigned(inputB(30 downto 23));
        
        if exponent_A > exponent_B then
           output_bus <= inputB;
        elsif exponent_A < exponent_B then
           output_bus <= inputA;
           
        -- if exponent bits are the same, compare the mantissas (negative)
        else
            mantissa_A <= unsigned(inputA(22 downto 0));
            mantissa_B <= unsigned(inputB(22 downto 0));
            
            if mantissa_A > mantissa_B then
               output_bus <= inputB;
            else
               output_bus <= inputA;
            end if;
        end if;
    end if;

end process;

process(clock)
begin
    if rising_edge(clock) then
       result <= output_bus;
    end if;
end process;


end Behavioral;
