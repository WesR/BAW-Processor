----------------------------------------------------------------------------------
-- Company: ECGR-3183
-- Engineer: 
-- 
-- Create Date: 04/28/2019 01:27:48 PM
-- Design Name: 
-- Module Name: yes_norm_top - Behavioral
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

entity yes_norm_top is
    Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
           inputB : in STD_LOGIC_VECTOR (31 downto 0);
           select_op : in STD_LOGIC_VECTOR (2 downto 0);
           output : out STD_LOGIC_VECTOR (31 downto 0);
           flags_out : out STD_LOGIC_VECTOR (2 downto 0));
end yes_norm_top;

architecture Behavioral of yes_norm_top is

    component Pre_Normalize is
        Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
               inputB : in STD_LOGIC_VECTOR (31 downto 0);
               outputA : out STD_LOGIC_VECTOR (31 downto 0);
               outputB : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    component Fadd is
        Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
               inputB : in STD_LOGIC_VECTOR (31 downto 0);
               result : out STD_LOGIC_VECTOR (31 downto 0);
               CY : out STD_LOGIC;
               OV : out STD_LOGIC);
    end component;
    
    component Fsub is
        Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
               inputB : in STD_LOGIC_VECTOR (31 downto 0);
               result : out STD_LOGIC_VECTOR (31 downto 0);
               CY : out STD_LOGIC;
               OV : out STD_LOGIC);
    end component;
    
    component Fmul is
        Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
               inputB : in STD_LOGIC_VECTOR (31 downto 0);
               result : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    component Fdiv is
        Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
               inputB : in STD_LOGIC_VECTOR (31 downto 0);
               result : out STD_LOGIC_VECTOR (31 downto 0);
               E : out STD_LOGIC);
    end component;
    
    component Pow is
        Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
               inputB : in STD_LOGIC_VECTOR (31 downto 0);
               result : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    component Exp is
        Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
               inputB : in STD_LOGIC_VECTOR (31 downto 0);
               result : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    component Post_Normalize is
        Port ( input : in STD_LOGIC_VECTOR (31 downto 0);
               output : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    component mux_8_to_1_word32 is
        Port ( selection : in STD_LOGIC_VECTOR (2 downto 0);
               input_0 : in STD_LOGIC_VECTOR (31 downto 0);
               input_1 : in STD_LOGIC_VECTOR (31 downto 0);
               input_2 : in STD_LOGIC_VECTOR (31 downto 0);
               input_3 : in STD_LOGIC_VECTOR (31 downto 0);
               input_4 : in STD_LOGIC_VECTOR (31 downto 0);
               input_5 : in STD_LOGIC_VECTOR (31 downto 0);
               input_6 : in STD_LOGIC_VECTOR (31 downto 0);
               input_7 : in STD_LOGIC_VECTOR (31 downto 0);
               output : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    component mux_8_to_1_flags is
        Port ( selection : in STD_LOGIC_VECTOR (2 downto 0);
               flags_0 : in STD_LOGIC_VECTOR (2 downto 0);
               flags_1 : in STD_LOGIC_VECTOR (2 downto 0);
               flags_2 : in STD_LOGIC_VECTOR (2 downto 0);
               flags_3 : in STD_LOGIC_VECTOR (2 downto 0);
               flags_4 : in STD_LOGIC_VECTOR (2 downto 0);
               flags_5 : in STD_LOGIC_VECTOR (2 downto 0);
               flags_6 : in STD_LOGIC_VECTOR (2 downto 0);
               flags_7 : in STD_LOGIC_VECTOR (2 downto 0);
               flags_out : out STD_LOGIC_VECTOR (2 downto 0));
    end component;
    
    signal internal_pre_norm_A : STD_LOGIC_VECTOR(31 downto 0);
    signal internal_pre_norm_B : STD_LOGIC_VECTOR(31 downto 0);
    
    signal internal_word32_0 : STD_LOGIC_VECTOR(31 downto 0);
    signal internal_word32_1 : STD_LOGIC_VECTOR(31 downto 0);
    signal internal_word32_2 : STD_LOGIC_VECTOR(31 downto 0);
    signal internal_word32_3 : STD_LOGIC_VECTOR(31 downto 0);
    signal internal_word32_4 : STD_LOGIC_VECTOR(31 downto 0);
    signal internal_word32_5 : STD_LOGIC_VECTOR(31 downto 0);
    
    signal internal_flags_0 : STD_LOGIC_VECTOR(2 downto 0); -- Flags signal for Fadd
    signal internal_flags_1 : STD_LOGIC_VECTOR(2 downto 0); -- Flags signal for Fsub
    
    signal internal_flags_3 : STD_LOGIC_VECTOR(2 downto 0); -- Flags signal for Fdiv
begin
    -- port mappings
    box_Pre_Norm: Pre_Normalize port map(inputA => inputA, inputB => inputB, outputA => internal_pre_norm_A, outputB => internal_pre_norm_B);
    
    box_Fadd: Fadd port map(inputA => internal_pre_norm_a, inputB => internal_pre_norm_b, result => internal_word32_0, 
                                CY => internal_flags_0(2), OV => internal_flags_0(1));  
    box_Fsub: Fsub port map(inputA => internal_pre_norm_a, inputB => internal_pre_norm_b, result => internal_word32_1, 
                                CY => internal_flags_1(2), OV => internal_flags_1(1));
    box_Fmul: Fmul port map(inputA => internal_pre_norm_a, inputB => internal_pre_norm_b, result => internal_word32_2);
    box_Fdiv: Fdiv port map(inputA => internal_pre_norm_a, inputB => internal_pre_norm_b, result => internal_word32_3, E => internal_flags_3(0));
    box_Pow: Pow port map(inputA => internal_pre_norm_a, inputB => internal_pre_norm_b, result => internal_word32_4);
    box_Exp: Exp port map(inputA => internal_pre_norm_a, inputB => internal_pre_norm_b, result => internal_word32_5);
    
    box_Post_Norm: Post_Normalize port map(input => inputA, output => internal_pre_norm_A);
    
    box_mux_word32_output: mux_8_to_1_word32 port map(selection => select_op, 
                                        input_0 => internal_word32_0, -- Fadd
                                        input_1 => internal_word32_1, -- Fsub
                                        input_2 => internal_word32_2, -- Fmul
                                        input_3 => internal_word32_3, -- Fdiv
                                        input_4 => internal_word32_4, -- Pow
                                        input_5 => internal_word32_5, -- Exp
                                        input_6 => (others => '0'), -- Unused
                                        input_7 => (others => '0'), -- Unused
                                        output => output);
                                        
    box_mux_flags_output: mux_8_to_1_flags port map(selection => select_op, 
                                        flags_0 => internal_flags_0, -- Map for Fadd
                                        flags_1 => internal_flags_1, -- Map for Fsub
                                        flags_2 => (others => '0'), -- Unused
                                        flags_3 => internal_flags_3, -- Map for Fdiv
                                        flags_4 => (others => '0'), -- Unused
                                        flags_5 => (others => '0'), -- Unused
                                        flags_6 => (others => '0'), -- Unused
                                        flags_7 => (others => '0'), -- Unused
                                        flags_out => flags_out);
                                        
end Behavioral;
