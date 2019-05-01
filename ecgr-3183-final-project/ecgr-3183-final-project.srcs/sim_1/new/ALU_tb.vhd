----------------------------------------------------------------------------------
-- Company: ECGR-3183
-- Engineer: 
-- 
-- Create Date: 04/27/2019 10:10:27 PM
-- Design Name: 
-- Module Name: ALU_tb - Behavioral
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

entity ALU_tb is

end ALU_tb;

architecture Behavioral of ALU_tb is

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
    
    signal clock : STD_LOGIC := '-';
    signal finished : STD_LOGIC := '0';
    
    type result_storage is array (positive range <>) of float32;
    
begin
    -- clock generator
    process
    begin
        clock <= '0';
        wait for 100 ns;
        clock <= '1';
        wait for 100 ns;
    end process;
    
    -- tests
    process(clock)
        constant var_a : float32 := to_float(real(0), exponent_width => 8, fraction_width => 23);
        constant var_b : float32 := to_float(real(-7.25), exponent_width => 8, fraction_width => 23);
    begin
        
    
    end process;

end Behavioral;
