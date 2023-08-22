----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.03.2022 11:58:47
-- Design Name: 
-- Module Name: condlogic - Behavioral
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

entity condlogic is
port(clk, reset: in STD_LOGIC;
Cond: in STD_LOGIC_VECTOR(3 downto 0);
ALUFlags: in STD_LOGIC_VECTOR(3 downto 0);
FlagW: in STD_LOGIC_VECTOR(1 downto 0);
PCS, RegW, MemW: in STD_LOGIC;
PCSrc, RegWrite: out STD_LOGIC;
MemWrite: out STD_LOGIC);
end condlogic;

architecture Behavioral of condlogic is
component condcheck
port(Cond: in STD_LOGIC_VECTOR(3 downto 0);
Flags: in STD_LOGIC_VECTOR(3 downto 0);
CondEx: out STD_LOGIC);
end component;
component flopenr 
generic(width: positive := 2);
port(clk, reset, en: in STD_LOGIC;
d: in STD_LOGIC_VECTOR (width-1 downto 0);
q: out STD_LOGIC_VECTOR (width-1 downto 0));
end component;
signal FlagWrite: STD_LOGIC_VECTOR(1 downto 0);
signal Flags: STD_LOGIC_VECTOR(3 downto 0);
signal CondEx: STD_LOGIC;

begin
flagreg1: flopenr generic map (width => 2) 
port map(clk, reset, FlagWrite(1), ALUFlags(3 downto 2), Flags(3 downto 2));
flagreg0: flopenr  generic map (width => 2)
port map(clk, reset, FlagWrite(0), ALUFlags(1 downto 0), Flags(1 downto 0));
cc: condcheck port map(Cond, Flags, CondEx);
FlagWrite <= FlagW and (CondEx, CondEx);
RegWrite <= RegW and CondEx;
MemWrite <= MemW and CondEx;
PCSrc <= PCS and CondEx;


end Behavioral;

