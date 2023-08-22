----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.03.2022 12:00:24
-- Design Name: 
-- Module Name: datapath - Behavioral
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

entity datapath is
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
end datapath;


architecture Behavioral of datapath is
component alu
generic (WIDTH : positive := 32);
port(a, b: in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
ALUControl: in STD_LOGIC_VECTOR(2 downto 0);
Result: out STD_LOGIC_VECTOR(WIDTH-1 downto 0);
ALUFlags: out STD_LOGIC_VECTOR(3 downto 0);
shamt5: in STD_LOGIC_VECTOR(4 downto 0);
sh: in STD_LOGIC_VECTOR(1 downto 0));
end component;
component regfile
port(clk: in STD_LOGIC;
we3: in STD_LOGIC;
ra1, ra2, wa3: in STD_LOGIC_VECTOR(3 downto 0);
wd3, r15: in STD_LOGIC_VECTOR(31 downto 0);
rd1, rd2: out STD_LOGIC_VECTOR(31 downto 0));
end component;
component adder
port(a, b: in STD_LOGIC_VECTOR(31 downto 0);
y: out STD_LOGIC_VECTOR(31 downto 0));
end component;
component extend
port(Instr: in STD_LOGIC_VECTOR(23 downto 0);
ImmSrc: in STD_LOGIC_VECTOR(1 downto 0);
ExtImm: out STD_LOGIC_VECTOR(31 downto 0));
end component;
component flopr generic(width:  positive := 32);
port(clk, reset: in STD_LOGIC;
d: in STD_LOGIC_VECTOR(width-1 downto 0);
q: out STD_LOGIC_VECTOR(width-1 downto 0));
end component;
component mux2 generic(width:  positive := 32);
port(d0, d1: in STD_LOGIC_VECTOR(width-1 downto 0);
s: in STD_LOGIC;
y: out STD_LOGIC_VECTOR(width-1 downto 0));
end component;
component dmem is -- data memory
port(clk, we: in STD_LOGIC;
a, wd: in STD_LOGIC_VECTOR(31 downto 0);
rd: out STD_LOGIC_VECTOR(31 downto 0));
end component;
component imem is -- instruction memory
generic(
    N : positive := 6; --address length
    M : positive := 32); --data word length
port(a: in STD_LOGIC_VECTOR(N-1 downto 0);
rd: out STD_LOGIC_VECTOR(M-1 downto 0));
end component;
signal PCNext, PCPlus4,PCPlus8: STD_LOGIC_VECTOR(31 downto 0);
signal PC: STD_LOGIC_VECTOR(31 downto 0):="00000000000000000000000000000000";
signal ExtImm, Result, WD3: STD_LOGIC_VECTOR(31 downto 0);
signal SrcA, SrcB: STD_LOGIC_VECTOR(31 downto 0);
signal RA1, RA2, RA3: STD_LOGIC_VECTOR(3 downto 0);
signal ALUResult: STD_LOGIC_VECTOR(31 downto 0);
signal WriteData: STD_LOGIC_VECTOR(31 downto 0);
signal ReadData:  STD_LOGIC_VECTOR(31 downto 0);
signal Instr:  STD_LOGIC_VECTOR(31 downto 0);
begin
-- next PC logic
PC_out<=PC;
pcmux: mux2  generic map (width => 32)
port map(PCPlus4, Result, PCSrc, PCNext);
pcreg: flopr generic map(width => 32) port map(clk, reset, PCNext, PC);
pcadd1: adder port map(PC, "00000000000000000000000000000100", PCPlus4);
pcadd2: adder port map(PCPlus4, "00000000000000000000000000000100", PCPlus8);
-- register file logic
ra1mux: mux2 generic map (width => 4) port map(Instr(19 downto 16), "1111", RegSrc(0), RA1);
ra2mux: mux2 generic map (width => 4) port map(Instr(3 downto 0),Instr(15 downto 12), RegSrc(1), RA2);
ra3mux: mux2 generic map (width => 4) port map(Instr(15 downto 12),"1110",RegSrc(2), RA3);
wd3mux: mux2 generic map (width => 32) port map(Result, PCPlus4, RegSrc(2), WD3);
rf: regfile port map(clk, RegWrite, RA1, RA2,RA3, WD3,PCPlus8, SrcA, WriteData);
WriteData_out<=WriteData;
resmux: mux2 generic map(width => 32)
port map(ALUResult, ReadData, MemtoReg, Result);
Result_out<=Result;
ext: extend port map(Instr(23 downto 0), ImmSrc, ExtImm);
-- ALU logic
srcbmux: mux2 generic map(width => 32)
port map(WriteData, ExtImm, ALUSrc, SrcB);
i_alu: alu generic map(width => 32) port map(SrcA, SrcB, ALUControl, ALUResult, ALUFlags,Instr(11 downto 7),Instr(6 downto 5));
ALUResult_out<=ALUResult;
-- dmem logic
d_mem: dmem port map(clk, MemWrite, ALUResult, WriteData, ReadData);
-- dmem logic
i_mem: imem port map(PC(7 downto 2), Instr);
Instr_out<=Instr;
end Behavioral;

