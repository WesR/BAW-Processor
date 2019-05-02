----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/02/2019 11:06:56 AM
-- Design Name: 
-- Module Name: IF_to_ID_Pipeline_Reg - Behavioral
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

entity IF_to_ID_Pipeline_Reg is
    Port ( clock : in STD_LOGIC;
           IF_ID_Write : in STD_LOGIC;
           IF_Flush : in STD_LOGIC;
           PC_Address_in : in STD_LOGIC_VECTOR (19 downto 0);
           Instruction_in : in STD_LOGIC_VECTOR (31 downto 0);
           FPValue_in : in STD_LOGIC_VECTOR (31 downto 0);
           PC_Address_out : out STD_LOGIC_VECTOR (19 downto 0);
           Instruction_out : out STD_LOGIC_VECTOR (31 downto 0);
           FPValue_out : out STD_LOGIC_VECTOR (31 downto 0));
end IF_to_ID_Pipeline_Reg;

architecture Behavioral of IF_to_ID_Pipeline_Reg is

begin


end Behavioral;
