----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.02.2022 13:16:49
-- Design Name: 
-- Module Name: FSM - Behavioral
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

entity FSM is
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           X : in STD_LOGIC;
           Y : out STD_LOGIC);
end FSM;

architecture Behavioral of FSM is
-- state definition
type FSM_states is (S0, S1, S2, S3, S4);
-- internal signals
signal current_state, next_state: FSM_states;
signal X_in : STD_LOGIC; -- Only when there is an INREG

begin
-- Optional for sychronization
INREG: process (CLK)
begin
if (CLK = '1' and CLK'event) then
if (RESET = '1') then X_in <= '1'; -- to trap state S0 during reset
else X_in <= X;
end if;
end if;
end process;
-- Common process for all FSMs to create state register
SYNC: process (CLK)
begin
if (CLK = '1' and CLK'event) then
if (RESET = '1') then current_state <= S0;
else current_state <= next_state;
end if;
end if;
end process;
-- Process to create next state logic and output logic
ASYNC: process (current_state, X_in) -- Mealy
begin
-- FSM next state and output initialization
next_state <= S0;
Y <= '0';
case current_state is
when S0 =>
if (X_in = '0') then 
next_state <= S1;
else next_state <= S3;
end if;
when S1 =>
if (X_in = '0') then
next_state <= S2;
else next_state <= S3;
end if;
when S2 =>
if (X_in = '1') then 
next_state <= S3;
Y<='1';
else next_state <= S2;
end if;
when S3 =>
if (X_in = '1') then 
next_state <= S4;
else next_state <= S1;
end if;
when S4 =>
if (X_in = '0') then 
next_state <= S1;
Y<='1';
else next_state <= S4;
end if;
-- fail-safe behavior
when others => next_state <= S0;
end case;
end process;
end Behavioral;
