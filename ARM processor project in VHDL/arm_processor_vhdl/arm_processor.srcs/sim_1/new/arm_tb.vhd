----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.03.2022 12:11:20
-- Design Name: 
-- Module Name: arm_tb - Behavioral
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
entity arm_tb is
--  Port ( );
end arm_tb;

architecture Behavioral of arm_tb is

component arm is -- single cycle processor
port(clk, reset: in STD_LOGIC;
PC: out STD_LOGIC_VECTOR(31 downto 0);
Instr: out STD_LOGIC_VECTOR(31 downto 0);
ALUResult:out STD_LOGIC_VECTOR(31 downto 0);
WriteData:out STD_LOGIC_VECTOR(31 downto 0);
Result:out STD_LOGIC_VECTOR(31 downto 0));
end component; 

signal clk: STD_LOGIC :='0';    
signal reset: STD_LOGIC:='1';
signal PC_tb: STD_LOGIC_VECTOR(31 downto 0);
signal Instr_tb: STD_LOGIC_VECTOR(31 downto 0);
signal ALUResult_tb: STD_LOGIC_VECTOR(31 downto 0);
signal WriteData_tb: STD_LOGIC_VECTOR(31 downto 0);
signal Result_tb: STD_LOGIC_VECTOR(31 downto 0);

constant clk_period : time := 10.343ns;

begin
uut: arm
port map( 
clk=>clk,     
reset=>reset,
PC=>PC_tb,     
Instr=>Instr_tb,
ALUResult=>ALUResult_tb,
WriteData=>WriteData_tb,
Result=>Result_tb);

CLK_process: process is
begin
clk<='0';
wait for clk_period/2;
clk<='1';
wait for clk_period/2;
end process;

Test_tb: process is
begin
reset<='1';
wait for 100 ns;
wait until (clk ='0' and clk'event);
reset<='0';

wait for 29*clk_period;                                                          


stop(2);  
end process Test_tb;
end Behavioral;

