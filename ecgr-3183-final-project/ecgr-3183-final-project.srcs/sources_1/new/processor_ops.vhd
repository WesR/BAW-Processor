----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Austin W.
-- 
-- Create Date: 05/01/2019 06:57:45 PM
-- Design Name: 
-- Module Name: processor_ops - Behavioral
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
use opcode_lib.shared_ops_types.asm_code;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

package processor_ops is

--  type asm_code is (Set,
--                    Load,
--                    Store,
--                    Move,
--                    Fadd,
--                    Fsub,
--                    Fneg,
--                    Fmul,
--                    Fdiv,
--                    Floor,
--                    Ceil,
--                    Round,
--                    Fabs,
--                    Min,
--                    Max,
--                    Pow,
--                    Exp,
--                    Sqrt,
--                    B,
--                    BZ,
--                    BN,
--                    Nop,
--                    Halt);
                    
    function get_asm_slv ( arg : asm_code) return STD_LOGIC_VECTOR;
    function get_asm_code ( arg : STD_LOGIC_VECTOR(7 downto 0)) return asm_code;

  --type full_ALUop is array (first_stage_code, second_stage_code) of ;

end package processor_ops;

package body processor_ops is
    
    function get_asm_slv ( arg : asm_code) return STD_LOGIC_VECTOR is
        variable temp_slv: STD_LOGIC_VECTOR(7 downto 0);
        begin
            case arg is
                when Set => temp_slv := x"01";
                when Load => temp_slv := x"02";
                when Store => temp_slv := x"03";
                when Move => temp_slv := x"04";
                when Fadd => temp_slv := x"05";
                when Fsub => temp_slv := x"06";
                when Fneg => temp_slv := x"07";
                when Fmul => temp_slv := x"08";
                when Fdiv => temp_slv := x"09";
                when Floor => temp_slv := x"0A";
                when Ceil => temp_slv := x"0B";
                when Round => temp_slv := x"0C";
                when Fabs => temp_slv := x"0D";
                when Min => temp_slv := x"0E";
                when Max => temp_slv := x"0F";
                when Pow => temp_slv := x"10";
                when Exp => temp_slv := x"11";
                when Sqrt => temp_slv := x"12";
                when B => temp_slv := x"13";
                when BZ => temp_slv := x"14";
                when BN => temp_slv := x"15";
                when Nop => temp_slv := x"16";
                when Halt => temp_slv := x"17";
                when others => temp_slv := x"17";   
            end case;
            return temp_slv;
        end function get_asm_slv;
        
    function get_asm_code ( arg : STD_LOGIC_VECTOR(7 downto 0)) return asm_code is
        variable temp_asm_code: asm_code;
        begin
            case arg is
                when x"01" => temp_asm_code := Set;
                when x"02" => temp_asm_code := Load;
                when x"03" => temp_asm_code := Store;
                when x"04" => temp_asm_code := Move;
                when x"05" => temp_asm_code := Fadd;
                when x"06" => temp_asm_code := Fsub;
                when x"07" => temp_asm_code := Fneg;
                when x"08" => temp_asm_code := Fmul;
                when x"09" => temp_asm_code := Fdiv;
                when x"0A" => temp_asm_code := Floor;
                when x"0B" => temp_asm_code := Ceil;
                when x"0C" => temp_asm_code := Round;
                when x"0D" => temp_asm_code := Fabs;
                when x"0E" => temp_asm_code := Min;
                when x"0F" => temp_asm_code := Max;
                when x"10" => temp_asm_code := Pow;
                when x"11" => temp_asm_code := Exp;
                when x"12" => temp_asm_code := Sqrt;
                when x"13" => temp_asm_code := B;
                when x"14" => temp_asm_code := BZ;
                when x"15" => temp_asm_code := BN;
                when x"16" => temp_asm_code := Nop;
                when x"17" => temp_asm_code := Halt;
                when others => temp_asm_code := Halt;  
            end case;
            return temp_asm_code;
        end function get_asm_code;

end package body processor_ops;
