----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.02.2022 13:15:03
-- Design Name: 
-- Module Name: Ones - Behavioral
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

entity Ones_entity is
    Port ( CLK : in STD_LOGIC;
           min : in STD_LOGIC_VECTOR (3 downto 0); 
           ones : out STD_LOGIC_VECTOR (2 downto 0));
end Ones_entity;

architecture Behavioral of Ones_entity is

begin
process (min)
 variable minimum: unsigned (3 downto 0);
 variable counter: unsigned (2 downto 0);
    begin
     minimum := unsigned(min);
     counter := "000";
    for I in 0 to 3 loop
        if (minimum(I) = '1') then
        counter := counter +1;
        end if;
    end loop;
    ones <= std_logic_vector(counter);
 end process;
     
end Behavioral;
