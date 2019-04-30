----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/13/2019 05:35:31 PM
-- Design Name: 
-- Module Name: Fsqrt - Behavioral
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

entity Fsqrt is
    Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
           inputB : in STD_LOGIC_VECTOR (31 downto 0);
           result : out STD_LOGIC_VECTOR (31 downto 0);
           E : out STD_LOGIC);
end Fsqrt;

architecture Behavioral of Fsqrt is
    signal output_bus : STD_LOGIC_VECTOR(31 downto 0);
begin
    process(inputA)
        variable root : float32;
    begin
       root := sqrt(abs(to_float(inputA, exponent_width => 8, fraction_width => 23)));
       
       output_bus <= STD_LOGIC_VECTOR(to_slv(root));
       
       if inputA(31) = '1' then
          E <= '1';
       else 
          E <= '0';
       end if;
    
    end process;

end Behavioral;
