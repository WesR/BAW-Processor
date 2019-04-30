----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/24/2019 04:10:36 PM
-- Design Name: 
-- Module Name: Fadd_tb - Behavioral
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
use IEEE.FLOAT_PKG.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Fadd_tb is
    -- Port();
end Fadd_tb;

architecture Behavioral of Fadd_tb is

component Fadd is
    Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
           inputB : in STD_LOGIC_VECTOR (31 downto 0);
           clock : in STD_LOGIC;
           result : out STD_LOGIC_VECTOR (31 downto 0);
           CY : out STD_LOGIC;
           OV : out STD_LOGIC);
end component;

signal inputA, inputB, result : STD_LOGIC_VECTOR(31 downto 0);
signal CY, OV : STD_LOGIC;
signal clk : STD_LOGIC;

begin
ADD_test: Fadd port map (inputA => inputA, inputB => inputB, clock=>clk, result => result, CY => CY, OV => OV);

process
variable count : integer := 0;
begin
     while (count < 5) loop
        clk <= '0';
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
        count := count + 1;
     end loop;
     wait;

end process;


process(clk)
    variable tempA : real := 42.5;
    variable tempB : real := 18.5;
    variable floatA, floatB : float32;
    variable res : real;
    variable l: line;
begin
    if rising_edge(clk) then
       inputA <= STD_LOGIC_VECTOR(to_slv(to_float(tempA, exponent_width => 8, fraction_width => 23)));
       inputB <= STD_LOGIC_VECTOR(to_slv(to_float(tempB, exponent_width => 8, fraction_width => 23)));
       
       --write (l, String'("Hello world!"));
       floatA := to_float(tempA, exponent_width => 8, fraction_width => 23);
       floatB := to_float(tempB, exponent_width => 8, fraction_width => 23);
       
       write (l, to_real(floatA));
       write (l, String'(" + "));
       write (l, to_real(floatB));
       write (l, String'(" = "));
       --writeline (output, l);    
       --wait for 20 ns;
       write(l, to_real(to_float32(to_float(to_stdulogicvector(result), exponent_width => 8, fraction_width => 23))));
       --write(l, result);
       writeline (output, l);
       assert false report "end of test" severity note;
    end if;
    --wait;
end process;

end Behavioral;
