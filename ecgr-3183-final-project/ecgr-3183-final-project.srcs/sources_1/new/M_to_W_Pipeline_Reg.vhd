----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/02/2019 11:06:56 AM
-- Design Name: 
-- Module Name: M_to_W_Pipeline_Reg - Behavioral
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

entity M_to_W_Pipeline_Reg is
    Port ( clock : in STD_LOGIC;
           opcode_in : in STD_LOGIC_VECTOR (7 downto 0);
           opcode_out : out STD_LOGIC_VECTOR (7 downto 0);
           RegWrite_in : in STD_LOGIC;
           RegWrite_out : out STD_LOGIC;
           MemtoReg_in : in STD_LOGIC;
           MemtoReg_out : out STD_LOGIC;
           Execution_Result_in : in STD_LOGIC_VECTOR (31 downto 0);
           Execution_Result_out : out STD_LOGIC_VECTOR (31 downto 0);
           Data_Read_in : in STD_LOGIC_VECTOR (31 downto 0);
           Data_Read_out : out STD_LOGIC_VECTOR (31 downto 0);
           Rd_in : in STD_LOGIC_VECTOR (3 downto 0);
           Rd_out : out STD_LOGIC_VECTOR (3 downto 0));
end M_to_W_Pipeline_Reg;

architecture Behavioral of M_to_W_Pipeline_Reg is

begin
    process(clock)
    begin
        if rising_edge(clock) then
            
            opcode_out <= opcode_in;
            RegWrite_out <= RegWrite_in;
            MemtoReg_out <= MemtoReg_in;
            Execution_Result_out <= Execution_Result_in;
            Data_Read_out <= Data_Read_in;
            Rd_out <= Rd_in;
        end if;
    end process;

end Behavioral;
