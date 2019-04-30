----------------------------------------------------------------------------------
-- Company: ECGR-3183
-- Engineer: 
-- 
-- Create Date: 04/29/2019 10:00:38 PM
-- Design Name: 
-- Module Name: first_stage_top - Behavioral
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

entity first_stage_top is
    Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
           inputB : in STD_LOGIC_VECTOR (31 downto 0);
           op_select : in STD_LOGIC_VECTOR (3 downto 0);
           output : out STD_LOGIC_VECTOR (31 downto 0);
           flags_out : out STD_LOGIC_VECTOR (2 downto 0)); -- (2) is CY, (1) is OV, (0) is E
end first_stage_top;

architecture Behavioral of first_stage_top is
    
    component no_norm_top is
        Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
               inputB : in STD_LOGIC_VECTOR (31 downto 0);
               select_op : in STD_LOGIC_VECTOR (2 downto 0);
               output : out STD_LOGIC_VECTOR (31 downto 0);
               flags_out : out STD_LOGIC_VECTOR(2 downto 0));
    end component;
    
    component yes_norm_top is
        Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
               inputB : in STD_LOGIC_VECTOR (31 downto 0);
               select_op : in STD_LOGIC_VECTOR (2 downto 0);
               output : out STD_LOGIC_VECTOR (31 downto 0);
               flags_out : out STD_LOGIC_VECTOR (2 downto 0));
    end component;
    
    component mux_2_to_1_word32 is
        Port ( select_bit : in STD_LOGIC;
               input_0 : in STD_LOGIC_VECTOR (31 downto 0);
               input_1 : in STD_LOGIC_VECTOR (31 downto 0);
               output : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    component mux_2_to_1_flags is
        Port ( select_bit : in STD_LOGIC;
               flags_0 : in STD_LOGIC_VECTOR (2 downto 0);
               flags_1 : in STD_LOGIC_VECTOR (2 downto 0);
               flags_out : out STD_LOGIC_VECTOR (2 downto 0));
    end component;
    
    signal internal_word32_0 : STD_LOGIC_VECTOR(31 downto 0); -- Result signal from no_norm_top
    signal internal_word32_1 : STD_LOGIC_VECTOR(31 downto 0); -- Result signal from yes_norm_top
    
    signal internal_flags_0 : STD_LOGIC_VECTOR(2 downto 0); -- Flags signal for no_norm_top
    signal internal_flags_1 : STD_LOGIC_VECTOR(2 downto 0); -- Flags signal for yes_norm_top
    
begin
    -- port mappings    
    box_No_Norm_Top: no_norm_top port map(inputA => inputA, inputB => inputB, select_op => op_select(2 downto 0), output => internal_word32_0, flags_out => internal_flags_0);
    box_Yes_Norm_Top: yes_norm_top port map(inputA => inputA, inputB => inputB, select_op => op_select(2 downto 0), output => internal_word32_1, flags_out => internal_flags_1);
    
    box_mux_word32_output: mux_2_to_1_word32 port map(select_bit => op_select(3), input_0 => internal_word32_0, input_1 => internal_word32_1, output => output);
    box_mux_flags_output: mux_2_to_1_flags port map(select_bit => op_select(3), flags_0 => internal_flags_0, flags_1 => internal_flags_1, flags_out => flags_out);
    
end Behavioral;
