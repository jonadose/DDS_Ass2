----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.02.2019 14:04:42
-- Design Name: 
-- Module Name: flipflop - Behavioral
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

entity flipflop is
    Port ( clk : in STD_LOGIC;
           din : in STD_LOGIC;
           reset : in STD_LOGIC;
           preset : in STD_LOGIC;
           qout : out STD_LOGIC);
end flipflop;

architecture Behavioral of flipflop is

begin
process(clk, reset) --only have process here if asynchronous is desired
begin 
 
 if rising_edge(clk) then -- having this first makes it synchronous flipflop, synchronous to the global clock signal 
    if reset = '1' then
        qout <='0';
    elsif preset = '1' then
        qout <='1';
    
    else
    qout<= din;
    end if;
       
end if; 

end process; 
end Behavioral;
