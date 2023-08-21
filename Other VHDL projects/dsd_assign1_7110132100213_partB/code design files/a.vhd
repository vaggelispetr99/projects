----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.01.2022 17:49:37
-- Design Name: 
-- Module Name: ALU - DF
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

entity ALU is
    Port ( a : in STD_LOGIC_VECTOR (2 downto 0);
           b : in STD_LOGIC_VECTOR (2 downto 0);
           control : in STD_LOGIC;
           result : out STD_LOGIC_VECTOR (2 downto 0);
           ovf : out STD_LOGIC);
end ALU;

architecture DF of ALU is
signal result_temp:unsigned(3 downto 0);
signal x:unsigned(3 downto 0);
signal y:unsigned(3 downto 0);
begin
--result_temp<=unsigned('0'&a)+unsigned('0'&b) when control='0' else unsigned(a&'0') ;
--ovf<=std_logic(result_temp(3));
--result<=std_logic_vector(result_temp(2 downto 0));
x <= resize(unsigned(a),4);
y <= resize(unsigned(b),4);
result_temp <= x + y when control='0' else unsigned(a&'0');
ovf <=std_logic(result_temp(3));
result <=std_logic_vector(resize(unsigned(result_temp),3));
end DF;
