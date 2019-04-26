----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/24/2019 04:10:36 PM
-- Design Name: 
-- Module Name: ADD_tb - Behavioral
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ADD_tb is
    -- Port();
end ADD_tb;

architecture Behavioral of ADD_tb is

component ADD is
    Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
           inputB : in STD_LOGIC_VECTOR (31 downto 0);
           result : out STD_LOGIC_VECTOR (31 downto 0);
           CY : out STD_LOGIC;
           OV : out STD_LOGIC);
end component;

signal inputA, inputB, result : STD_LOGIC_VECTOR(31 downto 0);
signal CY, OV : STD_LOGIC;

begin
ADD_test: ADD port map (inputA => inputA, inputB => inputB, result => result, CY => CY, OV => OV);

process
    variable tempA : real := 42.1;
    variable tempB : real := 18.2;
begin
    inputA <= STD_LOGIC_VECTOR(to_slv(to_float(tempA, exponent_width => 8, fraction_width => 23)));
    inputB <= STD_LOGIC_VECTOR(to_slv(to_float(tempB, exponent_width => 8, fraction_width => 23)));
    
    wait for 20ns;
end process;

end Behavioral;
