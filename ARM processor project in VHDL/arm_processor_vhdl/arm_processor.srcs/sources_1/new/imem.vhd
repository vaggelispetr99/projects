----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.03.2022 12:08:22
-- Design Name: 
-- Module Name: imem - Behavioral
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

entity imem is -- instruction memory
generic(
    N : positive := 6; --address length
    M : positive := 32); --data word length
port(a: in STD_LOGIC_VECTOR(N-1 downto 0);
rd: out STD_LOGIC_VECTOR(M-1 downto 0));
end imem;

architecture Behavioral of imem is
    type ROM_array is array (0 to (2**N)-1) of STD_LOGIC_VECTOR(M-1 downto 0);
    constant ROM : ROM_array :=(
    X"E3A00000",  -- START: MOV R0, #0      
    X"E3E01000",  --        MVN R1, #0      
    X"E580100F",  --        STR R1, [R0,#15]
    X"E590200F",  --        LDR R2, [R0,#15]
    X"E1A02202",  --        LSL R2, R2, #4  
    X"E1A02242",  --        ASR R2, R2, #4  
    X"E1A02222",  --        LSR R2, R2, #4  
    X"E1A02262",  --        ROR R2, R2, #4  
    X"E580100E",  --        STR R1, [R0,#14]
    X"E590300E",  --        LDR R3, [R0,#14]
    X"E1822003",  --        ORR R2, R2, R3  
    X"E2804002",  --        ADD R4, R0, #2  
    X"E2845001",  --        SUB R5, R4, #-1 
    X"E1510003",  --        CMP R1, R3      
    X"00456004",  --        SUBEQ R6, R5, R4
    X"10846005",  --        ADDNE R6, R4, R5
    X"E1A00006",  --        MOV R0, R6      
    X"E2557005",  --        SUBS R7, R5, #5 
    X"41A08001",  --        MOVMI R8, R1    
    X"51A08007",  --        MOVPL R8, R7    
    X"E1A00000",  --        NOP             
    X"E1A0A008",  --        MOV R10, R8     
    X"E0989001",  --        ADDS R9, R8, R1 
    X"6AFFFFE7",  --        BVS START
    X"E02AD004",  --        EOR R13, R10, R4
    X"EB000000",  --        BL ROUTINE
    X"E3A00001",  --        MOV R0, #1
    X"E1A0D00E",  --        ROUTINE: MOV R13, R14
    X"EAFFFFE2",  --        B START
   X"00000000",
   X"00000000",
   X"00000000",
   
--   X"00000000",
--   X"00000000",
--   X"00000000",
--   X"00000000",
--   X"00000000",
     
   
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000", 
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000", 
   
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000");

begin
rd <= ROM(to_integer(unsigned(a)));
end Behavioral;

