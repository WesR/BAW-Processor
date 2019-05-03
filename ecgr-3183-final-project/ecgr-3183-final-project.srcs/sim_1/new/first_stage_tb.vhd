----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Austin W.
-- 
-- Create Date: 05/01/2019 01:44:57 AM
-- Design Name: 
-- Module Name: first_stage_tb - Behavioral
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

entity first_stage_tb is
    Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
           inputB : in STD_LOGIC_VECTOR (31 downto 0);
           op_select : in STD_LOGIC_VECTOR (3 downto 0);
           output : out STD_LOGIC_VECTOR (31 downto 0);
           flags_out : out STD_LOGIC_VECTOR (2 downto 0));
end first_stage_tb;

architecture Behavioral of first_stage_tb is

    component first_stage_top is
        Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
               inputB : in STD_LOGIC_VECTOR (31 downto 0);
               op_select : in STD_LOGIC_VECTOR (3 downto 0);
               output : out STD_LOGIC_VECTOR (31 downto 0);
               flags_out : out STD_LOGIC_VECTOR (2 downto 0)); -- (2) is Y, (1) is V, (0) is E
    end component;
    
    signal internal_sig_op_select: STD_LOGIC_VECTOR(3 downto 0) := op_select;
    signal internal_word32_stage_1_result: STD_LOGIC_VECTOR(31 downto 0);
    
begin
    -- port mappings    
    box_first_stage: first_stage_top port map(inputA => inputA, inputB => inputB, op_select => internal_sig_op_select, output => internal_word32_stage_1_result, 
                                            flags_out => flags_out);

end Behavioral;
