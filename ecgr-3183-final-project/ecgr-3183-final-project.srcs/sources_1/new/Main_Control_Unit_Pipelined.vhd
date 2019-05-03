----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Austin W.
-- 
-- Create Date: 05/02/2019 10:09:22 AM
-- Design Name: 
-- Module Name: Main_Control_Unit_Pipelined - Behavioral
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
library opcode_lib;
use opcode_lib.shared_ops_types.asm_code;
use opcode_lib.processor_ops.all;
use opcode_lib.ALU_ops.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Main_Control_Unit_Pipelined is
    Port ( opcode : in STD_LOGIC_VECTOR (7 downto 0);
           Reg2Loc : out STD_LOGIC;
           ALUSrc : out STD_LOGIC;
           MemtoReg : out STD_LOGIC;
           RegWrite : out STD_LOGIC;
           MemRead : out STD_LOGIC;
           MemWrite : out STD_LOGIC;
           Branch : out STD_LOGIC;
           UncondBranch : out STD_LOGIC;
           ID_Flush : out STD_LOGIC;
           EX_Flush : out STD_LOGIC);
end Main_Control_Unit_Pipelined;

architecture Behavioral of Main_Control_Unit_Pipelined is

begin

    process(opcode)
        variable temp_slv: STD_LOGIC_VECTOR(7 downto 0);
        variable temp_opcode: asm_code;
    begin
        temp_opcode := get_asm_code(opcode);
        
        case temp_opcode is
            when Set => temp_slv := x"70";
            when Load => temp_slv := x"58";
            when Store => temp_slv := x"E4";
            when B => temp_slv := x"41";
            when BZ => temp_slv := x"42";
            when BN => temp_slv := x"42";
            when Nop => temp_slv := x"00";
            when Halt => temp_slv := x"00";
            when others => temp_slv := x"30";   
        end case;
        
        Reg2Loc <= temp_slv(7);
        ALUSrc <= temp_slv(6);
        MemtoReg <= temp_slv(5);
        RegWrite <= temp_slv(4);
        MemRead <= temp_slv(3);
        MemWrite <= temp_slv(2);
        Branch <= temp_slv(1);
        UncondBranch <= temp_slv(0);
        
        --wait for 1 ns;
    end process;

end Behavioral;
