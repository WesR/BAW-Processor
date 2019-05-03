----------------------------------------------------------------------------------
-- Company: ECGR-3183
-- Engineer: 
-- 
-- Create Date: 05/02/2019 04:57:46 AM
-- Design Name: 
-- Module Name: PipelinedArch - Behavioral
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

entity PipelinedArch is
    Port ( clock : in STD_LOGIC);
end PipelinedArch;

architecture Behavioral of PipelinedArch is
    
    component Stage_IF is
        Port ( clock : in STD_LOGIC;
               PCSrc : in STD_LOGIC;
               PCWrite : in STD_LOGIC;
               Branch_Address_in : in STD_LOGIC_VECTOR (19 downto 0);
               PC_Address_out : out STD_LOGIC_VECTOR (19 downto 0);
               Instruction_out : out STD_LOGIC_VECTOR (31 downto 0);
               FPValue_out : out STD_LOGIC_VECTOR (31 downto 0) := (others => '0'));
    end component;
    
    signal system_clock: STD_LOGIC;
    signal PCSrc: STD_LOGIC;
    signal PCWrite: STD_LOGIC;

    signal PCSrc: STD_LOGIC;
    signal PCSrc: STD_LOGIC;
    
begin
    -- port mappings
    box_Fetch: Stage_IF port map(clock => clock, PCSrc => PCSrc, PCWrite => PCWrite);
    
    process
    begin
        system_clock <= '0';
        wait for 50 ns;
        system_clock <= '1';
        wait for 50 ns;
    end if;

end Behavioral;
