----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.02.2022 14:20:54
-- Design Name: 
-- Module Name: FSM_tb - Behavioral
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

entity FSM_tb is
--    Port ( CLK : in STD_LOGIC;
--           RESET : in STD_LOGIC;
--           X : in STD_LOGIC;
--           Y : out STD_LOGIC);
end FSM_tb;

architecture Behavioral of FSM_tb is
component FSM is
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           X : in STD_LOGIC;
           Y : out STD_LOGIC);
end component FSM;

signal CLK: STD_LOGIC :='0';    
signal RESET: STD_LOGIC:='1';
signal X_tb: STD_LOGIC:='X';
signal Y_tb: STD_LOGIC;

constant CLK_period : time := 10ns;
begin

uut: FSM 
port map( 
CLK=>CLK,     
RESET=>RESET,
X=>X_tb,     
Y=>Y_tb);

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
X_tb<='0';wait for 1*CLK_period;   
X_tb<='0';wait for 1*CLK_period;    
X_tb<='1';wait for 1*CLK_period;    
X_tb<='1';wait for 1*CLK_period;    
X_tb<='0';wait for 1*CLK_period;    
X_tb<='0';wait for 1*CLK_period;    
X_tb<='0';wait for 1*CLK_period;    
X_tb<='0';wait for 1*CLK_period;    
X_tb<='0';wait for 1*CLK_period;    
X_tb<='1';wait for 1*CLK_period;    
X_tb<='0';wait for 1*CLK_period;    
X_tb<='1';wait for 1*CLK_period;
X_tb<='0';wait for 1*CLK_period;    
X_tb<='0';wait for 1*CLK_period;    
X_tb<='1';wait for 1*CLK_period;    
X_tb<='1';wait for 1*CLK_period;
X_tb<='1';wait for 1*CLK_period;    
X_tb<='1';wait for 1*CLK_period;    
X_tb<='0';wait for 1*CLK_period;    
X_tb<='0';wait for 1*CLK_period;                                                                  

stop(2);  
end process Test_tb; 


end Behavioral;
