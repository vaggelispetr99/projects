----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.01.2022 19:43:56
-- Design Name: 
-- Module Name: ALU3 - Behavioral
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

entity ALU3 is
    Port ( a : in STD_LOGIC_VECTOR (2 downto 0);
           b : in STD_LOGIC_VECTOR (2 downto 0);
           control : in STD_LOGIC;
           result : out STD_LOGIC_VECTOR (2 downto 0);
           ovf : out STD_LOGIC);
end ALU3;

architecture Behavioral of ALU3 is
signal result_temp: unsigned (3 downto 0);
begin
process (a, b,control,result_temp)
 
  begin
    case control is
        when '0' => result_temp <= unsigned('0'&a)+unsigned('0'&b);
        when '1' => result_temp <= unsigned(a&'0');
        when others => null;
     end case;
   result<=std_logic_vector(result_temp(2 downto 0));
   ovf<=std_logic(result_temp(3));  
 end process;

end Behavioral;
