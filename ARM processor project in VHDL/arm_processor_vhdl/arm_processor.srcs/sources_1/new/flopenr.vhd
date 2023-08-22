----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.03.2022 12:04:34
-- Design Name: 
-- Module Name: flopenr - Behavioral
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

entity flopenr is -- flip-flop with enable and synchronous reset
generic(width: positive := 2);
port(clk, reset, en: in STD_LOGIC;
d: in STD_LOGIC_VECTOR(width-1 downto 0);
q: out STD_LOGIC_VECTOR(width-1 downto 0));
end;


architecture Behavioral of flopenr is

begin
process(clk, reset) begin
if reset='1' then q <= (others => '0');
elsif rising_edge(clk) then
if en='1' then
q <= d;
end if;
end if;
end process;


end Behavioral;

