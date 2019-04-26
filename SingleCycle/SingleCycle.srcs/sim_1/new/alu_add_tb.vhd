----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/26/2019 12:53:41 AM
-- Design Name: 
-- Module Name: alu_add_tb - Behavioral
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
--library IEEE_PROPOSED;
--use IEEE_PROPOSED.float_pkg.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu_add_tb is

end alu_add_tb;

architecture Behavioral of alu_add_tb is
	Component alu_add Is
        Port ( a : in STD_LOGIC_VECTOR (31 downto 0);
               b : in STD_LOGIC_VECTOR (31 downto 0);
               cout : out STD_LOGIC_VECTOR (31 downto 0);
               carry : out STD_LOGIC;
               overflow : out STD_LOGIC);
	End Component;
	Signal a, b, cout: STD_LOGIC_VECTOR(31 downto 0);
	Signal carry, overflow : STD_LOGIC;


begin
--Begining the test

	uut : alu_add
	Port Map(a(31 downto 0) => a, b(31 downto 0) => b, cout(31 downto 0) => cout, carry => carry, overflow => overflow);

	debug : Process
	Begin
		a <= "01000011001000000010001000111010"; -- 160.133697509765625
		b <= "01000010101010000011001001101110"; -- 84.0984954833984375
        Wait For 20ns;
        a <= "11000010101010000100010001110100"; -- -84.133697509765625
        b <= "11000110010000001001000000000000"; -- -12324
	End Process debug;

end Behavioral;
