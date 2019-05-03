----------------------------------------------------------------------------------
-- Company: ECGR-3183
-- Engineer: Austin W.
-- 
-- Create Date: 04/29/2019 10:08:48 PM
-- Design Name: 
-- Module Name: no_norm_top - Behavioral
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

entity no_norm_top is
    Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
           inputB : in STD_LOGIC_VECTOR (31 downto 0);
           select_op : in STD_LOGIC_VECTOR (2 downto 0);
           output : out STD_LOGIC_VECTOR (31 downto 0);
           flags_out : out STD_LOGIC_VECTOR(2 downto 0));
end no_norm_top;

architecture Behavioral of no_norm_top is

    component Pass_Thru_A is
        Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
               inputB : in STD_LOGIC_VECTOR (31 downto 0);
               result : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    component Fsqrt is
        Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
               inputB : in STD_LOGIC_VECTOR (31 downto 0);
               result : out STD_LOGIC_VECTOR (31 downto 0);
               E : out STD_LOGIC);
    end component;
    
    component Fabs is
        Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
               inputB : in STD_LOGIC_VECTOR (31 downto 0);
               result : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    component Fneg is
        Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
               inputB : in STD_LOGIC_VECTOR (31 downto 0);
               result : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    component Min is
        Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
               inputB : in STD_LOGIC_VECTOR (31 downto 0);
               result : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    component Max is
        Port ( inputA : in STD_LOGIC_VECTOR (31 downto 0);
               inputB : in STD_LOGIC_VECTOR (31 downto 0);
               result : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    component mux_8_to_1_word32 is
        Port ( selection : in STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
               input_0 : in STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
               input_1 : in STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
               input_2 : in STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
               input_3 : in STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
               input_4 : in STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
               input_5 : in STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
               input_6 : in STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
               input_7 : in STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
               output : out STD_LOGIC_VECTOR (31 downto 0) := (others => '0'));
    end component;
    
    component mux_8_to_1_flags is
        Port ( selection : in STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
               flags_0 : in STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
               flags_1 : in STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
               flags_2 : in STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
               flags_3 : in STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
               flags_4 : in STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
               flags_5 : in STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
               flags_6 : in STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
               flags_7 : in STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
               flags_out : out STD_LOGIC_VECTOR (2 downto 0) := (others => '0'));
        end component;
    
    signal internal_word32_0 : STD_LOGIC_VECTOR(31 downto 0);
    signal internal_word32_1 : STD_LOGIC_VECTOR(31 downto 0);
    signal internal_word32_2 : STD_LOGIC_VECTOR(31 downto 0);
    signal internal_word32_3 : STD_LOGIC_VECTOR(31 downto 0);
    signal internal_word32_4 : STD_LOGIC_VECTOR(31 downto 0);
    signal internal_word32_5 : STD_LOGIC_VECTOR(31 downto 0);
    
    signal internal_flags_1 : STD_LOGIC_VECTOR(2 downto 0); -- Flags signal for Fsqrt
    
begin
    -- port mappings    
    box_Pass_Thru_A: Pass_Thru_A port map(inputA => inputA, inputB => inputB, result => internal_word32_0);
    box_Fsqrt: Fsqrt port map(inputA => inputA, inputB => inputB, result => internal_word32_1, E => internal_flags_1(0));
    box_Fabs: Fabs port map(inputA => inputA, inputB => inputB, result => internal_word32_2);
    box_Fneg: Fneg port map(inputA => inputA, inputB => inputB, result => internal_word32_3);
    box_Min: Min port map(inputA => inputA, inputB => inputB, result => internal_word32_4);
    box_Max: Max port map(inputA => inputA, inputB => inputB, result => internal_word32_5);
    
    box_mux_word32_output: mux_8_to_1_word32 port map(selection => select_op, 
                                        input_0 => internal_word32_0, -- Pass_Thru_A
                                        input_1 => internal_word32_1, -- Fsqrt
                                        input_2 => internal_word32_2, -- Fabs
                                        input_3 => internal_word32_3, -- Fneg
                                        input_4 => internal_word32_4, -- Min
                                        input_5 => internal_word32_5, -- Max
                                        input_6 => (others => '0'), -- Unused
                                        input_7 => (others => '0'), -- Unused
                                        output => output);
                                        
    box_mux_flags_output: mux_8_to_1_flags port map(selection => select_op, 
                                        flags_0 => (others => '0'), -- Unused
                                        flags_1 => internal_flags_1, -- Map for Fsqrt
                                        flags_2 => (others => '0'), -- Unused
                                        flags_3 => (others => '0'), -- Unused
                                        flags_4 => (others => '0'), -- Unused
                                        flags_5 => (others => '0'), -- Unused
                                        flags_6 => (others => '0'), -- Unused
                                        flags_7 => (others => '0'), -- Unused
                                        flags_out => flags_out);

end Behavioral;
