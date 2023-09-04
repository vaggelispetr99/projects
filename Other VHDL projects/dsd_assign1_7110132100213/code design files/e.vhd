----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.01.2022 20:01:51
-- Design Name: 
-- Module Name: ALU4 - Behavioral
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

entity ALU4 is
    generic (WIDTH : positive := 3);
    Port ( a : in STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           b : in STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           control : in STD_LOGIC;
           result : out STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           ovf : out STD_LOGIC);
end ALU4;

architecture Behavioral of ALU4 is

begin
process (a, b,control)
 variable result_temp: unsigned (WIDTH downto 0);
  begin
  if (control = '0') then
   result_temp := unsigned('0'&a)+unsigned('0'&b);
  else
   result_temp := unsigned(a&'0');
  end if;
  result<=std_logic_vector(result_temp(WIDTH-1 downto 0));
  ovf<=std_logic(result_temp(WIDTH));
 end process;

end Behavioral;
