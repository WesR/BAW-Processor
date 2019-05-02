----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/02/2019 01:28:50 PM
-- Design Name: 
-- Module Name: Stage_EX - Behavioral
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

entity Stage_EX is
    Port ( clock : in STD_LOGIC;
           EX_Flush : in STD_LOGIC;
           ID_EX_MemRead : out STD_LOGIC;
           ALUSrc : in STD_LOGIC;
           Read_Data_1_in : in STD_LOGIC_VECTOR (31 downto 0);
           ALUResult : out STD_LOGIC_VECTOR (31 downto 0);
           Read_Data_2_in : in STD_LOGIC_VECTOR (31 downto 0);
           Read_Data_2_out : out STD_LOGIC_VECTOR (31 downto 0);
           Rd_in : in STD_LOGIC_VECTOR (3 downto 0);
           Rd_out : out STD_LOGIC_VECTOR (3 downto 0);
           ForwardA : in STD_LOGIC;
           ForwardB : in STD_LOGIC);
end Stage_EX;

architecture Behavioral of Stage_EX is
    
    component mux_4_to_1_word32 is
        Port ( selection : in STD_LOGIC_VECTOR (1 downto 0);
               input_0 : in STD_LOGIC_VECTOR (31 downto 0);
               input_1 : in STD_LOGIC_VECTOR (31 downto 0);
               input_2 : in STD_LOGIC_VECTOR (31 downto 0);
               input_3 : in STD_LOGIC_VECTOR (31 downto 0);
               output : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    component mux_2_to_1_word32 is
        Port ( select_bit : in STD_LOGIC;
               input_0 : in STD_LOGIC_VECTOR (31 downto 0);
               input_1 : in STD_LOGIC_VECTOR (31 downto 0);
               output : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
begin


end Behavioral;
