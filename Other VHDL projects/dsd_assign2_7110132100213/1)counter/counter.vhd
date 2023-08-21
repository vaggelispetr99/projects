----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.02.2022 13:11:17
-- Design Name: 
-- Module Name: clock - Behavioral
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

entity counter is
    Port ( input : in STD_LOGIC_VECTOR (3 downto 0);
           CLK : in STD_LOGIC;
           output : out STD_LOGIC_VECTOR (2 downto 0));
end counter;

architecture Behavioral of counter is
   
begin

    process(CLK)
    variable counter: unsigned (2 downto 0):= "000";
    variable temp: unsigned (3 downto 0);
    
    begin
    if (CLK = '1' and CLK'event) then
    temp := unsigned(input);
    if (temp = 4 and counter = 5) then
        counter := counter - 4;
        elsif (temp = 4) then
            counter := counter + 1;
        end if;
    end if;
    output<= std_logic_vector(counter);   
    end process;
end Behavioral;
