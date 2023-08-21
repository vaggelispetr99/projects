----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.02.2022 14:10:57
-- Design Name: 
-- Module Name: clock - Behavioral
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
use STD.ENV.ALL;

entity counter_tb is
--    Port ( input : in STD_LOGIC_VECTOR (3 downto 0);
--           output : out STD_LOGIC_VECTOR (2 downto 0));
end counter_tb;

architecture Behavioral of counter_tb is

component counter is
    Port ( input : in STD_LOGIC_VECTOR (3 downto 0);
           CLK : in std_logic;
           output : out STD_LOGIC_VECTOR (2 downto 0));
end component counter;
signal input_tb:      STD_LOGIC_VECTOR (3 downto 0);
signal CLK:      STD_LOGIC;    
signal output_tb:      STD_LOGIC_VECTOR (2 downto 0);
constant CLK_period : time := 10ns;
begin
uut: counter 
port map( 
input=>input_tb,
CLK=>CLK,     
output=>output_tb);

CLK_process: process is
begin
CLK<='1';
wait for CLK_period/2;
CLK<='0';
wait for CLK_period/2;
end process;

Test_tb: process is
begin

input_tb<="0001";wait for 10 ns;      
input_tb<="0011";wait for 10 ns;      
input_tb<="0101";wait for 10 ns;      
input_tb<="0111";wait for 10 ns;      
input_tb<="1001";wait for 10 ns;      
input_tb<="1011";wait for 10 ns;      
input_tb<="1101";wait for 10 ns;      
input_tb<="1111";wait for 10 ns;
input_tb<="0000";wait for 10 ns;    
input_tb<="0010";wait for 10 ns;
input_tb<="0100";wait for 10 ns; 
input_tb<="0110";wait for 10 ns; 
input_tb<="1000";wait for 10 ns; 
input_tb<="1010";wait for 10 ns; 
input_tb<="1100";wait for 10 ns; 
input_tb<="1110";wait for 10 ns;

input_tb<="0100";wait for 10 ns;
input_tb<="1101";wait for 10 ns; 
input_tb<="0100";wait for 10 ns;
input_tb<="1101";wait for 10 ns; 
input_tb<="0100";wait for 10 ns;
input_tb<="1101";wait for 10 ns; 
input_tb<="0100";wait for 10 ns; 
input_tb<="1101";wait for 10 ns;
input_tb<="0100";wait for 10 ns; 
input_tb<="1101";wait for 10 ns;
input_tb<="0100";wait for 10 ns; 
input_tb<="1101";wait for 10 ns;
input_tb<="0100";wait for 10 ns; 
input_tb<="1101";wait for 10 ns; 
input_tb<="0100";wait for 10 ns; 

stop(2);  
end process Test_tb; 

end Behavioral; 
 
 