----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/01/2019 08:30:25 PM
-- Design Name: 
-- Module Name: shared_ops_types - Behavioral
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

package shared_ops_types is

  type asm_code is (Set,
                    Load,
                    Store,
                    Move,
                    Fadd,
                    Fsub,
                    Fneg,
                    Fmul,
                    Fdiv,
                    Floor,
                    Ceil,
                    Round,
                    Fabs,
                    Min,
                    Max,
                    Pow,
                    Exp,
                    Sqrt,
                    B,
                    BZ,
                    BN,
                    Nop,
                    Halt);
                    
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

end package shared_ops_types;
