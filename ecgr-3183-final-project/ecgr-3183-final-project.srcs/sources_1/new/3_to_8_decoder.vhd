----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/28/2019 12:15:59 AM
-- Design Name: 
-- Module Name: decoder_4_to_16 - Behavioral
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

entity decoder_4_to_16 is
    Port ( input : in STD_LOGIC_VECTOR (3 downto 0);
           output_0 : out STD_LOGIC;
           output_1 : out STD_LOGIC;
           output_2 : out STD_LOGIC;
           output_3 : out STD_LOGIC;
           output_4 : out STD_LOGIC;
           output_5 : out STD_LOGIC;
           output_6 : out STD_LOGIC;
           output_7 : out STD_LOGIC;
           output_8 : out STD_LOGIC;
           output_9 : out STD_LOGIC;
           output_A : out STD_LOGIC;
           output_B : out STD_LOGIC;
           output_C : out STD_LOGIC;
           output_D : out STD_LOGIC;
           output_E : out STD_LOGIC;
           output_F : out STD_LOGIC);
end decoder_4_to_16;

architecture Behavioral of decoder_4_to_16 is

begin
signal output_bus: STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";

begin
process(hex_in)
begin
    case hex_in is
        when "0000" => output_bus <= "0000000000000000"; -- "0"
        when "0001" => output_bus <= "0110000"; -- "1"
        when "0010" => output_bus <= "1101101"; -- "2"
        when "0011" => output_bus <= "1111001"; -- "3"
        when "0100" => output_bus <= "0110011"; -- "4"
        when "0101" => output_bus <= "1011011"; -- "5"
        when "0110" => output_bus <= "1011111"; -- "6"
        when "0111" => output_bus <= "1110000"; -- "7"
        when "1000" => output_bus <= "1111111"; -- "8"
        when "1001" => output_bus <= "1111011"; -- "9"
        when "1010" => output_bus <= "1110111"; -- "A"
        when "1011" => output_bus <= "0011111"; -- "B"
        when "1100" => output_bus <= "1001110"; -- "C"
        when "1101" => output_bus <= "0111101"; -- "D"
        when "1110" => output_bus <= "0000000"; -- "E"
        when "1111" => output_bus <= "0000001"; -- "F"
        when others => output_bus <= "0000001"; -- ERROR
    end case;    
end process;

process(output_bus)
    begin
        A <= output_bus(6);
        B <= output_bus(5);
        C <= output_bus(4);
        D <= output_bus(3);
        E <= output_bus(2);
        F <= output_bus(1);
        G <= output_bus(0);
    end process;

end Behavioral;
