----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/13/2019 05:20:44 PM
-- Design Name: 
-- Module Name: Pow - Behavioral
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

entity Pow is
    Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
           inputB : in STD_LOGIC_VECTOR (31 downto 0);
           result : out STD_LOGIC_VECTOR (31 downto 0));
end Pow;

architecture Behavioral of Pow is

begin
    process(inputA, inputB)
        variable base: float32;
        variable exponent: integer;
        variable counter: integer := 0;
    begin
        base := to_float(inputA, 8, 23);
        exponent := to_integer(arg => (to_float(inputB, 8, 23)));
        
        -- check if base is 0
        if (base = to_float(real(0.0), 8, 23)) then
            base := base;
        
        -- check if exponent is 0
        elsif (exponent = 0) then
            base := to_float(real(1), 8, 23);
        
        -- positive exponents
        elsif (exponent > 0) then
            while counter < (exponent - 1) loop
                base := base * base;
                counter := counter + 1;
            end loop;
        
        -- negative exponents
        else
            while counter > (exponent + 1) loop
                base := base / base;
                counter := counter - 1;
            end loop;
        end if;
        counter := 0;
        
        result <= to_slv(base);
    
    end process;

end Behavioral;
