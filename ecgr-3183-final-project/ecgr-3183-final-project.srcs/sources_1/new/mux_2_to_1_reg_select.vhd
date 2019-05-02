----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/02/2019 03:45:11 AM
-- Design Name: 
-- Module Name: mux_2_to_1_reg_select - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux_2_to_1_reg_select is
    Port ( Reg2Loc : in STD_LOGIC;
           input_0 : in STD_LOGIC_VECTOR (3 downto 0);
           input_1 : in STD_LOGIC_VECTOR (3 downto 0);
           output : out STD_LOGIC_VECTOR (3 downto 0));
end mux_2_to_1_reg_select;

architecture Behavioral of mux_2_to_1_reg_select is

begin
    output <= input_0 when (Reg2Loc = '0') else
        input_1 when (Reg2Loc = '1') else
        (others => '-'); -- indicate error

end Behavioral;
