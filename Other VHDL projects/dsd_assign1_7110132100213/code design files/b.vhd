----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.01.2022 18:06:16
-- Design Name: 
-- Module Name: ALU1 - DF
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

entity ALU1 is
    Port ( a : in STD_LOGIC_VECTOR (2 downto 0);
           b : in STD_LOGIC_VECTOR (2 downto 0);
           control : in STD_LOGIC;
           result : out STD_LOGIC_VECTOR (2 downto 0);
           ovf : out STD_LOGIC);
end ALU1;

architecture DF of ALU1 is
signal result_temp: unsigned(2 downto 0);
signal OVF1,OVF2,OVF3: std_logic;
begin
result_temp(0)<= (((a(0) xor b(0)) and (not control)) or ('0' and control));
OVF1<= a(0) and b(0);
result_temp(1)<= ((a(1) xor b(1) xor OVF1) and (not control)) or (a(0) and control);
OVF2<= (a(1) and b(1)) or (a(1) and OVF1) or (b(1) and OVF1);
result_temp (2)<= ((a(2) xor b(2) xor OVF2) and (not control)) or (a(1) or control);
OVF3<= (a(2) and b(2)) or (a(2) and OVF2) or (b(2) and OVF2);
OVF <= (OVF3 and (not control)) or (a(2) and control);
result<= std_logic_vector(result_temp(2 downto 0));
end DF;
