----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/01/2019 05:31:18 PM
-- Design Name: 
-- Module Name: Register_File - Behavioral
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

entity Register_File is
    Port ( RegWrite : in STD_LOGIC;
           Rm : in STD_LOGIC_VECTOR (3 downto 0);
           Rn : in STD_LOGIC_VECTOR (3 downto 0);
           Rd : in STD_LOGIC_VECTOR (3 downto 0);
           Write_Data : in STD_LOGIC_VECTOR (31 downto 0);
           Read_Data_1 : out STD_LOGIC_VECTOR (31 downto 0);
           Read_Data_2 : out STD_LOGIC_VECTOR (31 downto 0));
end Register_File;

architecture Behavioral of Register_File is

begin


end Behavioral;
