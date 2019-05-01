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
    
    signal sig_input_a: STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    signal sig_input_b: STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    signal sig_ALUop: STD_LOGIC_VECTOR(7 downto 0);
    signal sig_result: STD_LOGIC_VECTOR(31 downto 0);
    signal sig_carry: STD_LOGIC;
    signal sig_overflow: STD_LOGIC;
    signal sig_error: STD_LOGIC;
    signal sig_non_zero: STD_LOGIC;
    signal sig_zero: STD_LOGIC;
    
    type result_storage is array (positive range <>) of float32;
    
begin
    
    box_ALU: ALU port map(inputA => sig_input_a, inputB => sig_input_b, ALUop => sig_ALUop, result => sig_result, 
                        C => sig_carry, V => sig_overflow, E => sig_error, N => sig_non_zero, Z => sig_zero);
    
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
                                                -- -87.625
        constant var_a : float32 := to_float(real(-87.625), exponent_width => 8, fraction_width => 23);
        constant var_b : float32 := to_float(real(-7.25), exponent_width => 8, fraction_width => 23);
    begin
        if rising_edge(clock) then
            sig_input_a <= to_slv(var_a);
            sig_input_b <= to_slv(var_b);
            sig_ALUop <= "00101000"; -- multiply
        end if;
        
        
--        sig_input_a <= to_slv(var_a);
--        sig_input_b <= to_slv(var_b);
--        sig_ALUop <= "00100000"; -- add
    
    end process;

end Behavioral;
