----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.01.2022 13:16:41
-- Design Name: 
-- Module Name: ALU3_tb - Behavioral_tb
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
use STD.ENV.ALL;

entity ALU3_tb is
--  Port ( );
end ALU3_tb;

architecture Behavioral_tb of ALU3_tb is
component Alu3 is
        Port ( a : in STD_LOGIC_VECTOR (2 downto 0);
               b : in STD_LOGIC_VECTOR (2 downto 0);
               control : in STD_LOGIC;
               result : out STD_LOGIC_VECTOR (2 downto 0);
               ovf : out STD_LOGIC
               );
end component Alu3;          
           

signal a_tb:      STD_LOGIC_VECTOR (2 downto 0);    
signal b_tb:      STD_LOGIC_VECTOR (2 downto 0);    
signal control_tb:STD_LOGIC;                  
signal  result_tb:   STD_LOGIC_VECTOR (2 downto 0);
signal ovf_tb :    STD_LOGIC;  
      
begin  
                        
uut: Alu3 
port map( 
a=>a_tb,     
b=>b_tb ,    
control=>control_tb  ,
result=>result_tb ,
ovf=>ovf_tb );

Test_DF: process is
begin

a_tb<="000";b_tb<="000";control_tb<='1';wait for 10 ns;   
a_tb<="001";b_tb<="000";control_tb<='1';wait for 10 ns;   
a_tb<="010";b_tb<="000";control_tb<='1';wait for 10 ns;   
a_tb<="011";b_tb<="000";control_tb<='1';wait for 10 ns;   
a_tb<="100";b_tb<="000";control_tb<='1';wait for 10 ns;   
a_tb<="101";b_tb<="000";control_tb<='1';wait for 10 ns;   
a_tb<="110";b_tb<="000";control_tb<='1';wait for 10 ns;   
a_tb<="111";b_tb<="000";control_tb<='1';wait for 10 ns;   
                                                          
a_tb<="000";b_tb<="000";control_tb<='0';wait for 10 ns;
a_tb<="001";b_tb<="000";control_tb<='0';wait for 10 ns;
a_tb<="010";b_tb<="000";control_tb<='0';wait for 10 ns;
a_tb<="011";b_tb<="000";control_tb<='0';wait for 10 ns;
a_tb<="100";b_tb<="000";control_tb<='0';wait for 10 ns;
a_tb<="101";b_tb<="000";control_tb<='0';wait for 10 ns;
a_tb<="110";b_tb<="000";control_tb<='0';wait for 10 ns;
a_tb<="111";b_tb<="000";control_tb<='0';wait for 10 ns;
                                                 
a_tb<="000";b_tb<="001";control_tb<='0';wait for 10 ns;         
a_tb<="001";b_tb<="001";control_tb<='0';wait for 10 ns;         
a_tb<="010";b_tb<="001";control_tb<='0';wait for 10 ns;         
a_tb<="011";b_tb<="001";control_tb<='0';wait for 10 ns;         
a_tb<="100";b_tb<="001";control_tb<='0';wait for 10 ns;         
a_tb<="101";b_tb<="001";control_tb<='0';wait for 10 ns;   
a_tb<="110";b_tb<="001";control_tb<='0';wait for 10 ns;           
a_tb<="111";b_tb<="001";control_tb<='0';wait for 10 ns;         

a_tb<="000";b_tb<="010";control_tb<='0';wait for 10 ns;         
a_tb<="001";b_tb<="010";control_tb<='0';wait for 10 ns;         
a_tb<="010";b_tb<="010";control_tb<='0';wait for 10 ns;         
a_tb<="011";b_tb<="010";control_tb<='0';wait for 10 ns;         
a_tb<="100";b_tb<="010";control_tb<='0';wait for 10 ns;         
a_tb<="101";b_tb<="010";control_tb<='0';wait for 10 ns;         
a_tb<="110";b_tb<="010";control_tb<='0';wait for 10 ns;         
a_tb<="111";b_tb<="010";control_tb<='0';wait for 10 ns;         

a_tb<="000";b_tb<="011";control_tb<='0';wait for 10 ns;         
a_tb<="001";b_tb<="011";control_tb<='0';wait for 10 ns;         
a_tb<="010";b_tb<="011";control_tb<='0';wait for 10 ns;         
a_tb<="011";b_tb<="011";control_tb<='0';wait for 10 ns;         
a_tb<="100";b_tb<="011";control_tb<='0';wait for 10 ns;         
a_tb<="101";b_tb<="011";control_tb<='0';wait for 10 ns;         
a_tb<="110";b_tb<="011";control_tb<='0';wait for 10 ns;         
a_tb<="111";b_tb<="011";control_tb<='0';wait for 10 ns;         

a_tb<="000";b_tb<="100";control_tb<='0';wait for 10 ns;         
a_tb<="001";b_tb<="100";control_tb<='0';wait for 10 ns;         
a_tb<="010";b_tb<="100";control_tb<='0';wait for 10 ns;         
a_tb<="011";b_tb<="100";control_tb<='0';wait for 10 ns;         
a_tb<="100";b_tb<="100";control_tb<='0';wait for 10 ns;         
a_tb<="101";b_tb<="100";control_tb<='0';wait for 10 ns;         
a_tb<="110";b_tb<="100";control_tb<='0';wait for 10 ns;         
a_tb<="111";b_tb<="100";control_tb<='0';wait for 10 ns;  

a_tb<="000";b_tb<="101";control_tb<='0';wait for 10 ns;         
a_tb<="001";b_tb<="101";control_tb<='0';wait for 10 ns;  
a_tb<="010";b_tb<="101";control_tb<='0';wait for 10 ns;  
a_tb<="011";b_tb<="101";control_tb<='0';wait for 10 ns;  
a_tb<="100";b_tb<="101";control_tb<='0';wait for 10 ns;  
a_tb<="101";b_tb<="101";control_tb<='0';wait for 10 ns;  
a_tb<="110";b_tb<="101";control_tb<='0';wait for 10 ns;  
a_tb<="111";b_tb<="101";control_tb<='0';wait for 10 ns; 

a_tb<="000";b_tb<="110";control_tb<='0';wait for 10 ns;         
a_tb<="001";b_tb<="110";control_tb<='0';wait for 10 ns;  
a_tb<="010";b_tb<="110";control_tb<='0';wait for 10 ns;  
a_tb<="011";b_tb<="110";control_tb<='0';wait for 10 ns;  
a_tb<="100";b_tb<="110";control_tb<='0';wait for 10 ns;  
a_tb<="101";b_tb<="110";control_tb<='0';wait for 10 ns;  
a_tb<="110";b_tb<="110";control_tb<='0';wait for 10 ns;  
a_tb<="111";b_tb<="110";control_tb<='0';wait for 10 ns; 

a_tb<="000";b_tb<="111";control_tb<='0';wait for 10 ns;           
a_tb<="001";b_tb<="111";control_tb<='0';wait for 10 ns;           
a_tb<="010";b_tb<="111";control_tb<='0';wait for 10 ns;           
a_tb<="011";b_tb<="111";control_tb<='0';wait for 10 ns;           
a_tb<="100";b_tb<="111";control_tb<='0';wait for 10 ns;           
a_tb<="101";b_tb<="111";control_tb<='0';wait for 10 ns;           
a_tb<="110";b_tb<="111";control_tb<='0';wait for 10 ns;           
a_tb<="111";b_tb<="111";control_tb<='0';wait for 10 ns; 

stop(2);

end process Test_DF;     
end Behavioral_tb;
