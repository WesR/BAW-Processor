----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/02/2019 11:06:56 AM
-- Design Name: 
-- Module Name: ID_to_EX_Pipeline_Reg - Behavioral
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

entity ID_to_EX_Pipeline_Reg is
    Port ( clock : in STD_LOGIC;
           WB_in : in STD_LOGIC_VECTOR (9 downto 0);
           WB_out : out STD_LOGIC_VECTOR (9 downto 0);
           M_in : in STD_LOGIC_VECTOR (1 downto 0);
           M_out : in STD_LOGIC_VECTOR (1 downto 0);
           ALUSrc_in : in STD_LOGIC;
           ALUSrc_out : out STD_LOGIC;
           PC_Address_in : in STD_LOGIC_VECTOR (19 downto 0);
           PC_Address_out : out STD_LOGIC_VECTOR (19 downto 0);
           Branch_Address_in : in STD_LOGIC_VECTOR (19 downto 0);
           Branch_Address_out : out STD_LOGIC_VECTOR (19 downto 0);
           Read_Data_1_in : in STD_LOGIC_VECTOR (31 downto 0);
           Read_Data_1_out : out STD_LOGIC_VECTOR (31 downto 0);
           Read_Data_2_in : in STD_LOGIC_VECTOR (31 downto 0);
           Read_Data_2_out : out STD_LOGIC_VECTOR (31 downto 0);
           Sign_Extended_in : in STD_LOGIC_VECTOR (31 downto 0);
           Sign_Extended_out : out STD_LOGIC_VECTOR (31 downto 0);
           Rd_in : in STD_LOGIC_VECTOR (3 downto 0);
           Rd_out : out STD_LOGIC_VECTOR (3 downto 0);
           Rn_in : in STD_LOGIC_VECTOR (3 downto 0);
           Rn_out : out STD_LOGIC_VECTOR (3 downto 0);
           Rm_in : in STD_LOGIC_VECTOR (3 downto 0);
           Rm_out : out STD_LOGIC_VECTOR (3 downto 0));
end ID_to_EX_Pipeline_Reg;

architecture Behavioral of ID_to_EX_Pipeline_Reg is

begin


end Behavioral;
