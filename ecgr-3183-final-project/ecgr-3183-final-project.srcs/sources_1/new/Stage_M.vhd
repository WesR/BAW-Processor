----------------------------------------------------------------------------------
-- Company: ECGR-3183
-- Engineer: 
-- 
-- Create Date: 05/02/2019 12:27:16 PM
-- Design Name: 
-- Module Name: Stage_M - Behavioral
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

entity Stage_M is
    Port ( clock : in STD_LOGIC;
           PCSrc : out STD_LOGIC;
           MemRead : in STD_LOGIC;
           MemWrite : in STD_LOGIC;
           Branch : in STD_LOGIC;
           UncondBranch : in STD_LOGIC;
           opcode_in : in STD_LOGIC_VECTOR (7 downto 0);
           opcode_out : out STD_LOGIC_VECTOR (7 downto 0);
           RegWrite_in : in STD_LOGIC;
           RegWrite_out : out STD_LOGIC;
           MemtoReg_in : in STD_LOGIC;
           MemtoReg_out : out STD_LOGIC;
           Branch_Address_in : in STD_LOGIC_VECTOR (19 downto 0);
           Branch_Address_out : out STD_LOGIC_VECTOR (19 downto 0);
           Z : in STD_LOGIC;
           N : in STD_LOGIC;
           Execution_Result_in : in STD_LOGIC_VECTOR (31 downto 0);
           Execution_Result_out : out STD_LOGIC_VECTOR (31 downto 0);
           Read_Data_2_in : in STD_LOGIC_VECTOR (31 downto 0);
           Rd_in : in STD_LOGIC_VECTOR (3 downto 0);
           Rd_out : out STD_LOGIC_VECTOR (3 downto 0);
           Data_Read_out : out STD_LOGIC_VECTOR (31 downto 0));
end Stage_M;

architecture Behavioral of Stage_M is
    
    component and_gate_2_input is
        Port ( A : in STD_LOGIC;
               B : in STD_LOGIC;
               output : out STD_LOGIC);
    end component;
    
    component or_gate_2_input is
        Port ( A : in STD_LOGIC;
               B : in STD_LOGIC;
               output : out STD_LOGIC);
    end component;
    
    component Data_Memory is
            Port ( MemWrite : in STD_LOGIC;
                   MemRead : in STD_LOGIC;
                   clock : in STD_LOGIC;
                   Address : in STD_LOGIC_VECTOR (19 downto 0);
                   Write_Data : in STD_LOGIC_VECTOR (31 downto 0);
                   Data_Read : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    signal internal_OR_Z_N: STD_LOGIC;
    signal internal_AND_Branch_OR_Z_N: STD_LOGIC;
    
begin
    -- port mappings
    box_OR_gate_Z_N: or_gate_2_input port map(A => Z, B => N, output => internal_OR_Z_N);
    box_AND_gate_Branch_with_OR_Z_N: and_gate_2_input port map(A => Branch, B => internal_OR_Z_N, output => internal_AND_Branch_OR_Z_N);
    box_OR_gate_UncondBranch_other_stuff: or_gate_2_input port map(A => UncondBranch, B => internal_AND_Branch_OR_Z_N, output => PCSrc);
    
    box_Data_Memory: Data_Memory port map(MemWrite => MemWrite, MemRead => MemRead, clock => clock, Address => Execution_Result_in, 
                                          Write_Data => Read_Data_2_in, Data_Read => Data_Read_out);
    opcode_out <= opcode_in;
    RegWrite_out <= RegWrite_in;
    MemtoReg_out <= MemtoReg_in;
    Branch_Address_out <= Branch_Address_in;
    Execution_Result_out <= Execution_Result_in;
    Rd_out <= Rd_in;

end Behavioral;
