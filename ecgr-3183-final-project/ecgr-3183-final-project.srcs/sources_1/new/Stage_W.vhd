----------------------------------------------------------------------------------
-- Company: ECGR-3183
-- Engineer: Austin W.
-- 
-- Create Date: 05/02/2019 03:29:04 PM
-- Design Name: 
-- Module Name: Stage_W - Behavioral
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

entity Stage_W is
    Port ( clock : in STD_LOGIC;
           opcode_in : in STD_LOGIC_VECTOR (7 downto 0);
           opcode_out : out STD_LOGIC_VECTOR (7 downto 0);
           RegWrite_in : in STD_LOGIC;
           RegWrite_out : out STD_LOGIC;
           MemtoReg : in STD_LOGIC;
           Data_Read_in : in STD_LOGIC_VECTOR (31 downto 0);
           Execution_Result : in STD_LOGIC_VECTOR (31 downto 0);
           Rd_in : in STD_LOGIC_VECTOR (3 downto 0);
           Rd_out : out STD_LOGIC_VECTOR (3 downto 0);
           Writeback_Result : out STD_LOGIC_VECTOR (31 downto 0));
end Stage_W;

architecture Behavioral of Stage_W is
    
    component mux_2_to_1_word32 is
        Port ( select_bit : in STD_LOGIC := '0';
               input_0 : in STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
               input_1 : in STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
               output : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
begin
    -- port mappings
    box_mux_Writeback_select: mux_2_to_1_word32 port map(select_bit => MemtoReg, input_0 => Data_Read_in, input_1 => Execution_Result, 
                                                         output => Writeback_Result);
    
    opcode_out <= opcode_in;
    RegWrite_out <= RegWrite_in;
    Rd_out <= Rd_in;

end Behavioral;
