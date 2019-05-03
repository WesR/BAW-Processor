----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Austin W.
-- 
-- Create Date: 04/13/2019 05:20:44 PM
-- Design Name: 
-- Module Name: Exp - Behavioral
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

entity Exp is
    Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
           inputB : in STD_LOGIC_VECTOR (31 downto 0);
           result : out STD_LOGIC_VECTOR (31 downto 0));
end Exp;

architecture Behavioral of Exp is
    constant E_CONSTANT: float32 := to_float(real(2.7182818), 8, 23); -- constant 'e' to 7 decimal places
begin
    process(inputA)
        variable base: float32 := E_CONSTANT;
        variable exponent: integer;
        variable counter: integer := 0;
    begin
        exponent := to_integer(arg => (to_float(inputA, 8, 23)));
        
        if (exponent = 0) then
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
