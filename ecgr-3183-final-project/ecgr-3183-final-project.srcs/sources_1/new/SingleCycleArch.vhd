----------------------------------------------------------------------------------
-- Company: ECGR-3183
-- Engineer: 
-- 
-- Create Date: 05/02/2019 04:43:00 AM
-- Design Name: 
-- Module Name: SingleCycleArch - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- Copyright 2019. All writes (Mem and Reg) reserved.
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

entity SingleCycleArch is
    Port ( clock : in STD_LOGIC);
end SingleCycleArch;

architecture Behavioral of SingleCycleArch is
    component mux_PC_input is
        Port ( selection : in STD_LOGIC;
               input_0 : in STD_LOGIC_VECTOR (19 downto 0);
               input_1 : in STD_LOGIC_VECTOR (19 downto 0);
               output : out STD_LOGIC_VECTOR (19 downto 0));
    end component;
    
    component PC is
        Port ( input : in STD_LOGIC_VECTOR (19 downto 0);
               output : out STD_LOGIC_VECTOR (19 downto 0));
    end component;
    
    component Big_Plus_Unit is
        Port ( input : in STD_LOGIC_VECTOR (19 downto 0);
               output : out STD_LOGIC_VECTOR (19 downto 0));
    end component;
    
    component Instruction_Memory is
        Port ( Address : in STD_LOGIC_VECTOR (19 downto 0);
               clock : in STD_LOGIC;
               Instruction : out STD_LOGIC_VECTOR (31 downto 0);
               Set_Instruction_Workaround : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    component Main_Control_Unit_Single_Cycle is
        Port ( opcode : in STD_LOGIC_VECTOR (7 downto 0);
               Reg2Loc : out STD_LOGIC;
               ALUSrc : out STD_LOGIC;
               MemtoReg : out STD_LOGIC;
               RegWrite : out STD_LOGIC;
               MemRead : out STD_LOGIC;
               MemWrite : out STD_LOGIC;
               Branch : out STD_LOGIC;
               UncondBranch : out STD_LOGIC);
    end component;
    
    component mux_2_to_1_reg_select is
        Port ( Reg2Loc : in STD_LOGIC;
               input_0 : in STD_LOGIC_VECTOR (3 downto 0);
               input_1 : in STD_LOGIC_VECTOR (3 downto 0);
               output : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    component mux_2_to_1_word32 is
        Port ( select_bit : in STD_LOGIC;
               input_0 : in STD_LOGIC_VECTOR (31 downto 0);
               input_1 : in STD_LOGIC_VECTOR (31 downto 0);
               output : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    component Register_File is
        Port ( RegWrite : in STD_LOGIC;
               clock : in STD_LOGIC;
               Rm : in STD_LOGIC_VECTOR (3 downto 0);
               Rn : in STD_LOGIC_VECTOR (3 downto 0);
               Rd : in STD_LOGIC_VECTOR (3 downto 0);
               Write_Data : in STD_LOGIC_VECTOR (31 downto 0);
               Read_Data_1 : out STD_LOGIC_VECTOR (31 downto 0);
               Read_Data_2 : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    component Sign_Extension_Unit is
        Port ( input : in STD_LOGIC_VECTOR (15 downto 0);
               output : out STD_LOGIC_VECTOR (31 downto 0) := (others => 'X'));
    end component;
    
    component ALU is
        Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
               inputB : in STD_LOGIC_VECTOR (31 downto 0);
               ALUop : in STD_LOGIC_VECTOR (7 downto 0);
               result : out STD_LOGIC_VECTOR (31 downto 0);
               C : out STD_LOGIC;
               V : out STD_LOGIC;
               E : out STD_LOGIC;
               N : out STD_LOGIC;
               Z : out STD_LOGIC);
    end component;
    
    component ALU_Control_Unit is
        Port ( input : in STD_LOGIC_VECTOR (7 downto 0);
               output : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
    component Data_Memory is
        Port ( MemWrite : in STD_LOGIC;
               MemRead : in STD_LOGIC;
               clock : in STD_LOGIC;
               Address : in STD_LOGIC_VECTOR (19 downto 0);
               Write_Data : in STD_LOGIC_VECTOR (31 downto 0);
               Data_Read : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    component and_gate_2_input is
        Port ( A : in STD_LOGIC;
               B : in STD_LOGIC;
               output : out STD_LOGIC);
    end component;
    
    component and_gate_3_input is
        Port ( A : in STD_LOGIC;
               B : in STD_LOGIC;
               C : in STD_LOGIC;
               output : out STD_LOGIC);
    end component;
    
    component or_gate_2_input is
        Port ( A : in STD_LOGIC;
               B : in STD_LOGIC;
               output : out STD_LOGIC);
    end component;
    
begin


end Behavioral;
