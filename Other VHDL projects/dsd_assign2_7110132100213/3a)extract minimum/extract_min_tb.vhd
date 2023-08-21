----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.02.2022 18:32:45
-- Design Name: 
-- Module Name: extract_min_tb - Behavioral
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
use STD.ENV.ALL;

entity extract_min_tb is
--    Port ( CLK : in STD_LOGIC;
--           RESET : in STD_LOGIC;
--           A : in STD_LOGIC_VECTOR (3 downto 0);
--           B : in STD_LOGIC_VECTOR (3 downto 0);
--           C : in STD_LOGIC_VECTOR (3 downto 0);
--           D : in STD_LOGIC_VECTOR (3 downto 0);
--           minim : out STD_LOGIC_VECTOR (3 downto 0);
--           ones_output : out STD_LOGIC_VECTOR (2 downto 0));
end extract_min_tb;

architecture Behavioral of extract_min_tb is
component extract_min is
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           C : in STD_LOGIC_VECTOR (3 downto 0);
           D : in STD_LOGIC_VECTOR (3 downto 0);
           minim : out STD_LOGIC_VECTOR (3 downto 0);
           ones_output : out STD_LOGIC_VECTOR (2 downto 0));
end component extract_min;

signal CLK: STD_LOGIC :='0';    
signal RESET: STD_LOGIC:='1';
signal A_tb: STD_LOGIC_VECTOR(3 downto 0):="XXXX";
signal B_tb: STD_LOGIC_VECTOR(3 downto 0):="XXXX";
signal C_tb: STD_LOGIC_VECTOR(3 downto 0):="XXXX";
signal D_tb: STD_LOGIC_VECTOR(3 downto 0):="XXXX";
signal minim_tb: STD_LOGIC_VECTOR(3 downto 0);
signal ones_output_tb: STD_LOGIC_VECTOR(2 downto 0);

constant CLK_period : time := 10ns;
begin
uut: extract_min 
port map( 
CLK=>CLK,     
RESET=>RESET,
A=>A_tb,     
B=>B_tb,
C=>C_tb,
D=>D_tb,
minim=>minim_tb,
ones_output=>ones_output_tb);

CLK_process: process is
begin
CLK<='0';
wait for CLK_period/2;
CLK<='1';
wait for CLK_period/2;
end process;

Test_tb: process is
begin
RESET<='1';
wait for 100 ns;
wait until (CLK ='0' and CLK'event);
RESET<='0';
A_tb<="0001";B_tb<="0100";C_tb<="1111";D_tb<="0000";wait for 1*CLK_period;   
A_tb<="0011";B_tb<="0010";C_tb<="1000";D_tb<="0100";wait for 1*CLK_period;   
A_tb<="0101";B_tb<="0110";C_tb<="1010";D_tb<="0110";wait for 1*CLK_period;   
A_tb<="0111";B_tb<="1111";C_tb<="1110";D_tb<="1100";wait for 1*CLK_period;   
A_tb<="1001";B_tb<="0001";C_tb<="1011";D_tb<="1000";wait for 1*CLK_period;   
A_tb<="1011";B_tb<="1100";C_tb<="1001";D_tb<="0011";wait for 1*CLK_period;   
A_tb<="1111";B_tb<="1111";C_tb<="1111";D_tb<="1111";wait for 1*CLK_period;   
A_tb<="1111";B_tb<="0011";C_tb<="1110";D_tb<="1000";wait for 1*CLK_period;  
wait for 1*CLK_period;                                                          


stop(2);  
end process Test_tb;
end Behavioral;
