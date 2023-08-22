----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.03.2022 12:07:38
-- Design Name: 
-- Module Name: regfile - Behavioral
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

entity regfile is -- three-port register file
port(clk: in STD_LOGIC;
we3: in STD_LOGIC;
ra1, ra2, wa3: in STD_LOGIC_VECTOR(3 downto 0);
wd3, r15: in STD_LOGIC_VECTOR(31 downto 0);
rd1, rd2: out STD_LOGIC_VECTOR(31 downto 0));
end;


architecture Behavioral of regfile is
type ramtype is array (15 downto 0) of STD_LOGIC_VECTOR(31 downto 0);
signal mem: ramtype;
begin
process(clk) begin
if rising_edge(clk) then
if we3 = '1' then mem(to_integer(unsigned(wa3))) <= wd3;
end if;
end if;
end process;
process(clk,we3,ra1, ra2, wa3,wd3, r15) begin
if (to_integer(unsigned(ra1)) = 15) then rd1 <= r15;
else rd1 <= mem(to_integer(unsigned(ra1)));
end if;
if (to_integer(unsigned(ra2)) = 15) then rd2 <= r15;
else rd2 <= mem(to_integer(unsigned(ra2)));
end if;
end process;

end Behavioral;

