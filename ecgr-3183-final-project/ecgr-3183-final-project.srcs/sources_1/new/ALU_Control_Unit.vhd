----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/01/2019 06:43:42 PM
-- Design Name: 
-- Module Name: ALU_Control_Unit - Behavioral
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

library opcode_lib;
use opcode_lib.processor_ops.all;
use opcode_lib.ALU_ops.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_Control_Unit is
    Port ( input : in STD_LOGIC_VECTOR (7 downto 0);
           output : out STD_LOGIC_VECTOR (7 downto 0));
end ALU_Control_Unit;

architecture Behavioral of ALU_Control_Unit is

begin

    output <= get_ALU_code_slv(get_asm_code(input));

--    process(input)
--        variable first_stage_op: STD_LOGIC_VECTOR(3 downto 0);
--        variable second_stage_op: STD_LOGIC_VECTOR(1 downto 0);
--    begin
--    output <= input_0 when (input = "") else
--              input_1 when (selection = "001") else
--              input_2 when (selection = "010") else
--              input_3 when (selection = "011") else
--              input_4 when (selection = "100") else
--              input_5 when (selection = "101") else
--              input_6 when (selection = "110") else
--              input_7 when (selection = "111") else
--              (others => '-'); -- indicate error
--    end process;
    
end Behavioral;
