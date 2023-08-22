----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.03.2022 12:01:22
-- Design Name: 
-- Module Name: decoder - Behavioral
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

entity decoder is
port(Op: in STD_LOGIC_VECTOR(1 downto 0);
Funct: in STD_LOGIC_VECTOR(5 downto 0);
Rd: in STD_LOGIC_VECTOR(3 downto 0);
FlagW: out STD_LOGIC_VECTOR(1 downto 0);
PCS, RegW,MemW: out STD_LOGIC;
MemtoReg, ALUSrc: out STD_LOGIC;
ImmSrc: out STD_LOGIC_VECTOR(1 downto 0);
RegSrc: out STD_LOGIC_VECTOR(2 downto 0);
ALUControl: out STD_LOGIC_VECTOR(2 downto 0));
end decoder;

architecture Behavioral of decoder is
signal controls: STD_LOGIC_VECTOR(10 downto 0);
signal ALUOp, Branch,RegW_aux: STD_LOGIC;
signal op2: STD_LOGIC_VECTOR(7 downto 0);
begin

op2 <= (Op&Funct);
process(Op,Funct,Rd,op2) 

begin -- Main Decoder

case (op2) is
when "00001000" => controls <= "00000001001"; --add cases
when "00001001" => controls <= "00000001001";
when "00101000" => controls <= "00000101001";
when "00101001" => controls <= "00000101001";

when "00000100" => controls <= "00000001001"; --sub cases
when "00000101" => controls <= "00000001001";
when "00100100" => controls <= "00000101001";
when "00100101" => controls <= "00000101001";

when "00000000" => controls <= "00000001001"; --and cases
when "00000001" => controls <= "00000001001";
when "00100000" => controls <= "00000101001";
when "00100001" => controls <= "00000101001";

when "00000010" => controls <= "00000001001"; --xor cases
when "00000011" => controls <= "00000001001";
when "00100010" => controls <= "00000101001";
when "00100011" => controls <= "00000101001";

when "00011010" => controls <= "00000001001"; --srcB, LSL, LSR, ASR, ROR cases
when "00011011" => controls <= "00000001001";
when "00111010" => controls <= "00000101001";
when "00111011" => controls <= "00000101001";

when "00011110" => controls <= "00000001001"; --not(srcB) cases
when "00011111" => controls <= "00000001001";
when "00111110" => controls <= "00000101001";
when "00111111" => controls <= "00000101001";

when "00011000" => controls <= "00000001001"; --or cases
when "00011001" => controls <= "00000001001";
when "00111000" => controls <= "00000101001";
when "00111001" => controls <= "00000101001";

when "00110101" => controls <= "00000100001";--cmp cases
when "00010101" => controls <= "00000000001";

when "01011000" => controls <= "01001110101"; --store +imm12
when "01010000" => controls <= "01001110101"; --store -imm12

when "01011001" => controls <= "00001111001";--load +imm12
when "01010001" => controls <= "00001111001";--load -imm12

when "10100000" => controls <= "00110100011";--branch +imm24 cases
when "10100001" => controls <= "00110100011";
when "10100010" => controls <= "00110100011";
when "10100011" => controls <= "00110100011";

when "10100100" => controls <= "00110100011";
when "10100101" => controls <= "00110100011";
when "10100110" => controls <= "00110100011";
when "10100111" => controls <= "00110100011";

when "10101000" => controls <= "00110100011";
when "10101001" => controls <= "00110100011";
when "10101010" => controls <= "00110100011";
when "10101011" => controls <= "00110100011";

when "10101100" => controls <= "00110100011";
when "10101101" => controls <= "00110100011";
when "10101110" => controls <= "00110100011";
when "10101111" => controls <= "00110100011";

when "10110000" => controls <= "10110101011";--branch link +imm24 cases
when "10110001" => controls <= "10110101011";
when "10110010" => controls <= "10110101011";
when "10110011" => controls <= "10110101011";

when "10110100" => controls <= "10110101011";
when "10110101" => controls <= "10110101011";
when "10110110" => controls <= "10110101011";
when "10110111" => controls <= "10110101011";

when "10111000" => controls <= "10110101011";
when "10111001" => controls <= "10110101011";
when "10111010" => controls <= "10110101011";
when "10111011" => controls <= "10110101011";

when "10111100" => controls <= "10110101011";
when "10111101" => controls <= "10110101011";
when "10111110" => controls <= "10110101011";
when "10111111" => controls <= "10110101011";

when others => controls <= "-----------";
end case;
end process;
(RegSrc(2) , RegSrc(1), RegSrc(0), ImmSrc(1), ImmSrc(0), ALUSrc, MemtoReg, RegW, MemW,Branch, ALUOp) <= controls;
RegW_aux<= controls(3);
process(Op,Funct,Rd,ALUOp)
variable ALUControl_aux: STD_LOGIC_VECTOR(2 downto 0);
begin -- ALU Decoder
if (ALUOp='1') then
case (op&Funct(4 downto 1)) is
when "000100"|"011100"|"100000"|"100001"|"100010"|"100011"|"100100"|"100101"|"100110"|"100111"|"101000"|"101001"|"101010"|"101011"|"101100"|"101101"|"101110"|"101111" => ALUControl <= "000"; ALUControl_aux :="000" ; -- ADD
when "000010"|"011000"|"001010" => ALUControl <= "001"; ALUControl_aux :="001" ;-- SUB
when "000000" => ALUControl <= "010"; ALUControl_aux :="010" ;-- AND
when "001100" => ALUControl <= "011"; ALUControl_aux :="011" ;-- ORR
when "000001" => ALUControl <= "100"; ALUControl_aux :="100" ;-- XOR
when "001101" => 
if (funct(5)='0') then 
ALUControl <= "101"; ALUControl_aux :="101" ;-- SRCB LSR ASR with I=0
elsif (funct(5)='1') then 
ALUControl <= "110"; ALUControl_aux :="110" ;-- SRCB with I=1
end if;
when "001111" => ALUControl <= "111"; ALUControl_aux :="111" ;-- not(SRCB)
when others => ALUControl <= "---"; ALUControl_aux :="---" ;-- unimplemented
end case;
FlagW(1) <= Funct(0);
FlagW(0) <= ((Funct(0) and (not ALUControl_aux(1))and (not ALUControl_aux(2)) and ALUControl_aux(0))or(Funct(0) and (not ALUControl_aux(0))and (not ALUControl_aux(2)) and ALUControl_aux(1)))and (not op(0))and (not op(1)) ;
else
ALUControl <= "000";
FlagW <= "00";
end if;
end process;
PCS <= (Rd(0)and Rd(1)and Rd(2)and Rd(3)and RegW_aux) or Branch;


end Behavioral;

