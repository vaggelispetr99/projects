----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.03.2022 11:54:15
-- Design Name: 
-- Module Name: adder - Behavioral
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

entity adder is -- adder
generic (WIDTH : positive := 32);
port(a, b: in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
y: out STD_LOGIC_VECTOR(WIDTH-1 downto 0));
end;

architecture Behavioral of adder is

begin
ADDER: process (a, b)
variable a_s, b_s, y_s: unsigned (WIDTH-1 downto 0);
begin
a_s := unsigned(a); -- numeric_std
b_s := unsigned(b); -- numeric_std
y_s := a_s + b_s; -- numeric_std
y <= std_logic_vector(y_s(WIDTH-1 downto 0)); -- numeric_std
end process;


end Behavioral;

