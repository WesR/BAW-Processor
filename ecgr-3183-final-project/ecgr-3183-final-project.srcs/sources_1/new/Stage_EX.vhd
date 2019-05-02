----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/02/2019 01:28:50 PM
-- Design Name: 
-- Module Name: Stage_EX - Behavioral
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

entity Stage_EX is
    Port ( clock : in STD_LOGIC;
           EX_Flush : in STD_LOGIC;
--           ID_EX_MemRead : out STD_LOGIC;
           ALUSrc : in STD_LOGIC;
           WB_in : in STD_LOGIC_VECTOR(9 downto 0);
           WB_out : out STD_LOGIC_VECTOR(9 downto 0);
           M_in : in STD_LOGIC_VECTOR(4 downto 0);
           M_out : out STD_LOGIC_VECTOR(4 downto 0);
           Read_Data_1_in : in STD_LOGIC_VECTOR (31 downto 0);
           ALUResult : out STD_LOGIC_VECTOR (31 downto 0);
           N : out STD_LOGIC;
           Z : out STD_LOGIC;
           Read_Data_2_in : in STD_LOGIC_VECTOR (31 downto 0);
           Read_Data_2_out : out STD_LOGIC_VECTOR (31 downto 0);
           Sign_Extended_in : in STD_LOGIC_VECTOR (31 downto 0);
           Rd_in : in STD_LOGIC_VECTOR (3 downto 0);
           Rd_out : out STD_LOGIC_VECTOR (3 downto 0);
           Execution_Result : in STD_LOGIC_VECTOR(31 downto 0);
           Writeback_Result : in STD_LOGIC_VECTOR(31 downto 0);
           ForwardA : in STD_LOGIC_VECTOR(1 downto 0);
           ForwardB : in STD_LOGIC_VECTOR(1 downto 0));
end Stage_EX;

architecture Behavioral of Stage_EX is
    
    component mux_4_to_1_word32 is
        Port ( selection : in STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
               input_0 : in STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
               input_1 : in STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
               input_2 : in STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
               input_3 : in STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
               output : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    component mux_4_to_1_flags is
        Port ( selection : in STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
               flags_0 : in STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
               flags_1 : in STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
               flags_2 : in STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
               flags_3 : in STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
               flags_out : out STD_LOGIC_VECTOR (1 downto 0));
    end component;
    
    component mux_2_to_1_word32 is
        Port ( select_bit : in STD_LOGIC := '0';
               input_0 : in STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
               input_1 : in STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
               output : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    component mux_2_to_1_flags is
        Port ( select_bit : in STD_LOGIC := '0';
               flags_0 : in STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
               flags_1 : in STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
               flags_out : out STD_LOGIC_VECTOR (2 downto 0));
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
    
    signal ALU_input_A: STD_LOGIC_VECTOR(31 downto 0);
    signal ALU_input_B: STD_LOGIC_VECTOR(31 downto 0);
    signal ALU_Control_Unit_output: STD_LOGIC_VECTOR(31 downto 0);
    signal internal_connector_for_ALUSrc_muxes: STD_LOGIC_VECTOR(31 downto 0);
    signal internal_mux_WB_M_combined: STD_LOGIC_VECTOR(31 downto 0);
    
begin
    -- port mappings
    box_mux_Forward_A_select: mux_4_to_1_word32 port map(selection => ForwardA, input_0 => Read_Data_1_in, input_1 => Execution_Result,
                                                         input_2 => Writeback_Result, output => ALU_input_A);
    box_mux_Forward_B_select: mux_4_to_1_word32 port map(selection => ForwardB, input_0 => Read_Data_2_in, input_1 => Execution_Result,
                                                         input_2 => Writeback_Result, output => internal_connector_for_ALUSrc_muxes);
    box_mux_ALU_inputB: mux_2_to_1_word32 port map(select_bit => ALUSrc, input_0 => internal_connector_for_ALUSrc_muxes, 
                                                   input_1 => Sign_Extended_in, output => ALU_input_B);
    
    internal_mux_WB_M_combined(9 downto 0) <= WB_in;
    internal_mux_WB_M_combined(14 downto 10) <= M_in;
    box_mux_WB_M_combo: mux_2_to_1_word32 port map(select_bit => EX_Flush, input_0 => internal_mux_WB_M_combined, 
                                                   output(9 downto 0) => WB_out, output(14 downto 10) => M_out);
    
    box_ALU: ALU port map(inputA => ALU_input_A, inputB => ALU_input_B, ALUop => ALU_Control_Unit_output, result => ALUResult, N => N, Z => Z);
    box_ALU_Control_Unit: ALU_Control_Unit port map(input => WB_in(7 downto 0), output => ALU_Control_Unit_output);
    
    Read_Data_2_out <= Read_Data_2_in;
    Rd_out <= Rd_in;

end Behavioral;
