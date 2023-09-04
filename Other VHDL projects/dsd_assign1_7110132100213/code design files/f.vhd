--------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.01.2022 20:45:46
-- Design Name: 
-- Module Name: structural - Structural-Behavioral
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

entity structural is
    generic (WIDTH : positive := 3);
    Port ( a : in STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           b : in STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           control : in STD_LOGIC;
           result : out STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           ovf : out STD_LOGIC);
end structural;

architecture Behavioral of structural is
component sum_ab 
    generic (WIDTH : positive := 3);
    Port ( a : in STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           b : in STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           --control : in STD_LOGIC;
           result : out STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           ovf : out STD_LOGIC);
end component;
component double_a 
    generic (WIDTH : positive := 3);
    Port ( a : in STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           --b : in STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           --control : in STD_LOGIC;
           result : out STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           ovf : out STD_LOGIC);
end component;
signal result_temp_sum: STD_LOGIC_VECTOR (2 downto 0);
signal result_temp_double: STD_LOGIC_VECTOR (2 downto 0);
signal ovf_temp_sum: STD_LOGIC;
signal ovf_temp_double: STD_LOGIC;
begin
U1: sum_ab port map (a => a, b => b, result => result_temp_sum, ovf => ovf_temp_sum);
U2: double_a port map (a => a, result => result_temp_double, ovf => ovf_temp_double);
process (a, b,control,result_temp_sum, ovf_temp_sum, result_temp_double, ovf_temp_double)
  begin
  if (control = '0') then
   result<= result_temp_sum;
   ovf <=ovf_temp_sum;
  else
   result<= result_temp_double;
   ovf <=ovf_temp_double;
  end if;
 end process;

end Behavioral;
