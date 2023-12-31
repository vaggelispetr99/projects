----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.03.2022 11:57:32
-- Design Name: 
-- Module Name: condcheck - Behavioral
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

entity condcheck is
port(Cond: in STD_LOGIC_VECTOR(3 downto 0);
Flags: in STD_LOGIC_VECTOR(3 downto 0);
CondEx: out STD_LOGIC);
end condcheck;

architecture Behavioral of condcheck is
signal neg, zero, carry, overflow, ge: STD_LOGIC;
begin
(neg, zero, carry, overflow) <= Flags;
ge <= (neg xnor overflow);
process(Cond,Flags) 
begin -- Condition checking
case Cond is
when "0000" => CondEx <= zero;
when "0001" => CondEx <= not zero;
when "0010" => CondEx <= carry;
when "0011" => CondEx <= not carry;
when "0100" => CondEx <= neg;
when "0101" => CondEx <= not neg;
when "0110" => CondEx <= overflow;
when "0111" => CondEx <= not overflow;
when "1000" => CondEx <= carry and (not zero);
when "1001" => CondEx <= not(carry and (not zero));
when "1010" => CondEx <= ge;
when "1011" => CondEx <= not ge;
when "1100" => CondEx <= (not zero) and ge;
when "1101" => CondEx <= not ((not zero) and ge);
when "1110" => CondEx <= '1';
when "1111" => CondEx <= '1';
when others => CondEx <= '-';
end case;
end process;

end Behavioral;
