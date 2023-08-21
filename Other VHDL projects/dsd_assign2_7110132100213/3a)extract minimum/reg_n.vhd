----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.02.2022 11:50:03
-- Design Name: 
-- Module Name: adder_n - Behavioral
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

entity reg_n is
    generic (WIDTH : positive := 4);
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           Q : out STD_LOGIC_VECTOR (WIDTH-1 downto 0));
end reg_n;

architecture Behavioral of reg_n is

begin
    process (CLK)
    begin
        if (CLK = '1' and CLK'event) then
            if (RESET = '1') then
            Q <= (others=>'0');
            else
            Q <= D;
            end if;
        end if;
    end process;
end Behavioral;
