----------------------------------------------------------------------------------
-- Company: ECGR-3183
-- Engineer: 
-- 
-- Create Date: 04/29/2019 10:00:38 PM
-- Design Name: 
-- Module Name: second_stage_top - Behavioral
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity second_stage_top is
    Port ( input : in STD_LOGIC_VECTOR (31 downto 0);
           control_select : in STD_LOGIC_VECTOR (1 downto 0);
           output : out STD_LOGIC_VECTOR (31 downto 0);
           flags_out: out STD_LOGIC_VECTOR(1 downto 0));  -- (1) is N, (0) is Z
end second_stage_top;

architecture Behavioral of second_stage_top is

    component Pass_Thru is
        Port ( input : in STD_LOGIC_VECTOR (31 downto 0);
               output : out STD_LOGIC_VECTOR (31 downto 0);
               flags_out : out STD_LOGIC_VECTOR(1 downto 0));
    end component;
    
    component Floor is
        Port ( input : in STD_LOGIC_VECTOR (31 downto 0);
               output : out STD_LOGIC_VECTOR (31 downto 0);
               flags_out : out STD_LOGIC_VECTOR(1 downto 0));
    end component;
    
    component Ceil is
        Port ( input : in STD_LOGIC_VECTOR (31 downto 0);
               output : out STD_LOGIC_VECTOR (31 downto 0);
               flags_out : out STD_LOGIC_VECTOR(1 downto 0));
    end component;
    
    component Round is
        Port ( input : in STD_LOGIC_VECTOR (31 downto 0);
               output : out STD_LOGIC_VECTOR (31 downto 0);
               flags_out : out STD_LOGIC_VECTOR(1 downto 0));
    end component;
    
    component mux_4_to_1_word32 is
        Port ( selection : in STD_LOGIC_VECTOR (1 downto 0);
               input_0 : in STD_LOGIC_VECTOR (31 downto 0);
               input_1 : in STD_LOGIC_VECTOR (31 downto 0);
               input_2 : in STD_LOGIC_VECTOR (31 downto 0);
               input_3 : in STD_LOGIC_VECTOR (31 downto 0);
               output : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    component mux_4_to_1_flags is
        Port ( selection : in STD_LOGIC_VECTOR (1 downto 0);
               flags_0 : in STD_LOGIC_VECTOR (1 downto 0);
               flags_1 : in STD_LOGIC_VECTOR (1 downto 0);
               flags_2 : in STD_LOGIC_VECTOR (1 downto 0);
               flags_3 : in STD_LOGIC_VECTOR (1 downto 0);
               flags_out : out STD_LOGIC_VECTOR (1 downto 0));
    end component;
    
    signal internal_word32_0 : STD_LOGIC_VECTOR(31 downto 0);
    signal internal_word32_1 : STD_LOGIC_VECTOR(31 downto 0);
    signal internal_word32_2 : STD_LOGIC_VECTOR(31 downto 0);
    signal internal_word32_3 : STD_LOGIC_VECTOR(31 downto 0);
    
    signal internal_flags_0 : STD_LOGIC_VECTOR(1 downto 0);
    signal internal_flags_1 : STD_LOGIC_VECTOR(1 downto 0);
    signal internal_flags_2 : STD_LOGIC_VECTOR(1 downto 0);
    signal internal_flags_3 : STD_LOGIC_VECTOR(1 downto 0);
    
begin
    -- port mappings    
    box_Pass_Thru: Pass_Thru port map(input => input, output => internal_word32_0, flags_out => internal_flags_0);
    box_Floor: Floor port map(input => input, output => internal_word32_1, flags_out => internal_flags_1);
    box_Ceil: Ceil port map(input => input, output => internal_word32_2, flags_out => internal_flags_2);
    box_Round: Round port map(input => input, output => internal_word32_3, flags_out => internal_flags_3);
    
    box_mux_word32_output: mux_4_to_1_word32 port map(selection => control_select, 
                                        input_0 => internal_word32_0, -- Pass_Thru
                                        input_1 => internal_word32_1, -- Floor
                                        input_2 => internal_word32_2, -- Ceil
                                        input_3 => internal_word32_3, -- Round
                                        output => output);
                                        
    box_mux_flags_output: mux_4_to_1_flags port map(selection => control_select, 
                                        flags_0 => internal_flags_0, -- Pass_Thru
                                        flags_1 => internal_flags_1, -- Floor
                                        flags_2 => internal_flags_2, -- Ceil
                                        flags_3 => internal_flags_3, -- Round
                                        flags_out => flags_out);

end Behavioral;
