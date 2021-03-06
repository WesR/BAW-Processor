----------------------------------------------------------------------------------
-- Company: ECGR-3183
-- Engineer: Austin W.
-- 
-- Create Date: 05/02/2019 04:39:33 AM
-- Design Name: 
-- Module Name: or_gate_2_input - Behavioral
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

entity or_gate_2_input is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           output : out STD_LOGIC);
end or_gate_2_input;

architecture Behavioral of or_gate_2_input is

begin

    output <= A or B;

end Behavioral;
