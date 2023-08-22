----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.03.2022 11:56:41
-- Design Name: 
-- Module Name: arm - Behavioral
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

entity arm is -- single cycle processor
port(clk, reset: in STD_LOGIC;
PC: out STD_LOGIC_VECTOR(31 downto 0);
Instr: out STD_LOGIC_VECTOR(31 downto 0);
ALUResult:out STD_LOGIC_VECTOR(31 downto 0);
WriteData:out STD_LOGIC_VECTOR(31 downto 0);
Result:out STD_LOGIC_VECTOR(31 downto 0));
end arm;

architecture Behavioral of arm is
component controller
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
end component;
component datapath
port(clk, reset: in STD_LOGIC;
RegSrc: in STD_LOGIC_VECTOR(2 downto 0);
RegWrite: in STD_LOGIC;
ImmSrc: in STD_LOGIC_VECTOR(1 downto 0);
ALUSrc: in STD_LOGIC;
ALUControl: in STD_LOGIC_VECTOR(2 downto 0);
MemtoReg: in STD_LOGIC;
PCSrc: in STD_LOGIC;
ALUFlags: out STD_LOGIC_VECTOR(3 downto 0);
MemWrite : in std_logic;
PC_out: out STD_LOGIC_VECTOR(31 downto 0);
Instr_out: out STD_LOGIC_VECTOR(31 downto 0);
ALUResult_out:out STD_LOGIC_VECTOR(31 downto 0);
WriteData_out:out STD_LOGIC_VECTOR(31 downto 0);
Result_out:out STD_LOGIC_VECTOR(31 downto 0));
end component;
signal RegWrite, ALUSrc, MemtoReg, PCSrc, MemWrite: STD_LOGIC;
signal ImmSrc: STD_LOGIC_VECTOR (1 downto 0);
signal RegSrc, ALUControl : STD_LOGIC_VECTOR (2 downto 0);
signal ALUFlags: STD_LOGIC_VECTOR(3 downto 0);
signal Instr_aux: STD_LOGIC_VECTOR(31 downto 0);

begin
cont: controller port map(clk, reset, Instr_aux(31 downto 12), ALUFlags, RegSrc, RegWrite, ImmSrc, ALUSrc, ALUControl, MemWrite, MemtoReg, PCSrc);
dp: datapath port map(clk, reset, RegSrc, RegWrite, ImmSrc, ALUSrc, ALUControl, MemtoReg, PCSrc, ALUFlags, MemWrite, PC, Instr_aux, ALUResult, WriteData, Result);
Instr<=Instr_aux;
end Behavioral;

