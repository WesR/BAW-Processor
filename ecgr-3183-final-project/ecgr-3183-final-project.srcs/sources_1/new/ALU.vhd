----------------------------------------------------------------------------------
-- Company: ECGR-3183
-- Engineer: 
-- 
-- Create Date: 04/13/2019 05:27:29 PM
-- Design Name: 
-- Module Name: ALU - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
library IEEE_PROPOSED;
use IEEE_PROPOSED.FLOAT_PKG.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
           inputB : in STD_LOGIC_VECTOR (31 downto 0);
           ALUop : in STD_LOGIC_VECTOR (7 downto 0);
           result : out STD_LOGIC_VECTOR (31 downto 0);
           C : out STD_LOGIC;
           V : out STD_LOGIC;
           E : out STD_LOGIC;
           N : out STD_LOGIC;
           Z : out STD_LOGIC);
end ALU;

architecture Behavioral of ALU is

    component first_stage_top is
        Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
               inputB : in STD_LOGIC_VECTOR (31 downto 0);
               op_select : in STD_LOGIC_VECTOR (3 downto 0);
               output : out STD_LOGIC_VECTOR (31 downto 0);
               flags_out : out STD_LOGIC_VECTOR (2 downto 0)); -- (2) is C, (1) is V, (0) is E
    end component;
    
    component second_stage_top is
        Port ( input : in STD_LOGIC_VECTOR (31 downto 0);
               control_select : in STD_LOGIC_VECTOR (1 downto 0);
               output : out STD_LOGIC_VECTOR (31 downto 0);
               flags_out: out STD_LOGIC_VECTOR(1 downto 0));  -- (1) is N, (0) is Z
    end component;
    
    signal internal_sig_op_select: STD_LOGIC_VECTOR(3 downto 0) := ALUop(5 downto 2);
    signal internal_sig_control_select: STD_LOGIC_VECTOR(1 downto 0) := ALUop(1 downto 0);
    signal internal_word32_stage_1_result: STD_LOGIC_VECTOR(31 downto 0);

begin
    --
    --internal_sig_op_select <= ALUop(5 downto 2);
    --internal_sig_control_select <= ALUop(1 downto 0);
    
    -- port mappings    
    box_first_stage: first_stage_top port map(inputA => inputA, inputB => inputB, op_select => internal_sig_op_select, output => internal_word32_stage_1_result, 
                                            flags_out(2) => C, flags_out(1) => V, flags_out(0) => E);
    box_second_stage: second_stage_top port map(input => internal_word32_stage_1_result, control_select => internal_sig_control_select, output => result, 
                                            flags_out(1) => N, flags_out(0) => Z);

end Behavioral;
