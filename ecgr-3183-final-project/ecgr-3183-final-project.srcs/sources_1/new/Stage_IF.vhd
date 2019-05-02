----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/02/2019 11:35:27 AM
-- Design Name: 
-- Module Name: Stage_IF - Behavioral
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

entity Stage_IF is
    Port ( clock : in STD_LOGIC;
           PCSrc : in STD_LOGIC;
           PCWrite : in STD_LOGIC;
           Branch_Address_in : in STD_LOGIC_VECTOR (19 downto 0);
           PC_Address_out : out STD_LOGIC_VECTOR (19 downto 0);
           Instruction_out : out STD_LOGIC_VECTOR (31 downto 0);
           FPValue_out : out STD_LOGIC_VECTOR (31 downto 0));
end Stage_IF;

architecture Behavioral of Stage_IF is
     component mux_PC_input is
       Port ( PCSrc : in STD_LOGIC;
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
   
   signal big_plus_unit_output: STD_LOGIC_VECTOR(19 downto 0);
   signal internal_PC_input: STD_LOGIC_VECTOR(19 downto 0);
   signal internal_PC_output: STD_LOGIC_VECTOR(19 downto 0);
begin
    -- port mappings
    box_mux_PC_input: mux_PC_input port map(PCSrc => PCSrc, input_0 => big_plus_unit_output, input_1 => Branch_Address_in, output => internal_PC_input);
    box_PC: PC port map(PCWrite => PCWrite, input => internal_PC_input, output => internal_PC_output);
    box_Big_Plus_Unit: Big_Plus_Unit port map(input => internal_PC_output, output => big_plus_unit_output);
    box_Instruction_Memory: Instruction_Memory port map(Address => internal_PC_output, clock => clock, Instruction => Instruction_out, 
                                                        Set_Instruction_Workaround => FPValue_out);
    PC_Address_out <= internal_PC_output;

end Behavioral;
