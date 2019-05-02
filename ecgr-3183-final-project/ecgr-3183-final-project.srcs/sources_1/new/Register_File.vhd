----------------------------------------------------------------------------------
-- Company: ECGR-3183
-- Engineer: 
-- 
-- Create Date: 05/01/2019 05:31:18 PM
-- Design Name: 
-- Module Name: Register_File - Behavioral
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

entity Register_File is
    Port ( RegWrite : in STD_LOGIC;
           clock : in STD_LOGIC;
           Rm : in STD_LOGIC_VECTOR (3 downto 0);
           Rn : in STD_LOGIC_VECTOR (3 downto 0);
           Rd : in STD_LOGIC_VECTOR (3 downto 0);
           Write_Data : in STD_LOGIC_VECTOR (31 downto 0);
           Read_Data_1 : out STD_LOGIC_VECTOR (31 downto 0);
           Read_Data_2 : out STD_LOGIC_VECTOR (31 downto 0));
end Register_File;

architecture Behavioral of Register_File is
    type reg_file is array (0 to 15) of STD_LOGIC_VECTOR(31 downto 0);
    signal internal_registers: reg_file;
begin
    process(Rm, Rn, Rd)
    begin
        -- pass values stored at specified register addresses (Rm, Rn) to corresponding data outputs
        Read_Data_1 <= internal_registers(to_integer(unsigned(Rm)));
        Read_Data_2 <= internal_registers(to_integer(unsigned(Rn)));
        
        -- if RegWrite is enabled, store Write_Data at appropriate register address (Rd)
        if (RegWrite = '1') then
            internal_registers(to_integer(unsigned(Rd))) <= Write_Data;
            
            -- check if input register 1 address (Rm) is the same as write register address (Rd)
            if (Rm = Rd) then
                Read_Data_1 <= Write_Data;
            end if;
            
            -- check if input register 2 address (Rn) is the same as write register address (Rd)
            if (Rn = Rd) then
                Read_Data_2 <= Write_Data;
            end if;
            
        end if; -- end of check RegWrite

    end process;

end Behavioral;

--process(clock)
--    begin
--        if rising_edge(clock) then
            
--            -- pass values stored at specified register addresses (Rm, Rn) to corresponding data outputs
--            Read_Data_1 <= internal_registers(to_integer(unsigned(Rm)));
--            Read_Data_2 <= internal_registers(to_integer(unsigned(Rn)));
            
--            -- if RegWrite is enabled, store Write_Data at appropriate register address (Rd)
--            if (RegWrite = '1') then
--                internal_registers(to_integer(unsigned(Rd))) <= Write_Data;
                
--                -- check if input register 1 address (Rm) is the same as write register address (Rd)
--                if (Rm = Rd) then
--                    Read_Data_1 <= Write_Data;
--                end if;
                
--                -- check if input register 2 address (Rn) is the same as write register address (Rd)
--                if (Rn = Rd) then
--                    Read_Data_2 <= Write_Data;
--                end if;
                
--            end if; -- end of check RegWrite
--        end if;

--    end process;