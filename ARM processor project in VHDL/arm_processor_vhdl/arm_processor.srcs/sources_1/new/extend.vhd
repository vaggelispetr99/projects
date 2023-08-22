----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.03.2022 12:03:43
-- Design Name: 
-- Module Name: extend - Behavioral
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

entity extend is
port(Instr: in STD_LOGIC_VECTOR(23 downto 0);
ImmSrc: in STD_LOGIC_VECTOR(1 downto 0);
ExtImm: out STD_LOGIC_VECTOR(31 downto 0));
end;


architecture Behavioral of extend is

begin
process(Instr, ImmSrc) begin
case ImmSrc is
when "00" => 
ExtImm <= (X"000000"&Instr(7 downto 0));
when "01" => 
ExtImm <= (X"00000"&Instr(11 downto 0));
when "10" => 
ExtImm <= (Instr(23)& Instr(23)&Instr(23)& Instr(23)&Instr(23)& Instr(23)&Instr(23 downto 0)&"00");
when others => 
ExtImm <= (others=>'-');
end case;
end process;


end Behavioral;

