----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Austin W.
-- 
-- Create Date: 05/03/2019 07:45:34 AM
-- Design Name: 
-- Module Name: Forwarding_Unit - Behavioral
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

entity Forwarding_Unit is
    Port ( Rd_EX_M : in STD_LOGIC_VECTOR (3 downto 0);
           opcode_EX_M : in STD_LOGIC_VECTOR (7 downto 0);
           Rd_M_W : in STD_LOGIC_VECTOR (3 downto 0);
           opcode_M_W : in STD_LOGIC_VECTOR (7 downto 0);
           Rn_ID_EX : in STD_LOGIC_VECTOR (3 downto 0);
           Rm_ID_EX : in STD_LOGIC_VECTOR (3 downto 0);
           ForwardA : out STD_LOGIC_VECTOR (1 downto 0);
           ForwardB : out STD_LOGIC_VECTOR (1 downto 0));
end Forwarding_Unit;

architecture Behavioral of Forwarding_Unit is

begin
    
    

end Behavioral;
