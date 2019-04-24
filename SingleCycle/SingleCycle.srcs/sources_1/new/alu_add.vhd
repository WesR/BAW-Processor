----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Wes
-- 
-- Create Date: 04/23/2019 11:50:24 PM
-- Design Name: 
-- Module Name: alu_add - Behavioral
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
use IEEE.numeric_std.ALL;

entity alu_add is
    Port ( a : in STD_LOGIC_VECTOR (31 downto 0);
           b : in STD_LOGIC_VECTOR (31 downto 0);
           cout : out STD_LOGIC_VECTOR (31 downto 0);
           carry : out STD_LOGIC;
           overflow : out STD_LOGIC);
end alu_add;

architecture Behavioral of alu_add is

begin
    process (a,b)
            variable a_sign : STD_LOGIC;
            variable a_exp : STD_LOGIC_VECTOR(7 downto 0);
            variable a_man : STD_LOGIC_VECTOR(22 downto 0);
            variable b_sign : STD_LOGIC;
            variable b_exp : STD_LOGIC_VECTOR(7 downto 0);
            variable b_man : STD_LOGIC_VECTOR(22 downto 0);
            variable cout_sign : STD_LOGIC;
            variable cout_exp : STD_LOGIC_VECTOR(7 downto 0);
            variable cout_man : STD_LOGIC_VECTOR(22 downto 0);
    begin
        a_sign := a(31);
        a_exp := a(30 downto 23);
        a_man := a(22 downto 0);
        b_sign := a(31);
        b_exp := a(30 downto 23);
        b_man := a(22 downto 0);
        
        --shift smaller to right until match larger
        --add
        --normalize
        --check over / underflow
        
        
        cout(31) <= cout_sign;
        cout(30 downto 23) <= cout_exp;
        cout(22 downto 0) <= cout_man;
    end process;
end Behavioral;
