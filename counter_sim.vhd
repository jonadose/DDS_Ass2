----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.02.2019 15:25:17
-- Design Name: 
-- Module Name: counter_sim - Behavioral
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

entity counter_sim is
--  Port ( );
end counter_sim;

architecture Behavioral of counter_sim is
component updown_8
PORT(
clk: IN STD_LOGIC; 
operation: IN STD_LOGIC; 
reset: IN STD_LOGIC;
count: INOUT std_logic_vector(7 downto 0) 
);
end component; 

--Inputs
signal clk:std_logic;
signal operation:std_logic;
signal reset:std_logic;
-- Inout
signal count:std_logic_vector(7 downto 0):= (others => '0');

constant clk_period: time := 10 ns; 

begin
uut:updown_8 PORT MAP(
clk=>clk, operation=>operation, reset=>reset, count=>count);

clk_process :process
begin
clk <= '0';
wait for clk_period/2;
clk <= '1';
wait for clk_period/2;
end process;

stim_proc:process
begin
reset <= '1';
wait for 100ns; 
reset <= '0';

operation <= '1';
wait for 100ns; 
operation <='0';

wait for 100ns; 
reset<= '1';
operation <= '1';
wait for 100ns; 

reset <= '0';
wait for 1300 ns;
wait;



end process; 



end Behavioral;
