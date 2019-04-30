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
               flags_out : out STD_LOGIC_VECTOR (2 downto 0));
    end component;
    
    component second_stage_top is
        Port ( input : in STD_LOGIC_VECTOR (31 downto 0);
               control_select : in STD_LOGIC_VECTOR (1 downto 0);
               output : out STD_LOGIC_VECTOR (31 downto 0);
               Z : out STD_LOGIC;
               N : out STD_LOGIC);
    end component;
    
    signal internal_word32_stage_1_result: STD_LOGIC_VECTOR(31 downto 0);

begin


end Behavioral;
