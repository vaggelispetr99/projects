----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.03.2022 11:55:43
-- Design Name: 
-- Module Name: alu - Behavioral
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

entity alu is
generic (WIDTH : positive := 32);
port(a, b: in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
ALUControl: in STD_LOGIC_VECTOR(2 downto 0);
Result: out STD_LOGIC_VECTOR(WIDTH-1 downto 0);
ALUFlags: out STD_LOGIC_VECTOR(3 downto 0);
shamt5: in STD_LOGIC_VECTOR(4 downto 0);
sh: in STD_LOGIC_VECTOR(1 downto 0));
end alu;

architecture Behavioral of alu is

begin
process(a, b, ALUControl)
variable A_s, B_s, S_s: SIGNED (WIDTH+1 downto 0);
variable result_temp: std_logic_vector (WIDTH-1 downto 0);
begin
case ALUControl is
when "000" =>-- addition
A_s := signed('0'&A(WIDTH-1)&A); -- numeric_std
B_s := signed('0'&B(WIDTH-1)&B); -- numeric_std
S_s := A_s + B_s; -- numeric_std
Result <= std_logic_vector(S_s(WIDTH-1 downto 0)); -- numeric_std
ALUFlags(0) <= std_logic(S_s(WIDTH) xor S_s(WIDTH-1));
ALUFlags(1) <= std_logic(S_s(WIDTH+1));
if(S_s(WIDTH-1) = '1') then
ALUFlags(3)<= '1';
else
ALUFlags(3)<= '0';
end if;
if(S_s(WIDTH-1 downto 0) = 0) then
ALUFlags(2)<= '1';
else
ALUFlags(2)<= '0';
end if;
when "001" =>-- subtraction
A_s := signed('0'&A(WIDTH-1)&A); -- numeric_std
B_s := signed('0'&B(WIDTH-1)&B); -- numeric_std
S_s := A_s - B_s; -- numeric_std
Result <= std_logic_vector(S_s(WIDTH-1 downto 0)); -- numeric_std
ALUFlags(0) <= std_logic(S_s(WIDTH) xor S_s(WIDTH-1));
ALUFlags(1) <= std_logic(S_s(WIDTH+1));
if(S_s(WIDTH-1) = '1') then
ALUFlags(3)<= '1';
else
ALUFlags(3)<= '0';
end if;
if(S_s(WIDTH-1 downto 0) = 0) then
ALUFlags(2)<= '1';
else
ALUFlags(2)<= '0';
end if;
 when "010" =>
result_temp := a and b; -- AND gate
ALUFlags(0) <= '0';
ALUFlags(1) <= '0';
if(result_temp(WIDTH-1) = '1') then
ALUFlags(3)<= '1';
else
ALUFlags(3)<= '0';
end if;
if(unsigned(result_temp) = 0) then
ALUFlags(2)<= '1';
else
ALUFlags(2)<= '0';
end if;
Result <= result_temp;
 when "011" =>
result_temp := a or b; -- OR gate
ALUFlags(0) <= '0';
ALUFlags(1) <= '0';
if(result_temp(WIDTH-1) = '1') then
ALUFlags(3)<= '1';
else
ALUFlags(3)<= '0';
end if;
if(unsigned(result_temp) = 0) then
ALUFlags(2)<= '1';
else
ALUFlags(2)<= '0';
end if;
Result <= result_temp;
when "100" =>
result_temp := a xor b;-- XOR gate
ALUFlags(0) <= '0';
ALUFlags(1) <= '0';
if(result_temp(WIDTH-1) = '1') then
ALUFlags(3)<= '1';
else
ALUFlags(3)<= '0';
end if;
if(unsigned(result_temp) = 0) then
ALUFlags(2)<= '1';
else
ALUFlags(2)<= '0';
end if;
Result <= result_temp;
when "101" =>
if(unsigned(shamt5) = 0) then
result_temp := b;-- SCRB gate
elsif((unsigned(shamt5) /= 0) and (sh ="00")) then
result_temp := std_logic_vector(shift_left(unsigned(b),to_integer(unsigned(shamt5))));-- shift left gate
elsif((unsigned(shamt5) /= 0) and (sh ="01")) then
result_temp := std_logic_vector(shift_right(unsigned(b),to_integer(unsigned(shamt5))));-- shift right gate
elsif((unsigned(shamt5) /= 0) and (sh ="10")) then
result_temp := std_logic_vector(shift_right(signed(b),to_integer(unsigned(shamt5))));-- arithmetic shift right gate
elsif((unsigned(shamt5) /= 0) and (sh ="11")) then
result_temp := std_logic_vector(unsigned(b) ror (to_integer(unsigned(shamt5))));-- rotate gate
end if;
ALUFlags(0) <= '0';
ALUFlags(1) <= '0';
if(result_temp(WIDTH-1) = '1') then
ALUFlags(3)<= '1';
else
ALUFlags(3)<= '0';
end if;
if(unsigned(result_temp) = 0) then
ALUFlags(2)<= '1';
else
ALUFlags(2)<= '0';
end if;
Result <= result_temp;
when "110" =>
result_temp := b;-- SCRB gate
ALUFlags(0) <= '0';
ALUFlags(1) <= '0';
if(result_temp(WIDTH-1) = '1') then
ALUFlags(3)<= '1';
else
ALUFlags(3)<= '0';
end if;
if(unsigned(result_temp) = 0) then
ALUFlags(2)<= '1';
else
ALUFlags(2)<= '0';
end if;
Result <= result_temp;
when "111" =>
result_temp := (not b);-- NOT(SRCB) gate
ALUFlags(0) <= '0';
ALUFlags(1) <= '0';
if(result_temp(WIDTH-1) = '1') then
ALUFlags(3)<= '1';
else
ALUFlags(3)<= '0';
end if;
if(unsigned(result_temp) = 0) then
ALUFlags(2)<= '1';
else
ALUFlags(2)<= '0';
end if;
Result <= result_temp;
when others =>
NULL;
end case;
end process;
end Behavioral;
