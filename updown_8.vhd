----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.02.2019 15:02:11
-- Design Name: 
-- Module Name: updown_8 - Behavioral
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
use IEEE.STD_LOGIC_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity updown_8 is
    Port ( operation : in STD_LOGIC;
           count : inout STD_LOGIC_VECTOR (7 downto 0);
           clk : in STD_LOGIC;
           reset : in STD_LOGIC); 
end updown_8;

architecture Behavioral of updown_8 is

begin
    process(clk)
    begin
    if rising_edge(clk) then
        if reset = '1' then
             count <= "00000000";
        else
            if (operation = '1') then 
                count <= count + 1; 
            else 
                count <= count - 1; 
            end if; 
        end if;
        end if; 
    end process; 

end Behavioral;
