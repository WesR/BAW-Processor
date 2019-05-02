----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/02/2019 11:06:56 AM
-- Design Name: 
-- Module Name: EX_to_M_Pipeline_Reg - Behavioral
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

entity EX_to_M_Pipeline_Reg is
    Port ( clock : in STD_LOGIC;
           opcode_in : in STD_LOGIC_VECTOR (7 downto 0);
           opcode_out : out STD_LOGIC_VECTOR (7 downto 0);
           RegWrite_in : in STD_LOGIC;
           RegWrite_out : out STD_LOGIC;
           MemtoReg_in : in STD_LOGIC;
           MemtoReg_out : out STD_LOGIC;
           MemRead_in : in STD_LOGIC;
           MemRead_out : out STD_LOGIC;
           MemWrite_in : in STD_LOGIC;
           MemWrite_out : out STD_LOGIC;
           Branch_in : in STD_LOGIC;
           Branch_out : out STD_LOGIC;
           UncondBranch_in : in STD_LOGIC;
           UncondBranch_out : out STD_LOGIC;
           Branch_Address_in : in STD_LOGIC_VECTOR (19 downto 0);
           Branch_Address_out : out STD_LOGIC_VECTOR (19 downto 0);
           Zero_in : in STD_LOGIC;
           Zero_out : out STD_LOGIC;
           Nonzero_in : in STD_LOGIC;
           Nonzero_out : out STD_LOGIC;
           ALUResult_in : in STD_LOGIC_VECTOR (31 downto 0);
           ALUResult_out : out STD_LOGIC_VECTOR (31 downto 0);
           Read_Data_2_in : in STD_LOGIC_VECTOR (31 downto 0);
           Read_Data_2_out : out STD_LOGIC_VECTOR (31 downto 0);
           Rd_in : in STD_LOGIC_VECTOR (3 downto 0);
           Rd_out : out STD_LOGIC_VECTOR (3 downto 0));
end EX_to_M_Pipeline_Reg;

architecture Behavioral of EX_to_M_Pipeline_Reg is

begin


end Behavioral;
