----------------------------------------------------------------------------------
-- Company: ECGR-3183
-- Engineer: Austin W.
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
-- Port();
end SingleCycleArch;

architecture Behavioral of SingleCycleArch is
    component mux_PC_input is
        Port ( selection : in STD_LOGIC;
               input_0 : in STD_LOGIC_VECTOR (19 downto 0);
               input_1 : in STD_LOGIC_VECTOR (19 downto 0);
               output : out STD_LOGIC_VECTOR (19 downto 0));
    end component;
    
    component PC is
        Port ( PCWrite : in STD_LOGIC := '0';
               input : in STD_LOGIC_VECTOR (19 downto 0);
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
        Port ( opcode : in STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
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
               output : out STD_LOGIC_VECTOR (31 downto 0) := (others => '0'));
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
    
    signal system_clock: STD_LOGIC := '0';
    signal PCSrc: STD_LOGIC;
    signal PC_in: STD_LOGIC_VECTOR(19 downto 0);
    signal PC_Address_out: STD_LOGIC_VECTOR(19 downto 0);
    signal Big_Plus_Unit_out: STD_LOGIC_VECTOR(19 downto 0);
    signal Instruction: STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    signal FPValue: STD_LOGIC_VECTOR(31 downto 0);
    
    signal Reg2Loc, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, UncondBranch: STD_LOGIC;
    
    signal Rn: STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal Read_Data_1, Read_Data_2, Write_Data: STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    
    signal Write_Data_select: STD_LOGIC;
    
    signal Sign_Extended_Val: STD_LOGIC_VECTOR(31 downto 0);
    signal ALU_input_B: STD_LOGIC_VECTOR(31 downto 0);
    signal ALU_Control_Unit_output: STD_LOGIC_VECTOR(7 downto 0);
    signal ALUResult: STD_LOGIC_VECTOR(31 downto 0);
    signal N, Z: STD_LOGIC := '0';
    
    signal Data_Read: STD_LOGIC_VECTOR(31 downto 0);
    
    signal Writeback_Result: STD_LOGIC_VECTOR(31 downto 0);
    
begin
    -- port mappings
    box_mux_PC_input: mux_PC_input port map(selection => PCSrc, input_0 => Big_Plus_Unit_out, input_1 => Instruction(19 downto 0), output => PC_in);
    box_PC: PC port map(PCWrite => '0', input => PC_in, output => PC_Address_out);
    box_Instruction_Memory: Instruction_Memory port map(Address => PC_Address_out, clock => system_clock, Instruction => Instruction, 
                                                        Set_Instruction_Workaround => FPValue);
                                                        
    box_Main_Control_Unit: Main_Control_Unit_Single_Cycle port map(opcode => Instruction(31 downto 24), Reg2Loc => Reg2Loc, ALUSrc => ALUSrc, 
                                                                   MemtoReg => MemtoReg, RegWrite => RegWrite, MemRead => MemRead, MemWrite => MemWrite, 
                                                                   Branch => Branch, UncondBranch => UncondBranch);
    
    box_mux_reg_select: mux_2_to_1_reg_select port map(Reg2Loc => Reg2Loc, input_0 => Instruction(7 downto 4), input_1 => Instruction(3 downto 0), output => Rn);
    box_Register_File: Register_File port map(RegWrite => RegWrite, clock => system_clock, Rm => Instruction(23 downto 20), Rn => Rn, Rd => Instruction(3 downto 0), 
                                              Read_Data_1 => Read_Data_1, Read_Data_2 => Read_Data_2, Write_Data => Write_Data);
    box_mux_Write_Data_select: mux_2_to_1_word32 port map(select_bit => Write_Data_select, input_0 => Writeback_Result, input_1 => FPValue, output => Write_Data);
    box_AND_Write_Data_Select: and_gate_3_input port map(A => ALUSrc, B => MemtoReg, C => RegWrite, output => Write_Data_select);
    
    box_Sign_Extension_Unit: Sign_Extension_Unit port map(input => Instruction(19 downto 4), output => Sign_Extended_Val);
    box_mux_ALU_inputB: mux_2_to_1_word32 port map(select_bit => ALUSrc, input_0 => Read_Data_2, input_1 => Sign_Extended_Val, output => ALU_input_B);
    box_ALU_Control_Unit: ALU_Control_Unit port map(input => Instruction(31 downto 24), output => ALU_Control_Unit_output);
    box_ALU: ALU port map(inputA => Read_Data_1, inputB => ALU_input_B, ALUop => ALU_Control_Unit_output, result => ALUResult, N => N, Z => Z);
    
    box_Data_Memory: Data_Memory port map(MemWrite => MemWrite, MemRead => MemRead, clock => system_clock, Address => ALUResult, Write_Data => Read_Data_2);
    
    box_mux_Writeback_Result_select: mux_2_to_1_word32 port map(select_bit => MemtoReg, input_0 =>Data_Read, input_1 => ALUResult, output => Writeback_Result);
    
    process
    begin
        system_clock <= '0';
        wait for 100 ns;
        system_clock <= '1';
        wait for 100 ns;
    end process;

end Behavioral;
