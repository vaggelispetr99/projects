----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.02.2022 12:11:43
-- Design Name: 
-- Module Name: Min - Behavioral
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

entity Min_entity is
    Port ( CLK : in std_logic;
           A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           C : in STD_LOGIC_VECTOR (3 downto 0);
           D : in STD_LOGIC_VECTOR (3 downto 0);
           Minimum : out STD_LOGIC_VECTOR (3 downto 0));
end Min_entity;

architecture Behavioral of Min_entity is

begin
 process (CLK)
 variable min_A: unsigned (3 downto 0);
 variable min_B: unsigned (3 downto 0);
 variable min_C: unsigned (3 downto 0);
 variable min_D: unsigned (3 downto 0);
 variable min_A_B: unsigned (3 downto 0);
 variable min_C_D: unsigned (3 downto 0);
 variable min_total: unsigned (3 downto 0);
    begin
    min_A := unsigned(A);
    min_B := unsigned(B);
    min_C := unsigned(C);
    min_D := unsigned(D);
    if (min_A < min_B ) then
           min_A_B := min_A;
           else
           min_A_B := min_B;
    end if;
    if (min_C < min_D ) then
           min_C_D := min_C;
           else
           min_C_D := min_D;
    end if;
    if (min_A_B < min_C_D ) then
           min_total := min_A_B;
           else
           min_total := min_C_D;
    end if;
     Minimum <= std_logic_vector(min_total);  
    end process;
       
end Behavioral;
