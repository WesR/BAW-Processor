----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/02/2019 10:09:22 AM
-- Design Name: 
-- Module Name: Main_Control_Unit_Pipelined - Behavioral
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

entity Main_Control_Unit_Pipelined is
    Port ( opcode : in STD_LOGIC_VECTOR (7 downto 0);
           Reg2Loc : out STD_LOGIC;
           ALUSrc : out STD_LOGIC;
           MemtoReg : out STD_LOGIC;
           RegWrite : out STD_LOGIC;
           MemRead : out STD_LOGIC;
           MemWrite : out STD_LOGIC;
           Branch : out STD_LOGIC;
           UncondBranch : out STD_LOGIC);
end Main_Control_Unit_Pipelined;

architecture Behavioral of Main_Control_Unit_Pipelined is

begin


end Behavioral;
