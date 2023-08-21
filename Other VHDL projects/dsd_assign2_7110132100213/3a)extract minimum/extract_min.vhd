----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.02.2022 17:44:43
-- Design Name: 
-- Module Name: extract_min - Behavioral
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

entity extract_min is
    Port ( CLK : in std_logic;
           RESET : in STD_LOGIC;
           A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           C : in STD_LOGIC_VECTOR (3 downto 0);
           D : in STD_LOGIC_VECTOR (3 downto 0);
           minim : out STD_LOGIC_VECTOR (3 downto 0);
           ones_output : out STD_LOGIC_VECTOR (2 downto 0));
end extract_min;

 

architecture Behavioral of extract_min is
component reg_n 
    generic (WIDTH : positive := 4);
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           Q : out STD_LOGIC_VECTOR (WIDTH-1 downto 0));
end component;
component Min_entity 
    Port ( CLK : in std_logic;
           A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           C : in STD_LOGIC_VECTOR (3 downto 0);
           D : in STD_LOGIC_VECTOR (3 downto 0);
           Minimum : out STD_LOGIC_VECTOR (3 downto 0));
end component;
component Ones_entity
    Port ( CLK : in STD_LOGIC;
           min : in STD_LOGIC_VECTOR (3 downto 0); 
           ones : out STD_LOGIC_VECTOR (2 downto 0));
end component;
signal reg_A: STD_LOGIC_VECTOR (3 downto 0);
signal reg_B: STD_LOGIC_VECTOR (3 downto 0);
signal reg_C: STD_LOGIC_VECTOR (3 downto 0);
signal reg_D: STD_LOGIC_VECTOR (3 downto 0);
signal min_min: STD_LOGIC_VECTOR (3 downto 0);
signal ones_ones: STD_LOGIC_VECTOR (2 downto 0);
begin

R1: reg_n port map (CLK => CLK, RESET => RESET, D => A, Q => reg_A);
R2: reg_n port map (CLK => CLK, RESET => RESET, D => B, Q => reg_B);
R3: reg_n port map (CLK => CLK, RESET => RESET, D => C, Q => reg_C);
R4: reg_n port map (CLK => CLK, RESET => RESET, D => D, Q => reg_D);
M1: Min_entity port map (CLK => CLK, A => reg_A, B => reg_B, C => reg_C, D => reg_D, Minimum => min_min);
O1: Ones_entity port map (CLK => CLK, min => min_min, ones => ones_ones);
OR1: reg_n port map (CLK => CLK, RESET => RESET, D => min_min, Q => minim);
OR2: reg_n generic map (WIDTH => 3) port map (CLK => CLK, RESET => RESET, D => ones_ones, Q => ones_output);
end Behavioral;
