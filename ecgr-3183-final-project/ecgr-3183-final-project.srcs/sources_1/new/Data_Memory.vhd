----------------------------------------------------------------------------------
-- Company: ECGR-3183
-- Engineer: 
-- 
-- Create Date: 05/02/2019 01:16:39 AM
-- Design Name: 
-- Module Name: Data_Memory - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Data_Memory is
    Port ( MemWrite : in STD_LOGIC;
           MemRead : in STD_LOGIC;
           clock : in STD_LOGIC;
           Address : in STD_LOGIC_VECTOR (19 downto 0);
           Write_Data : in STD_LOGIC_VECTOR (31 downto 0);
           Data_Read : out STD_LOGIC_VECTOR (31 downto 0));
end Data_Memory;

architecture Behavioral of Data_Memory is
    type data_memory_file is array (0 to 16383) of STD_LOGIC_VECTOR(31 downto 0);
    signal data_mem: data_memory_file;
begin
    process(Address)
    begin
        -- if RegWrite is enabled, store Write_Data at appropriate register address (Rd)
        if (MemWrite = '1') then
            data_mem(to_integer(unsigned(Address))) <= Write_Data;
        elsif (MemRead = '1') then
            Data_Read <= data_mem(to_integer(unsigned(Address)));
        else
            Data_Read <= (others => '0');
        end if;
        
        --wait for 5 ns;

    end process;

end Behavioral;
