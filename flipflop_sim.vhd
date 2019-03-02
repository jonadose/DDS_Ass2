----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.02.2019 14:11:56
-- Design Name: 
-- Module Name: flipflop_sim - Behavioral
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

entity flipflop_sim is
--  Port ( );
end flipflop_sim;

architecture Behavioral of flipflop_sim is

component flipflop 
PORT( 
clk: IN std_logic;
din: IN std_logic; 
reset: IN std_logic;
preset: IN std_logic; 
qout: OUT std_logic
);
end component;
--Inputs
signal clk:std_logic;
signal din:std_logic; 
signal reset:std_logic; 
signal preset:std_logic; 
--Output
signal qout:std_logic;

constant clk_period: time := 10 ns; 

begin
uut: flipflop PORT MAP(
clk=>clk, din=>din, reset=>reset,preset=>preset, qout=>qout);

clk_process :process
begin
clk <= '0';
wait for clk_period/2;
clk <= '1';
wait for clk_period/2;
end process;

stim_proc:process
begin 
     reset<='1';
     preset<='0';
     din<='1';
    wait for clk_period*10;
    reset<='0';
    wait for clk_period*10;
    
  
end process; 
    
end Behavioral;
