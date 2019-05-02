----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/01/2019 06:57:45 PM
-- Design Name: 
-- Module Name: ALU_ops - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

package ALU_ops is
  
    type first_stage_code is (Pass_Thru_A,
                            Fsqrt,
                            Fabs,
                            Fneg,
                            Min,
                            Max,
                            Fadd,
                            Fsub,
                            Fmul,
                            Fdiv,
                            Pow,
                            Exp);
    
    type second_stage_code is (Pass_Thru,
                             Floor,
                             Ceil,
                             Round);
                             
    function get_first_stage_slv ( arg : first_stage_code) return STD_LOGIC_VECTOR;
    function get_second_stage_slv ( arg : second_stage_code) return STD_LOGIC_VECTOR;
    function get_ALU_code_slv ( arg : asm_code) return STD_LOGIC_VECTOR;
  
--  constant PASS_THRU: STD_LOGIC_VECTOR(1 downto 0) := "00";
--  constant FLOOR: STD_LOGIC_VECTOR(1 downto 0) := "01";
--  constant CEIL: STD_LOGIC_VECTOR(1 downto 0) := "10";
--  constant ROUND: STD_LOGIC_VECTOR(1 downto 0) := "11";
  

  --type full_ALUop is array (first_stage_code, second_stage_code) of ;

end package ALU_ops;

package body ALU_ops is
    
    function get_first_stage_slv ( arg : first_stage_code) return STD_LOGIC_VECTOR is
        variable temp_slv: STD_LOGIC_VECTOR(3 downto 0);
        begin
            case arg is
                when Pass_Thru_A => temp_slv := x"0";
                when Fsqrt => temp_slv := x"1";
                when Fabs => temp_slv := x"2";
                when Fneg => temp_slv := x"3";
                when Min => temp_slv := x"4";
                when Max => temp_slv := x"5";
                
                when Fadd => temp_slv := x"8";
                when Fsub => temp_slv := x"9";
                when Fmul => temp_slv := x"A";
                when Fdiv => temp_slv := x"B";
                when Pow => temp_slv := x"C";
                when Exp => temp_slv := x"D";
                when others => temp_slv := x"0";
            end case;
            return temp_slv;
        end function get_first_stage_slv;
        
    function get_second_stage_slv ( arg : second_stage_code) return STD_LOGIC_VECTOR is
        variable temp_slv: STD_LOGIC_VECTOR(1 downto 0);
        begin
            case arg is
                when Pass_Thru=> temp_slv := "00";
                when Floor => temp_slv := "01";
                when Ceil => temp_slv := "10";
                when Round => temp_slv := "11";
                when others => temp_slv := "00";
            end case;
            return temp_slv;
        end function get_second_stage_slv;
        
function get_ALU_code_slv ( arg : asm_code) return STD_LOGIC_VECTOR is
        variable temp_slv: STD_LOGIC_VECTOR(7 downto 0);
        begin
            case arg is
                when Set => temp_slv := x"01";
                when Load => temp_slv := x"02";
                when Store => temp_slv := x"03";
                when Move => temp_slv := x"04";
                when Fadd => 
                    temp_slv(3 downto 0) := get_first_stage_slv(Fadd);
                    temp_slv(5 downto 4) := get_second_stage_slv(Pass_Thru);
                when Fsub => 
                    temp_slv(3 downto 0) := get_first_stage_slv(Fsub);
                    temp_slv(5 downto 4) := get_second_stage_slv(Pass_Thru);
                when Fneg => 
                    temp_slv(3 downto 0) := get_first_stage_slv(Fneg);
                    temp_slv(5 downto 4) := get_second_stage_slv(Pass_Thru);
                when Fmul => 
                    temp_slv(3 downto 0) := get_first_stage_slv(Fmul);
                    temp_slv(5 downto 4) := get_second_stage_slv(Pass_Thru);
                when Fdiv => 
                    temp_slv(3 downto 0) := get_first_stage_slv(Fdiv);
                    temp_slv(5 downto 4) := get_second_stage_slv(Pass_Thru);
                when Floor => 
                    temp_slv(3 downto 0) := get_first_stage_slv(Pass_Thru_A);
                    temp_slv(5 downto 4) := get_second_stage_slv(Floor);
                when Ceil => 
                    temp_slv(3 downto 0) := get_first_stage_slv(Pass_Thru_A);
                    temp_slv(5 downto 4) := get_second_stage_slv(Ceil);
                when Round => 
                    temp_slv(3 downto 0) := get_first_stage_slv(Pass_Thru_A);
                    temp_slv(5 downto 4) := get_second_stage_slv(Round);
                when Fabs => 
                    temp_slv(3 downto 0) := get_first_stage_slv(Fabs);
                    temp_slv(5 downto 4) := get_second_stage_slv(Pass_Thru);
                when Min => 
                    temp_slv(3 downto 0) := get_first_stage_slv(Min);
                    temp_slv(5 downto 4) := get_second_stage_slv(Pass_Thru);
                when Max => 
                    temp_slv(3 downto 0) := get_first_stage_slv(Max);
                    temp_slv(5 downto 4) := get_second_stage_slv(Pass_Thru);
                when Pow => 
                    temp_slv(3 downto 0) := get_first_stage_slv(Pow);
                    temp_slv(5 downto 4) := get_second_stage_slv(Pass_Thru);
                when Exp => 
                    temp_slv(3 downto 0) := get_first_stage_slv(Exp);
                    temp_slv(5 downto 4) := get_second_stage_slv(Pass_Thru);
                when Sqrt => 
                    temp_slv(3 downto 0) := get_first_stage_slv(Fsqrt);
                    temp_slv(5 downto 4) := get_second_stage_slv(Pass_Thru);
                when B => temp_slv := x"13";
                when BZ => temp_slv := x"14";
                when BN => temp_slv := x"15";
                when Nop => temp_slv := x"16";
                when Halt => temp_slv := x"17";
                when others => temp_slv := x"17";   
            end case;
            return temp_slv;
        end function get_ALU_code_slv;
        
    function get_first_stage_code ( arg : STD_LOGIC_VECTOR(3 downto 0)) return first_stage_code is
        variable temp_code: first_stage_code;
        begin
            case arg is
                when x"0" => temp_code := Pass_Thru_A;
                when x"1" => temp_code := Fsqrt;
                when x"2" => temp_code := Fabs;
                when x"3" => temp_code := Fneg;
                when x"4" => temp_code := Min;
                when x"5" => temp_code := Max;

                when x"8" => temp_code := Fadd;
                when x"9" => temp_code := Fsub;
                when x"A" => temp_code := Fmul;
                when x"B" => temp_code := Fdiv;
                when x"C" => temp_code := Pow;
                when x"D" => temp_code := Exp;
                when others => temp_code := Pass_Thru_A;  
            end case;
            return temp_code;
        end function get_first_stage_code;

end package body ALU_ops;
