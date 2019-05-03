----------------------------------------------------------------------------------
-- Company: ECGR-3183
-- Engineer: Austin W.
-- 
-- Create Date: 05/03/2019 06:10:58 AM
-- Design Name: 
-- Module Name: Hazard_Detection_Unit - Behavioral
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
library IEEE_PROPOSED;
use IEEE_PROPOSED.FLOAT_PKG.ALL;

library opcode_lib;
use opcode_lib.shared_ops_types.all;
use opcode_lib.processor_ops.all;
use opcode_lib.ALU_ops.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Hazard_Detection_Unit is
    Port ( ID_EX_MemRead : in STD_LOGIC;
           Rd_ID_EX : in STD_LOGIC_VECTOR (3 downto 0);
           Instruction_in : in STD_LOGIC_VECTOR (31 downto 0);
           IF_IDWrite : out STD_LOGIC;
           IF_Flush : out STD_LOGIC;
           HDU_Flush : out STD_LOGIC;
           PCWrite : out STD_LOGIC);
end Hazard_Detection_Unit;

architecture Behavioral of Hazard_Detection_Unit is

begin
    process(Instruction_in)
        variable op: asm_code;
        variable Rm_IF_ID, Rn_IF_ID: STD_LOGIC_VECTOR(3 downto 0);
    begin
        Rm_IF_ID := Instruction_in(23 downto 20);
        op := get_asm_code(Instruction_in(31 downto 24));
        if(op = Store) then
            Rn_IF_ID := Instruction_in(3 downto 0);
        else
            Rn_IF_ID := Instruction_in(7 downto 4);
        end if;
        
        if(ID_EX_MemRead = '1') AND ((Rd_ID_EX = Rn_IF_ID) OR (Rd_ID_EX = Rm_IF_ID)) then
            
        end if;
    end process;

end Behavioral;
