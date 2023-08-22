----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.03.2022 11:59:32
-- Design Name: 
-- Module Name: controller - Behavioral
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

entity controller is
port(clk, reset: in STD_LOGIC;
Instr: in STD_LOGIC_VECTOR(31 downto 12);
ALUFlags: in STD_LOGIC_VECTOR(3 downto 0);
RegSrc: out STD_LOGIC_VECTOR(2 downto 0);
RegWrite: out STD_LOGIC;
ImmSrc: out STD_LOGIC_VECTOR(1 downto 0);
ALUSrc: out STD_LOGIC;
ALUControl: out STD_LOGIC_VECTOR(2 downto 0);
MemWrite: out STD_LOGIC;
MemtoReg: out STD_LOGIC;
PCSrc: out STD_LOGIC);
end controller;

architecture Behavioral of controller is
component decoder
port(Op: in STD_LOGIC_VECTOR(1 downto 0);
Funct: in STD_LOGIC_VECTOR(5 downto 0);
Rd: in STD_LOGIC_VECTOR(3 downto 0);
FlagW: out STD_LOGIC_VECTOR(1 downto 0);
PCS, RegW, MemW: out STD_LOGIC;
MemtoReg, ALUSrc: out STD_LOGIC;
ImmSrc : out STD_LOGIC_VECTOR(1 downto 0);
RegSrc : out STD_LOGIC_VECTOR(2 downto 0);
ALUControl: out STD_LOGIC_VECTOR(2 downto 0));
end component;
component condlogic
port(clk, reset: in STD_LOGIC;
Cond: in STD_LOGIC_VECTOR(3 downto 0);
ALUFlags: in STD_LOGIC_VECTOR(3 downto 0);
FlagW: in STD_LOGIC_VECTOR(1 downto 0);
PCS, RegW, MemW: in STD_LOGIC;
PCSrc, RegWrite: out STD_LOGIC;
MemWrite: out STD_LOGIC);
end component;
signal FlagW: STD_LOGIC_VECTOR(1 downto 0);
signal PCS, RegW, MemW: STD_LOGIC;

begin
dec: decoder port map(Instr(27 downto 26), Instr(25 downto 20), Instr(15 downto 12), FlagW, PCS, RegW, MemW, MemtoReg, ALUSrc, ImmSrc, RegSrc, ALUControl);
cl: condlogic port map(clk, reset, Instr(31 downto 28), ALUFlags, FlagW, PCS, RegW, MemW, PCSrc, RegWrite, MemWrite);

end Behavioral;
