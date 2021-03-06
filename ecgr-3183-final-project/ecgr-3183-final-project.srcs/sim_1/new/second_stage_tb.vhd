----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Austin W.
-- 
-- Create Date: 05/01/2019 01:44:57 AM
-- Design Name: 
-- Module Name: second_stage_tb - Behavioral
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

entity second_stage_tb is
    Port ( input : in STD_LOGIC_VECTOR (31 downto 0);
           control_select : in STD_LOGIC_VECTOR (1 downto 0);
           output : out STD_LOGIC_VECTOR (31 downto 0);
           flags_out : out STD_LOGIC_VECTOR (1 downto 0));
end second_stage_tb;

architecture Behavioral of second_stage_tb is

begin


end Behavioral;
