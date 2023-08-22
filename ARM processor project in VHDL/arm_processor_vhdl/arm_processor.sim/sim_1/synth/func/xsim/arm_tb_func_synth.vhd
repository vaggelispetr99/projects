-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Fri Apr  1 01:25:28 2022
-- Host        : vaggospetr-pc running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/User/arm_processor/arm_processor.sim/sim_1/synth/func/xsim/arm_tb_func_synth.vhd
-- Design      : arm
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adder is
  port (
    r15 : out STD_LOGIC_VECTOR ( 30 downto 0 );
    wd : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SrcA : out STD_LOGIC_VECTOR ( 27 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_reg[3]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \q_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[3]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[3]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[3]_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[3]_4\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[3]_5\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[3]_6\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_reg[3]_7\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \q_reg[3]_8\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[3]_9\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[3]_10\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[3]_11\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[3]_12\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[3]_13\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    d1 : in STD_LOGIC_VECTOR ( 30 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    \WriteData[5]\ : in STD_LOGIC;
    rd20 : in STD_LOGIC_VECTOR ( 21 downto 0 );
    \ALUResult_OBUF[8]_inst_i_2\ : in STD_LOGIC;
    rd10 : in STD_LOGIC_VECTOR ( 28 downto 0 );
    \ALUResult_OBUF[4]_inst_i_3\ : in STD_LOGIC
  );
end adder;

architecture STRUCTURE of adder is
  signal \^r15\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \y0_carry__0_n_0\ : STD_LOGIC;
  signal \y0_carry__0_n_1\ : STD_LOGIC;
  signal \y0_carry__0_n_2\ : STD_LOGIC;
  signal \y0_carry__0_n_3\ : STD_LOGIC;
  signal \y0_carry__1_n_0\ : STD_LOGIC;
  signal \y0_carry__1_n_1\ : STD_LOGIC;
  signal \y0_carry__1_n_2\ : STD_LOGIC;
  signal \y0_carry__1_n_3\ : STD_LOGIC;
  signal \y0_carry__2_n_0\ : STD_LOGIC;
  signal \y0_carry__2_n_1\ : STD_LOGIC;
  signal \y0_carry__2_n_2\ : STD_LOGIC;
  signal \y0_carry__2_n_3\ : STD_LOGIC;
  signal \y0_carry__3_n_0\ : STD_LOGIC;
  signal \y0_carry__3_n_1\ : STD_LOGIC;
  signal \y0_carry__3_n_2\ : STD_LOGIC;
  signal \y0_carry__3_n_3\ : STD_LOGIC;
  signal \y0_carry__4_n_0\ : STD_LOGIC;
  signal \y0_carry__4_n_1\ : STD_LOGIC;
  signal \y0_carry__4_n_2\ : STD_LOGIC;
  signal \y0_carry__4_n_3\ : STD_LOGIC;
  signal \y0_carry__5_n_0\ : STD_LOGIC;
  signal \y0_carry__5_n_1\ : STD_LOGIC;
  signal \y0_carry__5_n_2\ : STD_LOGIC;
  signal \y0_carry__5_n_3\ : STD_LOGIC;
  signal \y0_carry__6_n_2\ : STD_LOGIC;
  signal \y0_carry__6_n_3\ : STD_LOGIC;
  signal y0_carry_n_0 : STD_LOGIC;
  signal y0_carry_n_1 : STD_LOGIC;
  signal y0_carry_n_2 : STD_LOGIC;
  signal y0_carry_n_3 : STD_LOGIC;
  signal \NLW_y0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_y0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ALUResult_OBUF[10]_inst_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[11]_inst_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[12]_inst_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[13]_inst_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[14]_inst_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[15]_inst_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[16]_inst_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[17]_inst_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[18]_inst_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[19]_inst_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[20]_inst_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[21]_inst_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[22]_inst_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[23]_inst_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[24]_inst_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[25]_inst_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[26]_inst_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[27]_inst_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[28]_inst_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[2]_inst_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[3]_inst_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[7]_inst_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[8]_inst_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[9]_inst_i_4\ : label is "soft_lutpair9";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of y0_carry : label is 35;
  attribute ADDER_THRESHOLD of \y0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \y0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \y0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \y0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \y0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \y0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \y0_carry__6\ : label is 35;
begin
  r15(30 downto 0) <= \^r15\(30 downto 0);
\ALUResult_OBUF[10]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(9),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(9),
      O => SrcA(9)
    );
\ALUResult_OBUF[11]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(10),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(10),
      O => SrcA(10)
    );
\ALUResult_OBUF[12]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(11),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(11),
      O => SrcA(11)
    );
\ALUResult_OBUF[13]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(12),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(12),
      O => SrcA(12)
    );
\ALUResult_OBUF[14]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(13),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(13),
      O => SrcA(13)
    );
\ALUResult_OBUF[15]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(14),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(14),
      O => SrcA(14)
    );
\ALUResult_OBUF[16]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(15),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(15),
      O => SrcA(15)
    );
\ALUResult_OBUF[17]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(16),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(16),
      O => SrcA(16)
    );
\ALUResult_OBUF[18]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(17),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(17),
      O => SrcA(17)
    );
\ALUResult_OBUF[19]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(18),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(18),
      O => SrcA(18)
    );
\ALUResult_OBUF[1]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(0),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(0),
      O => SrcA(0)
    );
\ALUResult_OBUF[20]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(19),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(19),
      O => SrcA(19)
    );
\ALUResult_OBUF[21]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(20),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(20),
      O => SrcA(20)
    );
\ALUResult_OBUF[22]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(21),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(21),
      O => SrcA(21)
    );
\ALUResult_OBUF[23]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(22),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(22),
      O => SrcA(22)
    );
\ALUResult_OBUF[24]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(23),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(23),
      O => SrcA(23)
    );
\ALUResult_OBUF[25]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(24),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(24),
      O => SrcA(24)
    );
\ALUResult_OBUF[26]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(25),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(25),
      O => SrcA(25)
    );
\ALUResult_OBUF[27]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(26),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(26),
      O => SrcA(26)
    );
\ALUResult_OBUF[28]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(27),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(27),
      O => SrcA(27)
    );
\ALUResult_OBUF[2]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(1),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(1),
      O => SrcA(1)
    );
\ALUResult_OBUF[3]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(2),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(2),
      O => SrcA(2)
    );
\ALUResult_OBUF[4]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(3),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(3),
      O => SrcA(3)
    );
\ALUResult_OBUF[7]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(6),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(6),
      O => SrcA(6)
    );
\ALUResult_OBUF[8]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(7),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(7),
      O => SrcA(7)
    );
\ALUResult_OBUF[9]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(8),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(8),
      O => SrcA(8)
    );
\Result0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(6),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(6),
      O => \q_reg[3]\(1)
    );
\Result0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(5),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(5),
      O => SrcA(5)
    );
\Result0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(4),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(4),
      O => SrcA(4)
    );
\Result0_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(3),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(3),
      O => \q_reg[3]\(0)
    );
\Result0_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(10),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(10),
      O => \q_reg[3]_0\(3)
    );
\Result0_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(9),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(9),
      O => \q_reg[3]_0\(2)
    );
\Result0_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(8),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(8),
      O => \q_reg[3]_0\(1)
    );
\Result0_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(7),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(7),
      O => \q_reg[3]_0\(0)
    );
\Result0_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(14),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(14),
      O => \q_reg[3]_1\(3)
    );
\Result0_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(13),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(13),
      O => \q_reg[3]_1\(2)
    );
\Result0_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(12),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(12),
      O => \q_reg[3]_1\(1)
    );
\Result0_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(11),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(11),
      O => \q_reg[3]_1\(0)
    );
\Result0_carry__3_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(18),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(18),
      O => \q_reg[3]_2\(3)
    );
\Result0_carry__3_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(17),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(17),
      O => \q_reg[3]_2\(2)
    );
\Result0_carry__3_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(16),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(16),
      O => \q_reg[3]_2\(1)
    );
\Result0_carry__3_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(15),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(15),
      O => \q_reg[3]_2\(0)
    );
\Result0_carry__4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(22),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(22),
      O => \q_reg[3]_3\(3)
    );
\Result0_carry__4_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(21),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(21),
      O => \q_reg[3]_3\(2)
    );
\Result0_carry__4_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(20),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(20),
      O => \q_reg[3]_3\(1)
    );
\Result0_carry__4_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(19),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(19),
      O => \q_reg[3]_3\(0)
    );
\Result0_carry__5_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(26),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(26),
      O => \q_reg[3]_4\(3)
    );
\Result0_carry__5_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(25),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(25),
      O => \q_reg[3]_4\(2)
    );
\Result0_carry__5_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(24),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(24),
      O => \q_reg[3]_4\(1)
    );
\Result0_carry__5_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(23),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(23),
      O => \q_reg[3]_4\(0)
    );
\Result0_carry__6_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(27),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(27),
      O => \q_reg[3]_5\(0)
    );
Result0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(2),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(2),
      O => DI(2)
    );
Result0_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(1),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(1),
      O => DI(1)
    );
Result0_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(0),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(0),
      O => DI(0)
    );
\WriteData_OBUF[10]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(9),
      I1 => \WriteData[5]\,
      I2 => rd20(8),
      O => wd(8)
    );
\WriteData_OBUF[11]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(10),
      I1 => \WriteData[5]\,
      I2 => rd20(9),
      O => wd(9)
    );
\WriteData_OBUF[12]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(11),
      I1 => \WriteData[5]\,
      I2 => rd20(10),
      O => wd(10)
    );
\WriteData_OBUF[13]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(12),
      I1 => \WriteData[5]\,
      I2 => rd20(11),
      O => wd(11)
    );
\WriteData_OBUF[14]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(13),
      I1 => \WriteData[5]\,
      I2 => rd20(12),
      O => wd(12)
    );
\WriteData_OBUF[15]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(14),
      I1 => \WriteData[5]\,
      I2 => rd20(13),
      O => wd(13)
    );
\WriteData_OBUF[16]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(15),
      I1 => \WriteData[5]\,
      I2 => rd20(14),
      O => wd(14)
    );
\WriteData_OBUF[17]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(16),
      I1 => \WriteData[5]\,
      I2 => rd20(15),
      O => wd(15)
    );
\WriteData_OBUF[18]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(17),
      I1 => \WriteData[5]\,
      I2 => rd20(16),
      O => wd(16)
    );
\WriteData_OBUF[19]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(18),
      I1 => \WriteData[5]\,
      I2 => rd20(17),
      O => wd(17)
    );
\WriteData_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(0),
      I1 => \WriteData[5]\,
      I2 => rd20(0),
      O => wd(0)
    );
\WriteData_OBUF[21]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(20),
      I1 => \WriteData[5]\,
      I2 => rd20(18),
      O => wd(18)
    );
\WriteData_OBUF[22]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(21),
      I1 => \WriteData[5]\,
      I2 => rd20(19),
      O => wd(19)
    );
\WriteData_OBUF[23]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(22),
      I1 => \WriteData[5]\,
      I2 => rd20(20),
      O => wd(20)
    );
\WriteData_OBUF[27]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(26),
      I1 => \WriteData[5]\,
      I2 => rd20(21),
      O => wd(21)
    );
\WriteData_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(1),
      I1 => \WriteData[5]\,
      I2 => rd20(1),
      O => wd(1)
    );
\WriteData_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(2),
      I1 => \WriteData[5]\,
      I2 => rd20(2),
      O => wd(2)
    );
\WriteData_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(4),
      I1 => \WriteData[5]\,
      I2 => rd20(3),
      O => wd(3)
    );
\WriteData_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(5),
      I1 => \WriteData[5]\,
      I2 => rd20(4),
      O => wd(4)
    );
\WriteData_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(6),
      I1 => \WriteData[5]\,
      I2 => rd20(5),
      O => wd(5)
    );
\WriteData_OBUF[8]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(7),
      I1 => \WriteData[5]\,
      I2 => rd20(6),
      O => wd(6)
    );
\WriteData_OBUF[9]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(8),
      I1 => \WriteData[5]\,
      I2 => rd20(7),
      O => wd(7)
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(6),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(6),
      O => \q_reg[3]_7\(1)
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(3),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(3),
      O => \q_reg[3]_7\(0)
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(10),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(10),
      O => \q_reg[3]_8\(3)
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(9),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(9),
      O => \q_reg[3]_8\(2)
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(8),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(8),
      O => \q_reg[3]_8\(1)
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(7),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(7),
      O => \q_reg[3]_8\(0)
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(14),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(14),
      O => \q_reg[3]_9\(3)
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(13),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(13),
      O => \q_reg[3]_9\(2)
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(12),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(12),
      O => \q_reg[3]_9\(1)
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(11),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(11),
      O => \q_reg[3]_9\(0)
    );
\i__carry__3_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(18),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(18),
      O => \q_reg[3]_10\(3)
    );
\i__carry__3_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(17),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(17),
      O => \q_reg[3]_10\(2)
    );
\i__carry__3_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(16),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(16),
      O => \q_reg[3]_10\(1)
    );
\i__carry__3_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(15),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(15),
      O => \q_reg[3]_10\(0)
    );
\i__carry__4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(22),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(22),
      O => \q_reg[3]_11\(3)
    );
\i__carry__4_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(21),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(21),
      O => \q_reg[3]_11\(2)
    );
\i__carry__4_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(20),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(20),
      O => \q_reg[3]_11\(1)
    );
\i__carry__4_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(19),
      I1 => \ALUResult_OBUF[4]_inst_i_3\,
      I2 => rd10(19),
      O => \q_reg[3]_11\(0)
    );
\i__carry__5_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(26),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(26),
      O => \q_reg[3]_12\(3)
    );
\i__carry__5_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(25),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(25),
      O => \q_reg[3]_12\(2)
    );
\i__carry__5_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(24),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(24),
      O => \q_reg[3]_12\(1)
    );
\i__carry__5_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(23),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(23),
      O => \q_reg[3]_12\(0)
    );
\i__carry__6_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(28),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(28),
      O => \q_reg[3]_13\(1)
    );
\i__carry__6_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(27),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(27),
      O => \q_reg[3]_13\(0)
    );
\i__carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(2),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(2),
      O => \q_reg[3]_6\(2)
    );
\i__carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(1),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(1),
      O => \q_reg[3]_6\(1)
    );
\i__carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(0),
      I1 => \ALUResult_OBUF[8]_inst_i_2\,
      I2 => rd10(0),
      O => \q_reg[3]_6\(0)
    );
y0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => y0_carry_n_0,
      CO(2) => y0_carry_n_1,
      CO(1) => y0_carry_n_2,
      CO(0) => y0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => d1(1),
      DI(0) => '0',
      O(3 downto 0) => \^r15\(3 downto 0),
      S(3 downto 2) => d1(3 downto 2),
      S(1) => S(0),
      S(0) => d1(0)
    );
\y0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => y0_carry_n_0,
      CO(3) => \y0_carry__0_n_0\,
      CO(2) => \y0_carry__0_n_1\,
      CO(1) => \y0_carry__0_n_2\,
      CO(0) => \y0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^r15\(7 downto 4),
      S(3 downto 0) => d1(7 downto 4)
    );
\y0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y0_carry__0_n_0\,
      CO(3) => \y0_carry__1_n_0\,
      CO(2) => \y0_carry__1_n_1\,
      CO(1) => \y0_carry__1_n_2\,
      CO(0) => \y0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^r15\(11 downto 8),
      S(3 downto 0) => d1(11 downto 8)
    );
\y0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \y0_carry__1_n_0\,
      CO(3) => \y0_carry__2_n_0\,
      CO(2) => \y0_carry__2_n_1\,
      CO(1) => \y0_carry__2_n_2\,
      CO(0) => \y0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^r15\(15 downto 12),
      S(3 downto 0) => d1(15 downto 12)
    );
\y0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \y0_carry__2_n_0\,
      CO(3) => \y0_carry__3_n_0\,
      CO(2) => \y0_carry__3_n_1\,
      CO(1) => \y0_carry__3_n_2\,
      CO(0) => \y0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^r15\(19 downto 16),
      S(3 downto 0) => d1(19 downto 16)
    );
\y0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \y0_carry__3_n_0\,
      CO(3) => \y0_carry__4_n_0\,
      CO(2) => \y0_carry__4_n_1\,
      CO(1) => \y0_carry__4_n_2\,
      CO(0) => \y0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^r15\(23 downto 20),
      S(3 downto 0) => d1(23 downto 20)
    );
\y0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \y0_carry__4_n_0\,
      CO(3) => \y0_carry__5_n_0\,
      CO(2) => \y0_carry__5_n_1\,
      CO(1) => \y0_carry__5_n_2\,
      CO(0) => \y0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^r15\(27 downto 24),
      S(3 downto 0) => d1(27 downto 24)
    );
\y0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \y0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_y0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \y0_carry__6_n_2\,
      CO(0) => \y0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_y0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => \^r15\(30 downto 28),
      S(3) => '0',
      S(2 downto 0) => d1(30 downto 28)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity alu is
  port (
    \Result0_carry__6_i_8\ : out STD_LOGIC_VECTOR ( 30 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \i__carry__6_i_8\ : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \i__carry__6_i_8_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_0_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    ALUFlags : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[7]\ : out STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[4]_inst_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[4]_inst_i_2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[8]_inst_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[8]_inst_i_2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[12]_inst_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[12]_inst_i_2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[16]_inst_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[16]_inst_i_2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[20]_inst_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[20]_inst_i_2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[24]_inst_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[24]_inst_i_2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[28]_inst_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[28]_inst_i_2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[0]_inst_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[0]_inst_i_2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[4]_inst_i_2_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ALUResult_OBUF[4]_inst_i_2_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[8]_inst_i_2_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[8]_inst_i_2_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[12]_inst_i_2_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[12]_inst_i_2_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[16]_inst_i_2_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[16]_inst_i_2_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[20]_inst_i_2_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[20]_inst_i_2_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[24]_inst_i_2_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[24]_inst_i_2_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[28]_inst_i_2_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[28]_inst_i_2_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[7]\ : in STD_LOGIC;
    \ALUResult[7]_0\ : in STD_LOGIC;
    aD2M4dsP : in STD_LOGIC_VECTOR ( 0 to 0 );
    SrcA : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[0]\ : in STD_LOGIC;
    \q_reg[0]_0\ : in STD_LOGIC;
    \q_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[0]_3\ : in STD_LOGIC
  );
end alu;

architecture STRUCTURE of alu is
  signal \ALUResult_OBUF[7]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Result0_carry__0_n_0\ : STD_LOGIC;
  signal \Result0_carry__0_n_1\ : STD_LOGIC;
  signal \Result0_carry__0_n_2\ : STD_LOGIC;
  signal \Result0_carry__0_n_3\ : STD_LOGIC;
  signal \Result0_carry__1_n_0\ : STD_LOGIC;
  signal \Result0_carry__1_n_1\ : STD_LOGIC;
  signal \Result0_carry__1_n_2\ : STD_LOGIC;
  signal \Result0_carry__1_n_3\ : STD_LOGIC;
  signal \Result0_carry__2_n_0\ : STD_LOGIC;
  signal \Result0_carry__2_n_1\ : STD_LOGIC;
  signal \Result0_carry__2_n_2\ : STD_LOGIC;
  signal \Result0_carry__2_n_3\ : STD_LOGIC;
  signal \Result0_carry__3_n_0\ : STD_LOGIC;
  signal \Result0_carry__3_n_1\ : STD_LOGIC;
  signal \Result0_carry__3_n_2\ : STD_LOGIC;
  signal \Result0_carry__3_n_3\ : STD_LOGIC;
  signal \Result0_carry__4_n_0\ : STD_LOGIC;
  signal \Result0_carry__4_n_1\ : STD_LOGIC;
  signal \Result0_carry__4_n_2\ : STD_LOGIC;
  signal \Result0_carry__4_n_3\ : STD_LOGIC;
  signal \Result0_carry__5_n_0\ : STD_LOGIC;
  signal \Result0_carry__5_n_1\ : STD_LOGIC;
  signal \Result0_carry__5_n_2\ : STD_LOGIC;
  signal \Result0_carry__5_n_3\ : STD_LOGIC;
  signal \^result0_carry__6_i_8\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \Result0_carry__6_n_1\ : STD_LOGIC;
  signal \Result0_carry__6_n_2\ : STD_LOGIC;
  signal \Result0_carry__6_n_3\ : STD_LOGIC;
  signal Result0_carry_n_0 : STD_LOGIC;
  signal Result0_carry_n_1 : STD_LOGIC;
  signal Result0_carry_n_2 : STD_LOGIC;
  signal Result0_carry_n_3 : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__4_n_0\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__4_n_1\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__4_n_2\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__4_n_3\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__5_n_0\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__5_n_1\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__5_n_2\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__5_n_3\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__6_n_1\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__6_n_2\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__6_n_3\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \^i__carry__6_i_8\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal p_2_in : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \q[0]_i_10_n_0\ : STD_LOGIC;
  signal \q[0]_i_11_n_0\ : STD_LOGIC;
  signal \q[0]_i_12_n_0\ : STD_LOGIC;
  signal \q[0]_i_13_n_0\ : STD_LOGIC;
  signal \q[0]_i_37_n_0\ : STD_LOGIC;
  signal \q[0]_i_38_n_0\ : STD_LOGIC;
  signal \q[0]_i_39_n_0\ : STD_LOGIC;
  signal \q[0]_i_40_n_0\ : STD_LOGIC;
  signal \q[0]_i_41_n_0\ : STD_LOGIC;
  signal \q[0]_i_42_n_0\ : STD_LOGIC;
  signal \q[0]_i_43_n_0\ : STD_LOGIC;
  signal \q[0]_i_44_n_0\ : STD_LOGIC;
  signal \q[0]_i_94_n_0\ : STD_LOGIC;
  signal \q[0]_i_95_n_0\ : STD_LOGIC;
  signal \q[0]_i_96_n_0\ : STD_LOGIC;
  signal \q[0]_i_97_n_0\ : STD_LOGIC;
begin
  \Result0_carry__6_i_8\(30 downto 0) <= \^result0_carry__6_i_8\(30 downto 0);
  \i__carry__6_i_8\(30 downto 0) <= \^i__carry__6_i_8\(30 downto 0);
\ALUResult_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \ALUResult_OBUF[7]_inst_i_2_n_0\,
      I1 => \ALUResult[7]\,
      I2 => \ALUResult[7]_0\,
      O => p_0_in(0)
    );
\ALUResult_OBUF[7]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0F0F00CCCCAAAA"
    )
        port map (
      I0 => p_0_in_0(7),
      I1 => p_2_in(7),
      I2 => aD2M4dsP(0),
      I3 => SrcA(0),
      I4 => \q_reg[0]\,
      I5 => \q_reg[0]_0\,
      O => \ALUResult_OBUF[7]_inst_i_2_n_0\
    );
Result0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Result0_carry_n_0,
      CO(2) => Result0_carry_n_1,
      CO(1) => Result0_carry_n_2,
      CO(0) => Result0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => \^result0_carry__6_i_8\(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\Result0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => Result0_carry_n_0,
      CO(3) => \Result0_carry__0_n_0\,
      CO(2) => \Result0_carry__0_n_1\,
      CO(1) => \Result0_carry__0_n_2\,
      CO(0) => \Result0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \ALUResult_OBUF[4]_inst_i_2\(3 downto 0),
      O(3) => p_0_in_0(7),
      O(2 downto 0) => \^result0_carry__6_i_8\(6 downto 4),
      S(3 downto 0) => \ALUResult_OBUF[4]_inst_i_2_0\(3 downto 0)
    );
\Result0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_carry__0_n_0\,
      CO(3) => \Result0_carry__1_n_0\,
      CO(2) => \Result0_carry__1_n_1\,
      CO(1) => \Result0_carry__1_n_2\,
      CO(0) => \Result0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \ALUResult_OBUF[8]_inst_i_2\(3 downto 0),
      O(3 downto 0) => \^result0_carry__6_i_8\(10 downto 7),
      S(3 downto 0) => \ALUResult_OBUF[8]_inst_i_2_0\(3 downto 0)
    );
\Result0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_carry__1_n_0\,
      CO(3) => \Result0_carry__2_n_0\,
      CO(2) => \Result0_carry__2_n_1\,
      CO(1) => \Result0_carry__2_n_2\,
      CO(0) => \Result0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \ALUResult_OBUF[12]_inst_i_2\(3 downto 0),
      O(3 downto 0) => \^result0_carry__6_i_8\(14 downto 11),
      S(3 downto 0) => \ALUResult_OBUF[12]_inst_i_2_0\(3 downto 0)
    );
\Result0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_carry__2_n_0\,
      CO(3) => \Result0_carry__3_n_0\,
      CO(2) => \Result0_carry__3_n_1\,
      CO(1) => \Result0_carry__3_n_2\,
      CO(0) => \Result0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \ALUResult_OBUF[16]_inst_i_2\(3 downto 0),
      O(3 downto 0) => \^result0_carry__6_i_8\(18 downto 15),
      S(3 downto 0) => \ALUResult_OBUF[16]_inst_i_2_0\(3 downto 0)
    );
\Result0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_carry__3_n_0\,
      CO(3) => \Result0_carry__4_n_0\,
      CO(2) => \Result0_carry__4_n_1\,
      CO(1) => \Result0_carry__4_n_2\,
      CO(0) => \Result0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \ALUResult_OBUF[20]_inst_i_2\(3 downto 0),
      O(3 downto 0) => \^result0_carry__6_i_8\(22 downto 19),
      S(3 downto 0) => \ALUResult_OBUF[20]_inst_i_2_0\(3 downto 0)
    );
\Result0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_carry__4_n_0\,
      CO(3) => \Result0_carry__5_n_0\,
      CO(2) => \Result0_carry__5_n_1\,
      CO(1) => \Result0_carry__5_n_2\,
      CO(0) => \Result0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \ALUResult_OBUF[24]_inst_i_2\(3 downto 0),
      O(3 downto 0) => \^result0_carry__6_i_8\(26 downto 23),
      S(3 downto 0) => \ALUResult_OBUF[24]_inst_i_2_0\(3 downto 0)
    );
\Result0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_carry__5_n_0\,
      CO(3) => CO(0),
      CO(2) => \Result0_carry__6_n_1\,
      CO(1) => \Result0_carry__6_n_2\,
      CO(0) => \Result0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \ALUResult_OBUF[28]_inst_i_2\(3 downto 0),
      O(3 downto 0) => \^result0_carry__6_i_8\(30 downto 27),
      S(3 downto 0) => \ALUResult_OBUF[28]_inst_i_2_0\(3 downto 0)
    );
\Result0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Result0_inferred__0/i__carry_n_0\,
      CO(2) => \Result0_inferred__0/i__carry_n_1\,
      CO(1) => \Result0_inferred__0/i__carry_n_2\,
      CO(0) => \Result0_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \ALUResult_OBUF[0]_inst_i_2\(3 downto 0),
      O(3 downto 0) => \^i__carry__6_i_8\(3 downto 0),
      S(3 downto 0) => \ALUResult_OBUF[0]_inst_i_2_0\(3 downto 0)
    );
\Result0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_inferred__0/i__carry_n_0\,
      CO(3) => \Result0_inferred__0/i__carry__0_n_0\,
      CO(2) => \Result0_inferred__0/i__carry__0_n_1\,
      CO(1) => \Result0_inferred__0/i__carry__0_n_2\,
      CO(0) => \Result0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \ALUResult_OBUF[4]_inst_i_2_1\(1),
      DI(2 downto 1) => \ALUResult_OBUF[4]_inst_i_2\(2 downto 1),
      DI(0) => \ALUResult_OBUF[4]_inst_i_2_1\(0),
      O(3) => p_2_in(7),
      O(2 downto 0) => \^i__carry__6_i_8\(6 downto 4),
      S(3 downto 0) => \ALUResult_OBUF[4]_inst_i_2_2\(3 downto 0)
    );
\Result0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_inferred__0/i__carry__0_n_0\,
      CO(3) => \Result0_inferred__0/i__carry__1_n_0\,
      CO(2) => \Result0_inferred__0/i__carry__1_n_1\,
      CO(1) => \Result0_inferred__0/i__carry__1_n_2\,
      CO(0) => \Result0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \ALUResult_OBUF[8]_inst_i_2_1\(3 downto 0),
      O(3 downto 0) => \^i__carry__6_i_8\(10 downto 7),
      S(3 downto 0) => \ALUResult_OBUF[8]_inst_i_2_2\(3 downto 0)
    );
\Result0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_inferred__0/i__carry__1_n_0\,
      CO(3) => \Result0_inferred__0/i__carry__2_n_0\,
      CO(2) => \Result0_inferred__0/i__carry__2_n_1\,
      CO(1) => \Result0_inferred__0/i__carry__2_n_2\,
      CO(0) => \Result0_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \ALUResult_OBUF[12]_inst_i_2_1\(3 downto 0),
      O(3 downto 0) => \^i__carry__6_i_8\(14 downto 11),
      S(3 downto 0) => \ALUResult_OBUF[12]_inst_i_2_2\(3 downto 0)
    );
\Result0_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_inferred__0/i__carry__2_n_0\,
      CO(3) => \Result0_inferred__0/i__carry__3_n_0\,
      CO(2) => \Result0_inferred__0/i__carry__3_n_1\,
      CO(1) => \Result0_inferred__0/i__carry__3_n_2\,
      CO(0) => \Result0_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \ALUResult_OBUF[16]_inst_i_2_1\(3 downto 0),
      O(3 downto 0) => \^i__carry__6_i_8\(18 downto 15),
      S(3 downto 0) => \ALUResult_OBUF[16]_inst_i_2_2\(3 downto 0)
    );
\Result0_inferred__0/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_inferred__0/i__carry__3_n_0\,
      CO(3) => \Result0_inferred__0/i__carry__4_n_0\,
      CO(2) => \Result0_inferred__0/i__carry__4_n_1\,
      CO(1) => \Result0_inferred__0/i__carry__4_n_2\,
      CO(0) => \Result0_inferred__0/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \ALUResult_OBUF[20]_inst_i_2_1\(3 downto 0),
      O(3 downto 0) => \^i__carry__6_i_8\(22 downto 19),
      S(3 downto 0) => \ALUResult_OBUF[20]_inst_i_2_2\(3 downto 0)
    );
\Result0_inferred__0/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_inferred__0/i__carry__4_n_0\,
      CO(3) => \Result0_inferred__0/i__carry__5_n_0\,
      CO(2) => \Result0_inferred__0/i__carry__5_n_1\,
      CO(1) => \Result0_inferred__0/i__carry__5_n_2\,
      CO(0) => \Result0_inferred__0/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \ALUResult_OBUF[24]_inst_i_2_1\(3 downto 0),
      O(3 downto 0) => \^i__carry__6_i_8\(26 downto 23),
      S(3 downto 0) => \ALUResult_OBUF[24]_inst_i_2_2\(3 downto 0)
    );
\Result0_inferred__0/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_inferred__0/i__carry__5_n_0\,
      CO(3) => \i__carry__6_i_8_0\(0),
      CO(2) => \Result0_inferred__0/i__carry__6_n_1\,
      CO(1) => \Result0_inferred__0/i__carry__6_n_2\,
      CO(0) => \Result0_inferred__0/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \ALUResult_OBUF[28]_inst_i_2_1\(3 downto 0),
      O(3 downto 0) => \^i__carry__6_i_8\(30 downto 27),
      S(3 downto 0) => \ALUResult_OBUF[28]_inst_i_2_2\(3 downto 0)
    );
\q[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \q[0]_i_37_n_0\,
      I1 => \^result0_carry__6_i_8\(3),
      I2 => \^result0_carry__6_i_8\(1),
      I3 => \^result0_carry__6_i_8\(5),
      I4 => \^result0_carry__6_i_8\(4),
      I5 => \q[0]_i_38_n_0\,
      O => \q[0]_i_10_n_0\
    );
\q[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \q[0]_i_39_n_0\,
      I1 => \^result0_carry__6_i_8\(2),
      I2 => \^result0_carry__6_i_8\(0),
      I3 => \^result0_carry__6_i_8\(8),
      I4 => p_0_in_0(7),
      I5 => \q[0]_i_40_n_0\,
      O => \q[0]_i_11_n_0\
    );
\q[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \q[0]_i_41_n_0\,
      I1 => \^i__carry__6_i_8\(2),
      I2 => \^i__carry__6_i_8\(0),
      I3 => \^i__carry__6_i_8\(4),
      I4 => \^i__carry__6_i_8\(3),
      I5 => \q[0]_i_42_n_0\,
      O => \q[0]_i_12_n_0\
    );
\q[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \q[0]_i_43_n_0\,
      I1 => p_2_in(7),
      I2 => \^i__carry__6_i_8\(1),
      I3 => \^i__carry__6_i_8\(13),
      I4 => \^i__carry__6_i_8\(10),
      I5 => \q[0]_i_44_n_0\,
      O => \q[0]_i_13_n_0\
    );
\q[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F00F9999"
    )
        port map (
      I0 => \^result0_carry__6_i_8\(30),
      I1 => \q_reg[0]_1\(0),
      I2 => \^i__carry__6_i_8\(30),
      I3 => \q_reg[0]_2\(0),
      I4 => \q_reg[0]\,
      I5 => \q_reg[0]_3\,
      O => ALUFlags(0)
    );
\q[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8080808"
    )
        port map (
      I0 => \q[0]_i_10_n_0\,
      I1 => \q[0]_i_11_n_0\,
      I2 => \q_reg[0]\,
      I3 => \q[0]_i_12_n_0\,
      I4 => \q[0]_i_13_n_0\,
      I5 => \q_reg[0]_0\,
      O => \q_reg[7]\
    );
\q[0]_i_37\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^result0_carry__6_i_8\(11),
      I1 => \^result0_carry__6_i_8\(10),
      I2 => \^result0_carry__6_i_8\(7),
      I3 => \^result0_carry__6_i_8\(6),
      O => \q[0]_i_37_n_0\
    );
\q[0]_i_38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \^result0_carry__6_i_8\(22),
      I1 => \^result0_carry__6_i_8\(24),
      I2 => \^result0_carry__6_i_8\(27),
      I3 => \^result0_carry__6_i_8\(29),
      I4 => \q[0]_i_94_n_0\,
      O => \q[0]_i_38_n_0\
    );
\q[0]_i_39\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^result0_carry__6_i_8\(16),
      I1 => \^result0_carry__6_i_8\(15),
      I2 => \^result0_carry__6_i_8\(12),
      I3 => \^result0_carry__6_i_8\(9),
      O => \q[0]_i_39_n_0\
    );
\q[0]_i_40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \^result0_carry__6_i_8\(25),
      I1 => \^result0_carry__6_i_8\(26),
      I2 => \^result0_carry__6_i_8\(28),
      I3 => \^result0_carry__6_i_8\(30),
      I4 => \q[0]_i_95_n_0\,
      O => \q[0]_i_40_n_0\
    );
\q[0]_i_41\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^i__carry__6_i_8\(8),
      I1 => \^i__carry__6_i_8\(7),
      I2 => \^i__carry__6_i_8\(6),
      I3 => \^i__carry__6_i_8\(5),
      O => \q[0]_i_41_n_0\
    );
\q[0]_i_42\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \^i__carry__6_i_8\(22),
      I1 => \^i__carry__6_i_8\(27),
      I2 => \^i__carry__6_i_8\(28),
      I3 => \^i__carry__6_i_8\(30),
      I4 => \q[0]_i_96_n_0\,
      O => \q[0]_i_42_n_0\
    );
\q[0]_i_43\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^i__carry__6_i_8\(17),
      I1 => \^i__carry__6_i_8\(16),
      I2 => \^i__carry__6_i_8\(15),
      I3 => \^i__carry__6_i_8\(14),
      O => \q[0]_i_43_n_0\
    );
\q[0]_i_44\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \^i__carry__6_i_8\(24),
      I1 => \^i__carry__6_i_8\(25),
      I2 => \^i__carry__6_i_8\(26),
      I3 => \^i__carry__6_i_8\(29),
      I4 => \q[0]_i_97_n_0\,
      O => \q[0]_i_44_n_0\
    );
\q[0]_i_94\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^result0_carry__6_i_8\(21),
      I1 => \^result0_carry__6_i_8\(20),
      I2 => \^result0_carry__6_i_8\(14),
      I3 => \^result0_carry__6_i_8\(13),
      O => \q[0]_i_94_n_0\
    );
\q[0]_i_95\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^result0_carry__6_i_8\(23),
      I1 => \^result0_carry__6_i_8\(19),
      I2 => \^result0_carry__6_i_8\(18),
      I3 => \^result0_carry__6_i_8\(17),
      O => \q[0]_i_95_n_0\
    );
\q[0]_i_96\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^i__carry__6_i_8\(18),
      I1 => \^i__carry__6_i_8\(12),
      I2 => \^i__carry__6_i_8\(11),
      I3 => \^i__carry__6_i_8\(9),
      O => \q[0]_i_96_n_0\
    );
\q[0]_i_97\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^i__carry__6_i_8\(23),
      I1 => \^i__carry__6_i_8\(21),
      I2 => \^i__carry__6_i_8\(20),
      I3 => \^i__carry__6_i_8\(19),
      O => \q[0]_i_97_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dmem is
  port (
    Result_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    rd : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \Result[7]\ : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    wd : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MemWrite : in STD_LOGIC
  );
end dmem;

architecture STRUCTURE of dmem is
  signal \^rd\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0_63_0_0 : label is 2048;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0_63_0_0 : label is "dp/d_mem/mem";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg_0_63_0_0 : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0_63_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0_63_0_0 : label is 63;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0_63_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0_63_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0_63_0_0 : label is 0;
  attribute RTL_RAM_BITS of mem_reg_0_63_10_10 : label is 2048;
  attribute RTL_RAM_NAME of mem_reg_0_63_10_10 : label is "dp/d_mem/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_63_10_10 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_63_10_10 : label is 0;
  attribute ram_addr_end of mem_reg_0_63_10_10 : label is 63;
  attribute ram_offset of mem_reg_0_63_10_10 : label is 0;
  attribute ram_slice_begin of mem_reg_0_63_10_10 : label is 10;
  attribute ram_slice_end of mem_reg_0_63_10_10 : label is 10;
  attribute RTL_RAM_BITS of mem_reg_0_63_11_11 : label is 2048;
  attribute RTL_RAM_NAME of mem_reg_0_63_11_11 : label is "dp/d_mem/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_63_11_11 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_63_11_11 : label is 0;
  attribute ram_addr_end of mem_reg_0_63_11_11 : label is 63;
  attribute ram_offset of mem_reg_0_63_11_11 : label is 0;
  attribute ram_slice_begin of mem_reg_0_63_11_11 : label is 11;
  attribute ram_slice_end of mem_reg_0_63_11_11 : label is 11;
  attribute RTL_RAM_BITS of mem_reg_0_63_12_12 : label is 2048;
  attribute RTL_RAM_NAME of mem_reg_0_63_12_12 : label is "dp/d_mem/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_63_12_12 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_63_12_12 : label is 0;
  attribute ram_addr_end of mem_reg_0_63_12_12 : label is 63;
  attribute ram_offset of mem_reg_0_63_12_12 : label is 0;
  attribute ram_slice_begin of mem_reg_0_63_12_12 : label is 12;
  attribute ram_slice_end of mem_reg_0_63_12_12 : label is 12;
  attribute RTL_RAM_BITS of mem_reg_0_63_13_13 : label is 2048;
  attribute RTL_RAM_NAME of mem_reg_0_63_13_13 : label is "dp/d_mem/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_63_13_13 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_63_13_13 : label is 0;
  attribute ram_addr_end of mem_reg_0_63_13_13 : label is 63;
  attribute ram_offset of mem_reg_0_63_13_13 : label is 0;
  attribute ram_slice_begin of mem_reg_0_63_13_13 : label is 13;
  attribute ram_slice_end of mem_reg_0_63_13_13 : label is 13;
  attribute RTL_RAM_BITS of mem_reg_0_63_14_14 : label is 2048;
  attribute RTL_RAM_NAME of mem_reg_0_63_14_14 : label is "dp/d_mem/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_63_14_14 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_63_14_14 : label is 0;
  attribute ram_addr_end of mem_reg_0_63_14_14 : label is 63;
  attribute ram_offset of mem_reg_0_63_14_14 : label is 0;
  attribute ram_slice_begin of mem_reg_0_63_14_14 : label is 14;
  attribute ram_slice_end of mem_reg_0_63_14_14 : label is 14;
  attribute RTL_RAM_BITS of mem_reg_0_63_15_15 : label is 2048;
  attribute RTL_RAM_NAME of mem_reg_0_63_15_15 : label is "dp/d_mem/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_63_15_15 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_63_15_15 : label is 0;
  attribute ram_addr_end of mem_reg_0_63_15_15 : label is 63;
  attribute ram_offset of mem_reg_0_63_15_15 : label is 0;
  attribute ram_slice_begin of mem_reg_0_63_15_15 : label is 15;
  attribute ram_slice_end of mem_reg_0_63_15_15 : label is 15;
  attribute RTL_RAM_BITS of mem_reg_0_63_16_16 : label is 2048;
  attribute RTL_RAM_NAME of mem_reg_0_63_16_16 : label is "dp/d_mem/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_63_16_16 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_63_16_16 : label is 0;
  attribute ram_addr_end of mem_reg_0_63_16_16 : label is 63;
  attribute ram_offset of mem_reg_0_63_16_16 : label is 0;
  attribute ram_slice_begin of mem_reg_0_63_16_16 : label is 16;
  attribute ram_slice_end of mem_reg_0_63_16_16 : label is 16;
  attribute RTL_RAM_BITS of mem_reg_0_63_17_17 : label is 2048;
  attribute RTL_RAM_NAME of mem_reg_0_63_17_17 : label is "dp/d_mem/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_63_17_17 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_63_17_17 : label is 0;
  attribute ram_addr_end of mem_reg_0_63_17_17 : label is 63;
  attribute ram_offset of mem_reg_0_63_17_17 : label is 0;
  attribute ram_slice_begin of mem_reg_0_63_17_17 : label is 17;
  attribute ram_slice_end of mem_reg_0_63_17_17 : label is 17;
  attribute RTL_RAM_BITS of mem_reg_0_63_18_18 : label is 2048;
  attribute RTL_RAM_NAME of mem_reg_0_63_18_18 : label is "dp/d_mem/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_63_18_18 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_63_18_18 : label is 0;
  attribute ram_addr_end of mem_reg_0_63_18_18 : label is 63;
  attribute ram_offset of mem_reg_0_63_18_18 : label is 0;
  attribute ram_slice_begin of mem_reg_0_63_18_18 : label is 18;
  attribute ram_slice_end of mem_reg_0_63_18_18 : label is 18;
  attribute RTL_RAM_BITS of mem_reg_0_63_19_19 : label is 2048;
  attribute RTL_RAM_NAME of mem_reg_0_63_19_19 : label is "dp/d_mem/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_63_19_19 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_63_19_19 : label is 0;
  attribute ram_addr_end of mem_reg_0_63_19_19 : label is 63;
  attribute ram_offset of mem_reg_0_63_19_19 : label is 0;
  attribute ram_slice_begin of mem_reg_0_63_19_19 : label is 19;
  attribute ram_slice_end of mem_reg_0_63_19_19 : label is 19;
  attribute RTL_RAM_BITS of mem_reg_0_63_1_1 : label is 2048;
  attribute RTL_RAM_NAME of mem_reg_0_63_1_1 : label is "dp/d_mem/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_63_1_1 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_63_1_1 : label is 0;
  attribute ram_addr_end of mem_reg_0_63_1_1 : label is 63;
  attribute ram_offset of mem_reg_0_63_1_1 : label is 0;
  attribute ram_slice_begin of mem_reg_0_63_1_1 : label is 1;
  attribute ram_slice_end of mem_reg_0_63_1_1 : label is 1;
  attribute RTL_RAM_BITS of mem_reg_0_63_20_20 : label is 2048;
  attribute RTL_RAM_NAME of mem_reg_0_63_20_20 : label is "dp/d_mem/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_63_20_20 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_63_20_20 : label is 0;
  attribute ram_addr_end of mem_reg_0_63_20_20 : label is 63;
  attribute ram_offset of mem_reg_0_63_20_20 : label is 0;
  attribute ram_slice_begin of mem_reg_0_63_20_20 : label is 20;
  attribute ram_slice_end of mem_reg_0_63_20_20 : label is 20;
  attribute RTL_RAM_BITS of mem_reg_0_63_21_21 : label is 2048;
  attribute RTL_RAM_NAME of mem_reg_0_63_21_21 : label is "dp/d_mem/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_63_21_21 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_63_21_21 : label is 0;
  attribute ram_addr_end of mem_reg_0_63_21_21 : label is 63;
  attribute ram_offset of mem_reg_0_63_21_21 : label is 0;
  attribute ram_slice_begin of mem_reg_0_63_21_21 : label is 21;
  attribute ram_slice_end of mem_reg_0_63_21_21 : label is 21;
  attribute RTL_RAM_BITS of mem_reg_0_63_22_22 : label is 2048;
  attribute RTL_RAM_NAME of mem_reg_0_63_22_22 : label is "dp/d_mem/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_63_22_22 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_63_22_22 : label is 0;
  attribute ram_addr_end of mem_reg_0_63_22_22 : label is 63;
  attribute ram_offset of mem_reg_0_63_22_22 : label is 0;
  attribute ram_slice_begin of mem_reg_0_63_22_22 : label is 22;
  attribute ram_slice_end of mem_reg_0_63_22_22 : label is 22;
  attribute RTL_RAM_BITS of mem_reg_0_63_23_23 : label is 2048;
  attribute RTL_RAM_NAME of mem_reg_0_63_23_23 : label is "dp/d_mem/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_63_23_23 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_63_23_23 : label is 0;
  attribute ram_addr_end of mem_reg_0_63_23_23 : label is 63;
  attribute ram_offset of mem_reg_0_63_23_23 : label is 0;
  attribute ram_slice_begin of mem_reg_0_63_23_23 : label is 23;
  attribute ram_slice_end of mem_reg_0_63_23_23 : label is 23;
  attribute RTL_RAM_BITS of mem_reg_0_63_24_24 : label is 2048;
  attribute RTL_RAM_NAME of mem_reg_0_63_24_24 : label is "dp/d_mem/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_63_24_24 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_63_24_24 : label is 0;
  attribute ram_addr_end of mem_reg_0_63_24_24 : label is 63;
  attribute ram_offset of mem_reg_0_63_24_24 : label is 0;
  attribute ram_slice_begin of mem_reg_0_63_24_24 : label is 24;
  attribute ram_slice_end of mem_reg_0_63_24_24 : label is 24;
  attribute RTL_RAM_BITS of mem_reg_0_63_25_25 : label is 2048;
  attribute RTL_RAM_NAME of mem_reg_0_63_25_25 : label is "dp/d_mem/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_63_25_25 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_63_25_25 : label is 0;
  attribute ram_addr_end of mem_reg_0_63_25_25 : label is 63;
  attribute ram_offset of mem_reg_0_63_25_25 : label is 0;
  attribute ram_slice_begin of mem_reg_0_63_25_25 : label is 25;
  attribute ram_slice_end of mem_reg_0_63_25_25 : label is 25;
  attribute RTL_RAM_BITS of mem_reg_0_63_26_26 : label is 2048;
  attribute RTL_RAM_NAME of mem_reg_0_63_26_26 : label is "dp/d_mem/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_63_26_26 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_63_26_26 : label is 0;
  attribute ram_addr_end of mem_reg_0_63_26_26 : label is 63;
  attribute ram_offset of mem_reg_0_63_26_26 : label is 0;
  attribute ram_slice_begin of mem_reg_0_63_26_26 : label is 26;
  attribute ram_slice_end of mem_reg_0_63_26_26 : label is 26;
  attribute RTL_RAM_BITS of mem_reg_0_63_27_27 : label is 2048;
  attribute RTL_RAM_NAME of mem_reg_0_63_27_27 : label is "dp/d_mem/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_63_27_27 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_63_27_27 : label is 0;
  attribute ram_addr_end of mem_reg_0_63_27_27 : label is 63;
  attribute ram_offset of mem_reg_0_63_27_27 : label is 0;
  attribute ram_slice_begin of mem_reg_0_63_27_27 : label is 27;
  attribute ram_slice_end of mem_reg_0_63_27_27 : label is 27;
  attribute RTL_RAM_BITS of mem_reg_0_63_28_28 : label is 2048;
  attribute RTL_RAM_NAME of mem_reg_0_63_28_28 : label is "dp/d_mem/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_63_28_28 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_63_28_28 : label is 0;
  attribute ram_addr_end of mem_reg_0_63_28_28 : label is 63;
  attribute ram_offset of mem_reg_0_63_28_28 : label is 0;
  attribute ram_slice_begin of mem_reg_0_63_28_28 : label is 28;
  attribute ram_slice_end of mem_reg_0_63_28_28 : label is 28;
  attribute RTL_RAM_BITS of mem_reg_0_63_29_29 : label is 2048;
  attribute RTL_RAM_NAME of mem_reg_0_63_29_29 : label is "dp/d_mem/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_63_29_29 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_63_29_29 : label is 0;
  attribute ram_addr_end of mem_reg_0_63_29_29 : label is 63;
  attribute ram_offset of mem_reg_0_63_29_29 : label is 0;
  attribute ram_slice_begin of mem_reg_0_63_29_29 : label is 29;
  attribute ram_slice_end of mem_reg_0_63_29_29 : label is 29;
  attribute RTL_RAM_BITS of mem_reg_0_63_2_2 : label is 2048;
  attribute RTL_RAM_NAME of mem_reg_0_63_2_2 : label is "dp/d_mem/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_63_2_2 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_63_2_2 : label is 0;
  attribute ram_addr_end of mem_reg_0_63_2_2 : label is 63;
  attribute ram_offset of mem_reg_0_63_2_2 : label is 0;
  attribute ram_slice_begin of mem_reg_0_63_2_2 : label is 2;
  attribute ram_slice_end of mem_reg_0_63_2_2 : label is 2;
  attribute RTL_RAM_BITS of mem_reg_0_63_30_30 : label is 2048;
  attribute RTL_RAM_NAME of mem_reg_0_63_30_30 : label is "dp/d_mem/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_63_30_30 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_63_30_30 : label is 0;
  attribute ram_addr_end of mem_reg_0_63_30_30 : label is 63;
  attribute ram_offset of mem_reg_0_63_30_30 : label is 0;
  attribute ram_slice_begin of mem_reg_0_63_30_30 : label is 30;
  attribute ram_slice_end of mem_reg_0_63_30_30 : label is 30;
  attribute RTL_RAM_BITS of mem_reg_0_63_31_31 : label is 2048;
  attribute RTL_RAM_NAME of mem_reg_0_63_31_31 : label is "dp/d_mem/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_63_31_31 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_63_31_31 : label is 0;
  attribute ram_addr_end of mem_reg_0_63_31_31 : label is 63;
  attribute ram_offset of mem_reg_0_63_31_31 : label is 0;
  attribute ram_slice_begin of mem_reg_0_63_31_31 : label is 31;
  attribute ram_slice_end of mem_reg_0_63_31_31 : label is 31;
  attribute RTL_RAM_BITS of mem_reg_0_63_3_3 : label is 2048;
  attribute RTL_RAM_NAME of mem_reg_0_63_3_3 : label is "dp/d_mem/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_63_3_3 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_63_3_3 : label is 0;
  attribute ram_addr_end of mem_reg_0_63_3_3 : label is 63;
  attribute ram_offset of mem_reg_0_63_3_3 : label is 0;
  attribute ram_slice_begin of mem_reg_0_63_3_3 : label is 3;
  attribute ram_slice_end of mem_reg_0_63_3_3 : label is 3;
  attribute RTL_RAM_BITS of mem_reg_0_63_4_4 : label is 2048;
  attribute RTL_RAM_NAME of mem_reg_0_63_4_4 : label is "dp/d_mem/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_63_4_4 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_63_4_4 : label is 0;
  attribute ram_addr_end of mem_reg_0_63_4_4 : label is 63;
  attribute ram_offset of mem_reg_0_63_4_4 : label is 0;
  attribute ram_slice_begin of mem_reg_0_63_4_4 : label is 4;
  attribute ram_slice_end of mem_reg_0_63_4_4 : label is 4;
  attribute RTL_RAM_BITS of mem_reg_0_63_5_5 : label is 2048;
  attribute RTL_RAM_NAME of mem_reg_0_63_5_5 : label is "dp/d_mem/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_63_5_5 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_63_5_5 : label is 0;
  attribute ram_addr_end of mem_reg_0_63_5_5 : label is 63;
  attribute ram_offset of mem_reg_0_63_5_5 : label is 0;
  attribute ram_slice_begin of mem_reg_0_63_5_5 : label is 5;
  attribute ram_slice_end of mem_reg_0_63_5_5 : label is 5;
  attribute RTL_RAM_BITS of mem_reg_0_63_6_6 : label is 2048;
  attribute RTL_RAM_NAME of mem_reg_0_63_6_6 : label is "dp/d_mem/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_63_6_6 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_63_6_6 : label is 0;
  attribute ram_addr_end of mem_reg_0_63_6_6 : label is 63;
  attribute ram_offset of mem_reg_0_63_6_6 : label is 0;
  attribute ram_slice_begin of mem_reg_0_63_6_6 : label is 6;
  attribute ram_slice_end of mem_reg_0_63_6_6 : label is 6;
  attribute RTL_RAM_BITS of mem_reg_0_63_7_7 : label is 2048;
  attribute RTL_RAM_NAME of mem_reg_0_63_7_7 : label is "dp/d_mem/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_63_7_7 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_63_7_7 : label is 0;
  attribute ram_addr_end of mem_reg_0_63_7_7 : label is 63;
  attribute ram_offset of mem_reg_0_63_7_7 : label is 0;
  attribute ram_slice_begin of mem_reg_0_63_7_7 : label is 7;
  attribute ram_slice_end of mem_reg_0_63_7_7 : label is 7;
  attribute RTL_RAM_BITS of mem_reg_0_63_8_8 : label is 2048;
  attribute RTL_RAM_NAME of mem_reg_0_63_8_8 : label is "dp/d_mem/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_63_8_8 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_63_8_8 : label is 0;
  attribute ram_addr_end of mem_reg_0_63_8_8 : label is 63;
  attribute ram_offset of mem_reg_0_63_8_8 : label is 0;
  attribute ram_slice_begin of mem_reg_0_63_8_8 : label is 8;
  attribute ram_slice_end of mem_reg_0_63_8_8 : label is 8;
  attribute RTL_RAM_BITS of mem_reg_0_63_9_9 : label is 2048;
  attribute RTL_RAM_NAME of mem_reg_0_63_9_9 : label is "dp/d_mem/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_63_9_9 : label is "RAM_SP";
  attribute ram_addr_begin of mem_reg_0_63_9_9 : label is 0;
  attribute ram_addr_end of mem_reg_0_63_9_9 : label is 63;
  attribute ram_offset of mem_reg_0_63_9_9 : label is 0;
  attribute ram_slice_begin of mem_reg_0_63_9_9 : label is 9;
  attribute ram_slice_end of mem_reg_0_63_9_9 : label is 9;
begin
  rd(31 downto 0) <= \^rd\(31 downto 0);
\Result_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^rd\(7),
      I1 => \Result[7]\,
      I2 => p_0_in(5),
      O => Result_OBUF(0)
    );
mem_reg_0_63_0_0: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => p_0_in(0),
      A1 => p_0_in(1),
      A2 => p_0_in(2),
      A3 => p_0_in(3),
      A4 => p_0_in(4),
      A5 => p_0_in(5),
      D => wd(0),
      O => \^rd\(0),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
mem_reg_0_63_10_10: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => p_0_in(0),
      A1 => p_0_in(1),
      A2 => p_0_in(2),
      A3 => p_0_in(3),
      A4 => p_0_in(4),
      A5 => p_0_in(5),
      D => wd(10),
      O => \^rd\(10),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
mem_reg_0_63_11_11: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => p_0_in(0),
      A1 => p_0_in(1),
      A2 => p_0_in(2),
      A3 => p_0_in(3),
      A4 => p_0_in(4),
      A5 => p_0_in(5),
      D => wd(11),
      O => \^rd\(11),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
mem_reg_0_63_12_12: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => p_0_in(0),
      A1 => p_0_in(1),
      A2 => p_0_in(2),
      A3 => p_0_in(3),
      A4 => p_0_in(4),
      A5 => p_0_in(5),
      D => wd(12),
      O => \^rd\(12),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
mem_reg_0_63_13_13: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => p_0_in(0),
      A1 => p_0_in(1),
      A2 => p_0_in(2),
      A3 => p_0_in(3),
      A4 => p_0_in(4),
      A5 => p_0_in(5),
      D => wd(13),
      O => \^rd\(13),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
mem_reg_0_63_14_14: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => p_0_in(0),
      A1 => p_0_in(1),
      A2 => p_0_in(2),
      A3 => p_0_in(3),
      A4 => p_0_in(4),
      A5 => p_0_in(5),
      D => wd(14),
      O => \^rd\(14),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
mem_reg_0_63_15_15: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => p_0_in(0),
      A1 => p_0_in(1),
      A2 => p_0_in(2),
      A3 => p_0_in(3),
      A4 => p_0_in(4),
      A5 => p_0_in(5),
      D => wd(15),
      O => \^rd\(15),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
mem_reg_0_63_16_16: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => p_0_in(0),
      A1 => p_0_in(1),
      A2 => p_0_in(2),
      A3 => p_0_in(3),
      A4 => p_0_in(4),
      A5 => p_0_in(5),
      D => wd(16),
      O => \^rd\(16),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
mem_reg_0_63_17_17: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => p_0_in(0),
      A1 => p_0_in(1),
      A2 => p_0_in(2),
      A3 => p_0_in(3),
      A4 => p_0_in(4),
      A5 => p_0_in(5),
      D => wd(17),
      O => \^rd\(17),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
mem_reg_0_63_18_18: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => p_0_in(0),
      A1 => p_0_in(1),
      A2 => p_0_in(2),
      A3 => p_0_in(3),
      A4 => p_0_in(4),
      A5 => p_0_in(5),
      D => wd(18),
      O => \^rd\(18),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
mem_reg_0_63_19_19: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => p_0_in(0),
      A1 => p_0_in(1),
      A2 => p_0_in(2),
      A3 => p_0_in(3),
      A4 => p_0_in(4),
      A5 => p_0_in(5),
      D => wd(19),
      O => \^rd\(19),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
mem_reg_0_63_1_1: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => p_0_in(0),
      A1 => p_0_in(1),
      A2 => p_0_in(2),
      A3 => p_0_in(3),
      A4 => p_0_in(4),
      A5 => p_0_in(5),
      D => wd(1),
      O => \^rd\(1),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
mem_reg_0_63_20_20: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => p_0_in(0),
      A1 => p_0_in(1),
      A2 => p_0_in(2),
      A3 => p_0_in(3),
      A4 => p_0_in(4),
      A5 => p_0_in(5),
      D => wd(20),
      O => \^rd\(20),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
mem_reg_0_63_21_21: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => p_0_in(0),
      A1 => p_0_in(1),
      A2 => p_0_in(2),
      A3 => p_0_in(3),
      A4 => p_0_in(4),
      A5 => p_0_in(5),
      D => wd(21),
      O => \^rd\(21),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
mem_reg_0_63_22_22: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => p_0_in(0),
      A1 => p_0_in(1),
      A2 => p_0_in(2),
      A3 => p_0_in(3),
      A4 => p_0_in(4),
      A5 => p_0_in(5),
      D => wd(22),
      O => \^rd\(22),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
mem_reg_0_63_23_23: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => p_0_in(0),
      A1 => p_0_in(1),
      A2 => p_0_in(2),
      A3 => p_0_in(3),
      A4 => p_0_in(4),
      A5 => p_0_in(5),
      D => wd(23),
      O => \^rd\(23),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
mem_reg_0_63_24_24: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => p_0_in(0),
      A1 => p_0_in(1),
      A2 => p_0_in(2),
      A3 => p_0_in(3),
      A4 => p_0_in(4),
      A5 => p_0_in(5),
      D => wd(24),
      O => \^rd\(24),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
mem_reg_0_63_25_25: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => p_0_in(0),
      A1 => p_0_in(1),
      A2 => p_0_in(2),
      A3 => p_0_in(3),
      A4 => p_0_in(4),
      A5 => p_0_in(5),
      D => wd(25),
      O => \^rd\(25),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
mem_reg_0_63_26_26: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => p_0_in(0),
      A1 => p_0_in(1),
      A2 => p_0_in(2),
      A3 => p_0_in(3),
      A4 => p_0_in(4),
      A5 => p_0_in(5),
      D => wd(26),
      O => \^rd\(26),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
mem_reg_0_63_27_27: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => p_0_in(0),
      A1 => p_0_in(1),
      A2 => p_0_in(2),
      A3 => p_0_in(3),
      A4 => p_0_in(4),
      A5 => p_0_in(5),
      D => wd(27),
      O => \^rd\(27),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
mem_reg_0_63_28_28: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => p_0_in(0),
      A1 => p_0_in(1),
      A2 => p_0_in(2),
      A3 => p_0_in(3),
      A4 => p_0_in(4),
      A5 => p_0_in(5),
      D => wd(28),
      O => \^rd\(28),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
mem_reg_0_63_29_29: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => p_0_in(0),
      A1 => p_0_in(1),
      A2 => p_0_in(2),
      A3 => p_0_in(3),
      A4 => p_0_in(4),
      A5 => p_0_in(5),
      D => wd(29),
      O => \^rd\(29),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
mem_reg_0_63_2_2: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => p_0_in(0),
      A1 => p_0_in(1),
      A2 => p_0_in(2),
      A3 => p_0_in(3),
      A4 => p_0_in(4),
      A5 => p_0_in(5),
      D => wd(2),
      O => \^rd\(2),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
mem_reg_0_63_30_30: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => p_0_in(0),
      A1 => p_0_in(1),
      A2 => p_0_in(2),
      A3 => p_0_in(3),
      A4 => p_0_in(4),
      A5 => p_0_in(5),
      D => wd(30),
      O => \^rd\(30),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
mem_reg_0_63_31_31: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => p_0_in(0),
      A1 => p_0_in(1),
      A2 => p_0_in(2),
      A3 => p_0_in(3),
      A4 => p_0_in(4),
      A5 => p_0_in(5),
      D => wd(31),
      O => \^rd\(31),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
mem_reg_0_63_3_3: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => p_0_in(0),
      A1 => p_0_in(1),
      A2 => p_0_in(2),
      A3 => p_0_in(3),
      A4 => p_0_in(4),
      A5 => p_0_in(5),
      D => wd(3),
      O => \^rd\(3),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
mem_reg_0_63_4_4: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => p_0_in(0),
      A1 => p_0_in(1),
      A2 => p_0_in(2),
      A3 => p_0_in(3),
      A4 => p_0_in(4),
      A5 => p_0_in(5),
      D => wd(4),
      O => \^rd\(4),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
mem_reg_0_63_5_5: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => p_0_in(0),
      A1 => p_0_in(1),
      A2 => p_0_in(2),
      A3 => p_0_in(3),
      A4 => p_0_in(4),
      A5 => p_0_in(5),
      D => wd(5),
      O => \^rd\(5),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
mem_reg_0_63_6_6: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => p_0_in(0),
      A1 => p_0_in(1),
      A2 => p_0_in(2),
      A3 => p_0_in(3),
      A4 => p_0_in(4),
      A5 => p_0_in(5),
      D => wd(6),
      O => \^rd\(6),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
mem_reg_0_63_7_7: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => p_0_in(0),
      A1 => p_0_in(1),
      A2 => p_0_in(2),
      A3 => p_0_in(3),
      A4 => p_0_in(4),
      A5 => p_0_in(5),
      D => wd(7),
      O => \^rd\(7),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
mem_reg_0_63_8_8: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => p_0_in(0),
      A1 => p_0_in(1),
      A2 => p_0_in(2),
      A3 => p_0_in(3),
      A4 => p_0_in(4),
      A5 => p_0_in(5),
      D => wd(8),
      O => \^rd\(8),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
mem_reg_0_63_9_9: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => p_0_in(0),
      A1 => p_0_in(1),
      A2 => p_0_in(2),
      A3 => p_0_in(3),
      A4 => p_0_in(4),
      A5 => p_0_in(5),
      D => wd(9),
      O => \^rd\(9),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity flopenr is
  port (
    \q_reg[0]_0\ : out STD_LOGIC;
    \q_reg[1]_0\ : out STD_LOGIC;
    ALUFlags : in STD_LOGIC_VECTOR ( 0 to 0 );
    Instr_OBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[0]_1\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[1]_1\ : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC
  );
end flopenr;

architecture STRUCTURE of flopenr is
  signal \q[0]_i_1_n_0\ : STD_LOGIC;
  signal \q[1]_i_1_n_0\ : STD_LOGIC;
  signal \^q_reg[0]_0\ : STD_LOGIC;
  signal \^q_reg[1]_0\ : STD_LOGIC;
begin
  \q_reg[0]_0\ <= \^q_reg[0]_0\;
  \q_reg[1]_0\ <= \^q_reg[1]_0\;
\q[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => ALUFlags(0),
      I1 => Instr_OBUF(0),
      I2 => \q_reg[0]_1\,
      I3 => \^q_reg[0]_0\,
      O => \q[0]_i_1_n_0\
    );
\q[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => O(0),
      I1 => \q_reg[1]_1\,
      I2 => Instr_OBUF(0),
      I3 => \q_reg[0]_1\,
      I4 => \^q_reg[1]_0\,
      O => \q[1]_i_1_n_0\
    );
\q_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \q[0]_i_1_n_0\,
      Q => \^q_reg[0]_0\
    );
\q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \q[1]_i_1_n_0\,
      Q => \^q_reg[1]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity flopenr_0 is
  port (
    q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[0]_0\ : out STD_LOGIC;
    ALUResult_OBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    en : in STD_LOGIC;
    \q_reg[0]_1\ : in STD_LOGIC;
    \q_reg[0]_2\ : in STD_LOGIC;
    \q_reg[0]_3\ : in STD_LOGIC;
    \q_reg[0]_4\ : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of flopenr_0 : entity is "flopenr";
end flopenr_0;

architecture STRUCTURE of flopenr_0 is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \q[0]_i_1_n_0\ : STD_LOGIC;
  signal \q[1]_i_1_n_0\ : STD_LOGIC;
  signal \^q_reg[0]_0\ : STD_LOGIC;
begin
  q(0) <= \^q\(0);
  \q_reg[0]_0\ <= \^q_reg[0]_0\;
\q[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FEFFFF00FE0000"
    )
        port map (
      I0 => \q_reg[0]_1\,
      I1 => \q_reg[0]_2\,
      I2 => \q_reg[0]_3\,
      I3 => \q_reg[0]_4\,
      I4 => en,
      I5 => \^q_reg[0]_0\,
      O => \q[0]_i_1_n_0\
    );
\q[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ALUResult_OBUF(0),
      I1 => en,
      I2 => \^q\(0),
      O => \q[1]_i_1_n_0\
    );
\q_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \q[0]_i_1_n_0\,
      Q => \^q_reg[0]_0\
    );
\q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \q[1]_i_1_n_0\,
      Q => \^q\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity flopr is
  port (
    \q_reg[0]_0\ : out STD_LOGIC;
    PC : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \q_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[3]_1\ : out STD_LOGIC;
    \q_reg[3]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[3]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[3]_4\ : out STD_LOGIC;
    \q_reg[3]_5\ : out STD_LOGIC;
    \q_reg[3]_6\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[3]_7\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[3]_8\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[3]_9\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[3]_10\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[3]_11\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[3]_12\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[3]_13\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[3]_14\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[3]_15\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[6]_0\ : out STD_LOGIC;
    \q_reg[3]_16\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[3]_17\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wd3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \q_reg[7]_0\ : out STD_LOGIC;
    \q_reg[6]_1\ : out STD_LOGIC;
    d1 : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \q_reg[6]_2\ : out STD_LOGIC;
    \q_reg[6]_3\ : out STD_LOGIC;
    \q_reg[6]_4\ : out STD_LOGIC;
    \q_reg[6]_5\ : out STD_LOGIC;
    \q_reg[6]_6\ : out STD_LOGIC;
    \q_reg[6]_7\ : out STD_LOGIC;
    \q_reg[6]_8\ : out STD_LOGIC;
    \q_reg[6]_9\ : out STD_LOGIC;
    \q_reg[6]_10\ : out STD_LOGIC;
    \q_reg[6]_11\ : out STD_LOGIC;
    \q_reg[6]_12\ : out STD_LOGIC;
    \q_reg[6]_13\ : out STD_LOGIC;
    \q_reg[6]_14\ : out STD_LOGIC;
    \q_reg[6]_15\ : out STD_LOGIC;
    \q_reg[6]_16\ : out STD_LOGIC;
    \q_reg[6]_17\ : out STD_LOGIC;
    \q_reg[6]_18\ : out STD_LOGIC;
    \q_reg[6]_19\ : out STD_LOGIC;
    \q_reg[6]_20\ : out STD_LOGIC;
    \q_reg[6]_21\ : out STD_LOGIC;
    \q_reg[6]_22\ : out STD_LOGIC;
    \q_reg[6]_23\ : out STD_LOGIC;
    \q_reg[6]_24\ : out STD_LOGIC;
    \q_reg[6]_25\ : out STD_LOGIC;
    \q_reg[6]_26\ : out STD_LOGIC;
    \q_reg[6]_27\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Result_OBUF : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \q_reg[6]_28\ : out STD_LOGIC;
    \q_reg[7]_1\ : out STD_LOGIC;
    \q_reg[6]_29\ : out STD_LOGIC;
    \q_reg[6]_30\ : out STD_LOGIC;
    \q_reg[6]_31\ : out STD_LOGIC;
    \q_reg[6]_32\ : out STD_LOGIC;
    ADDRA : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[6]_33\ : out STD_LOGIC;
    wd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Instr_OBUF : out STD_LOGIC_VECTOR ( 23 downto 0 );
    RA3 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_reg[5]_0\ : out STD_LOGIC;
    RegWrite : out STD_LOGIC;
    en : out STD_LOGIC;
    \q_reg[3]_18\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[3]_19\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    MemWrite : out STD_LOGIC;
    \q_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[3]_20\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_reg[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Result0_carry__6\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Result0_inferred__0/i__carry__6\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    O : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[3]_21\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    reset : in STD_LOGIC;
    r15 : in STD_LOGIC_VECTOR ( 30 downto 0 );
    rd10 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rd20 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rd : in STD_LOGIC_VECTOR ( 31 downto 0 );
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ALUResult_OBUF[28]_inst_i_1_0\ : in STD_LOGIC_VECTOR ( 27 downto 0 );
    \ALUResult_OBUF[31]_inst_i_1_0\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \ALUResult_OBUF[31]_inst_i_1_1\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \q[0]_i_48_0\ : in STD_LOGIC;
    \q[0]_i_49_0\ : in STD_LOGIC;
    q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[0]_2\ : in STD_LOGIC;
    mem_reg_r1_0_15_0_5_i_15_0 : in STD_LOGIC;
    mem_reg_r1_0_15_0_5_i_15_1 : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q[0]_i_2__0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end flopr;

architecture STRUCTURE of flopr is
  signal \ALUResult_OBUF[0]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[0]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[0]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[10]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[10]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[10]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[10]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[11]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[11]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[11]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[11]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[12]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[12]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[12]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[13]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[13]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[13]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[14]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[14]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[14]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[14]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[14]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[15]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[15]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[15]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[15]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[16]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[16]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[16]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[16]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[17]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[17]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[17]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[17]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[18]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[18]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[18]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[18]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[19]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[19]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[19]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[19]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[1]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[1]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[1]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[20]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[20]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[20]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[21]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[21]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[21]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[21]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[22]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[22]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[22]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[23]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[23]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[23]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[23]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[23]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[24]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[24]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[24]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[24]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[24]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[24]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[25]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[25]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[25]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[25]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[26]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[26]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[26]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[26]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[27]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[27]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[27]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[27]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[27]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[27]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[28]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[28]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[28]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[28]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[28]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[29]_inst_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[29]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[29]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[29]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[29]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[29]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[29]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[29]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[2]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[2]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[2]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[2]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[30]_inst_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[30]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[30]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[30]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[30]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[30]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[30]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[30]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[31]_inst_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[31]_inst_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[31]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[31]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[31]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[31]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[31]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[31]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[3]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[4]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[4]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[4]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[5]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[5]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[5]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[5]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[6]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[6]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[6]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[7]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[7]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[8]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[8]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[8]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[8]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[8]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[9]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[9]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[9]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[9]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[9]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[9]_inst_i_8_n_0\ : STD_LOGIC;
  signal \^instr_obuf\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \^pc\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \Result0_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \Result0_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \Result0_carry__6_i_9_n_0\ : STD_LOGIC;
  signal Result0_carry_i_13_n_0 : STD_LOGIC;
  signal Result0_carry_i_14_n_0 : STD_LOGIC;
  signal Result0_carry_i_15_n_0 : STD_LOGIC;
  signal \^result0_inferred__0/i__carry__6\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SrcA : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal SrcB : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \^d1\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \i_alu/aD2M4dsP\ : STD_LOGIC_VECTOR ( 28 downto 1 );
  signal mem_reg_r1_0_15_0_5_i_15_n_0 : STD_LOGIC;
  signal mem_reg_r1_0_15_0_5_i_16_n_0 : STD_LOGIC;
  signal mem_reg_r1_0_15_0_5_i_17_n_0 : STD_LOGIC;
  signal mem_reg_r1_0_15_0_5_i_18_n_0 : STD_LOGIC;
  signal \q[0]_i_100_n_0\ : STD_LOGIC;
  signal \q[0]_i_101_n_0\ : STD_LOGIC;
  signal \q[0]_i_102_n_0\ : STD_LOGIC;
  signal \q[0]_i_103_n_0\ : STD_LOGIC;
  signal \q[0]_i_104_n_0\ : STD_LOGIC;
  signal \q[0]_i_105_n_0\ : STD_LOGIC;
  signal \q[0]_i_106_n_0\ : STD_LOGIC;
  signal \q[0]_i_107_n_0\ : STD_LOGIC;
  signal \q[0]_i_108_n_0\ : STD_LOGIC;
  signal \q[0]_i_109_n_0\ : STD_LOGIC;
  signal \q[0]_i_110_n_0\ : STD_LOGIC;
  signal \q[0]_i_111_n_0\ : STD_LOGIC;
  signal \q[0]_i_112_n_0\ : STD_LOGIC;
  signal \q[0]_i_113_n_0\ : STD_LOGIC;
  signal \q[0]_i_114_n_0\ : STD_LOGIC;
  signal \q[0]_i_115_n_0\ : STD_LOGIC;
  signal \q[0]_i_116_n_0\ : STD_LOGIC;
  signal \q[0]_i_117_n_0\ : STD_LOGIC;
  signal \q[0]_i_118_n_0\ : STD_LOGIC;
  signal \q[0]_i_119_n_0\ : STD_LOGIC;
  signal \q[0]_i_120_n_0\ : STD_LOGIC;
  signal \q[0]_i_121_n_0\ : STD_LOGIC;
  signal \q[0]_i_122_n_0\ : STD_LOGIC;
  signal \q[0]_i_123_n_0\ : STD_LOGIC;
  signal \q[0]_i_124_n_0\ : STD_LOGIC;
  signal \q[0]_i_125_n_0\ : STD_LOGIC;
  signal \q[0]_i_126_n_0\ : STD_LOGIC;
  signal \q[0]_i_127_n_0\ : STD_LOGIC;
  signal \q[0]_i_14_n_0\ : STD_LOGIC;
  signal \q[0]_i_15_n_0\ : STD_LOGIC;
  signal \q[0]_i_16_n_0\ : STD_LOGIC;
  signal \q[0]_i_17_n_0\ : STD_LOGIC;
  signal \q[0]_i_18_n_0\ : STD_LOGIC;
  signal \q[0]_i_19_n_0\ : STD_LOGIC;
  signal \q[0]_i_1_n_0\ : STD_LOGIC;
  signal \q[0]_i_20_n_0\ : STD_LOGIC;
  signal \q[0]_i_21_n_0\ : STD_LOGIC;
  signal \q[0]_i_22_n_0\ : STD_LOGIC;
  signal \q[0]_i_23_n_0\ : STD_LOGIC;
  signal \q[0]_i_24_n_0\ : STD_LOGIC;
  signal \q[0]_i_25_n_0\ : STD_LOGIC;
  signal \q[0]_i_26_n_0\ : STD_LOGIC;
  signal \q[0]_i_27_n_0\ : STD_LOGIC;
  signal \q[0]_i_28_n_0\ : STD_LOGIC;
  signal \q[0]_i_29_n_0\ : STD_LOGIC;
  signal \q[0]_i_30_n_0\ : STD_LOGIC;
  signal \q[0]_i_31_n_0\ : STD_LOGIC;
  signal \q[0]_i_32_n_0\ : STD_LOGIC;
  signal \q[0]_i_33_n_0\ : STD_LOGIC;
  signal \q[0]_i_34_n_0\ : STD_LOGIC;
  signal \q[0]_i_35_n_0\ : STD_LOGIC;
  signal \q[0]_i_36_n_0\ : STD_LOGIC;
  signal \q[0]_i_45_n_0\ : STD_LOGIC;
  signal \q[0]_i_46_n_0\ : STD_LOGIC;
  signal \q[0]_i_47_n_0\ : STD_LOGIC;
  signal \q[0]_i_48_n_0\ : STD_LOGIC;
  signal \q[0]_i_49_n_0\ : STD_LOGIC;
  signal \q[0]_i_50_n_0\ : STD_LOGIC;
  signal \q[0]_i_51_n_0\ : STD_LOGIC;
  signal \q[0]_i_52_n_0\ : STD_LOGIC;
  signal \q[0]_i_53_n_0\ : STD_LOGIC;
  signal \q[0]_i_54_n_0\ : STD_LOGIC;
  signal \q[0]_i_55_n_0\ : STD_LOGIC;
  signal \q[0]_i_56_n_0\ : STD_LOGIC;
  signal \q[0]_i_57_n_0\ : STD_LOGIC;
  signal \q[0]_i_58_n_0\ : STD_LOGIC;
  signal \q[0]_i_59_n_0\ : STD_LOGIC;
  signal \q[0]_i_5_n_0\ : STD_LOGIC;
  signal \q[0]_i_60_n_0\ : STD_LOGIC;
  signal \q[0]_i_61_n_0\ : STD_LOGIC;
  signal \q[0]_i_62_n_0\ : STD_LOGIC;
  signal \q[0]_i_63_n_0\ : STD_LOGIC;
  signal \q[0]_i_64_n_0\ : STD_LOGIC;
  signal \q[0]_i_65_n_0\ : STD_LOGIC;
  signal \q[0]_i_66_n_0\ : STD_LOGIC;
  signal \q[0]_i_67_n_0\ : STD_LOGIC;
  signal \q[0]_i_68_n_0\ : STD_LOGIC;
  signal \q[0]_i_69_n_0\ : STD_LOGIC;
  signal \q[0]_i_6_n_0\ : STD_LOGIC;
  signal \q[0]_i_70_n_0\ : STD_LOGIC;
  signal \q[0]_i_71_n_0\ : STD_LOGIC;
  signal \q[0]_i_72_n_0\ : STD_LOGIC;
  signal \q[0]_i_73_n_0\ : STD_LOGIC;
  signal \q[0]_i_74_n_0\ : STD_LOGIC;
  signal \q[0]_i_75_n_0\ : STD_LOGIC;
  signal \q[0]_i_76_n_0\ : STD_LOGIC;
  signal \q[0]_i_77_n_0\ : STD_LOGIC;
  signal \q[0]_i_78_n_0\ : STD_LOGIC;
  signal \q[0]_i_79_n_0\ : STD_LOGIC;
  signal \q[0]_i_7_n_0\ : STD_LOGIC;
  signal \q[0]_i_80_n_0\ : STD_LOGIC;
  signal \q[0]_i_81_n_0\ : STD_LOGIC;
  signal \q[0]_i_82_n_0\ : STD_LOGIC;
  signal \q[0]_i_83_n_0\ : STD_LOGIC;
  signal \q[0]_i_84_n_0\ : STD_LOGIC;
  signal \q[0]_i_85_n_0\ : STD_LOGIC;
  signal \q[0]_i_86_n_0\ : STD_LOGIC;
  signal \q[0]_i_87_n_0\ : STD_LOGIC;
  signal \q[0]_i_88_n_0\ : STD_LOGIC;
  signal \q[0]_i_89_n_0\ : STD_LOGIC;
  signal \q[0]_i_8_n_0\ : STD_LOGIC;
  signal \q[0]_i_90_n_0\ : STD_LOGIC;
  signal \q[0]_i_91_n_0\ : STD_LOGIC;
  signal \q[0]_i_92_n_0\ : STD_LOGIC;
  signal \q[0]_i_93_n_0\ : STD_LOGIC;
  signal \q[0]_i_98_n_0\ : STD_LOGIC;
  signal \q[0]_i_99_n_0\ : STD_LOGIC;
  signal \q[0]_i_9_n_0\ : STD_LOGIC;
  signal \q[13]_i_2_n_0\ : STD_LOGIC;
  signal \q[13]_i_3_n_0\ : STD_LOGIC;
  signal \q[13]_i_4_n_0\ : STD_LOGIC;
  signal \q[13]_i_5_n_0\ : STD_LOGIC;
  signal \q[17]_i_2_n_0\ : STD_LOGIC;
  signal \q[17]_i_3_n_0\ : STD_LOGIC;
  signal \q[17]_i_4_n_0\ : STD_LOGIC;
  signal \q[17]_i_5_n_0\ : STD_LOGIC;
  signal \q[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \q[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \q[1]_i_4__0_n_0\ : STD_LOGIC;
  signal \q[1]_i_5_n_0\ : STD_LOGIC;
  signal \q[1]_i_6__0_n_0\ : STD_LOGIC;
  signal \q[1]_i_6_n_0\ : STD_LOGIC;
  signal \q[21]_i_2_n_0\ : STD_LOGIC;
  signal \q[21]_i_3_n_0\ : STD_LOGIC;
  signal \q[21]_i_4_n_0\ : STD_LOGIC;
  signal \q[21]_i_5_n_0\ : STD_LOGIC;
  signal \q[25]_i_2_n_0\ : STD_LOGIC;
  signal \q[25]_i_3_n_0\ : STD_LOGIC;
  signal \q[25]_i_4_n_0\ : STD_LOGIC;
  signal \q[25]_i_5_n_0\ : STD_LOGIC;
  signal \q[29]_i_2_n_0\ : STD_LOGIC;
  signal \q[29]_i_3_n_0\ : STD_LOGIC;
  signal \q[29]_i_4_n_0\ : STD_LOGIC;
  signal \q[5]_i_2_n_0\ : STD_LOGIC;
  signal \q[5]_i_3_n_0\ : STD_LOGIC;
  signal \q[5]_i_4_n_0\ : STD_LOGIC;
  signal \q[5]_i_5_n_0\ : STD_LOGIC;
  signal \q[9]_i_2_n_0\ : STD_LOGIC;
  signal \q[9]_i_3_n_0\ : STD_LOGIC;
  signal \q[9]_i_4_n_0\ : STD_LOGIC;
  signal \q[9]_i_5_n_0\ : STD_LOGIC;
  signal \^q_reg[0]_0\ : STD_LOGIC;
  signal \q_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \q_reg[13]_i_1_n_1\ : STD_LOGIC;
  signal \q_reg[13]_i_1_n_2\ : STD_LOGIC;
  signal \q_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \q_reg[13]_i_1_n_4\ : STD_LOGIC;
  signal \q_reg[13]_i_1_n_5\ : STD_LOGIC;
  signal \q_reg[13]_i_1_n_6\ : STD_LOGIC;
  signal \q_reg[13]_i_1_n_7\ : STD_LOGIC;
  signal \q_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \q_reg[17]_i_1_n_1\ : STD_LOGIC;
  signal \q_reg[17]_i_1_n_2\ : STD_LOGIC;
  signal \q_reg[17]_i_1_n_3\ : STD_LOGIC;
  signal \q_reg[17]_i_1_n_4\ : STD_LOGIC;
  signal \q_reg[17]_i_1_n_5\ : STD_LOGIC;
  signal \q_reg[17]_i_1_n_6\ : STD_LOGIC;
  signal \q_reg[17]_i_1_n_7\ : STD_LOGIC;
  signal \q_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \q_reg[1]_i_1_n_1\ : STD_LOGIC;
  signal \q_reg[1]_i_1_n_2\ : STD_LOGIC;
  signal \q_reg[1]_i_1_n_3\ : STD_LOGIC;
  signal \q_reg[1]_i_1_n_4\ : STD_LOGIC;
  signal \q_reg[1]_i_1_n_5\ : STD_LOGIC;
  signal \q_reg[1]_i_1_n_6\ : STD_LOGIC;
  signal \q_reg[1]_i_1_n_7\ : STD_LOGIC;
  signal \q_reg[1]_i_2_n_3\ : STD_LOGIC;
  signal \q_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \q_reg[21]_i_1_n_1\ : STD_LOGIC;
  signal \q_reg[21]_i_1_n_2\ : STD_LOGIC;
  signal \q_reg[21]_i_1_n_3\ : STD_LOGIC;
  signal \q_reg[21]_i_1_n_4\ : STD_LOGIC;
  signal \q_reg[21]_i_1_n_5\ : STD_LOGIC;
  signal \q_reg[21]_i_1_n_6\ : STD_LOGIC;
  signal \q_reg[21]_i_1_n_7\ : STD_LOGIC;
  signal \q_reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \q_reg[25]_i_1_n_1\ : STD_LOGIC;
  signal \q_reg[25]_i_1_n_2\ : STD_LOGIC;
  signal \q_reg[25]_i_1_n_3\ : STD_LOGIC;
  signal \q_reg[25]_i_1_n_4\ : STD_LOGIC;
  signal \q_reg[25]_i_1_n_5\ : STD_LOGIC;
  signal \q_reg[25]_i_1_n_6\ : STD_LOGIC;
  signal \q_reg[25]_i_1_n_7\ : STD_LOGIC;
  signal \q_reg[29]_i_1_n_2\ : STD_LOGIC;
  signal \q_reg[29]_i_1_n_3\ : STD_LOGIC;
  signal \q_reg[29]_i_1_n_5\ : STD_LOGIC;
  signal \q_reg[29]_i_1_n_6\ : STD_LOGIC;
  signal \q_reg[29]_i_1_n_7\ : STD_LOGIC;
  signal \^q_reg[3]_1\ : STD_LOGIC;
  signal \^q_reg[3]_3\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q_reg[3]_4\ : STD_LOGIC;
  signal \^q_reg[3]_5\ : STD_LOGIC;
  signal \q_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \q_reg[5]_i_1_n_1\ : STD_LOGIC;
  signal \q_reg[5]_i_1_n_2\ : STD_LOGIC;
  signal \q_reg[5]_i_1_n_3\ : STD_LOGIC;
  signal \q_reg[5]_i_1_n_4\ : STD_LOGIC;
  signal \q_reg[5]_i_1_n_5\ : STD_LOGIC;
  signal \q_reg[5]_i_1_n_6\ : STD_LOGIC;
  signal \q_reg[5]_i_1_n_7\ : STD_LOGIC;
  signal \^q_reg[6]_0\ : STD_LOGIC;
  signal \^q_reg[6]_1\ : STD_LOGIC;
  signal \^q_reg[6]_10\ : STD_LOGIC;
  signal \^q_reg[6]_11\ : STD_LOGIC;
  signal \^q_reg[6]_12\ : STD_LOGIC;
  signal \^q_reg[6]_13\ : STD_LOGIC;
  signal \^q_reg[6]_14\ : STD_LOGIC;
  signal \^q_reg[6]_15\ : STD_LOGIC;
  signal \^q_reg[6]_16\ : STD_LOGIC;
  signal \^q_reg[6]_17\ : STD_LOGIC;
  signal \^q_reg[6]_18\ : STD_LOGIC;
  signal \^q_reg[6]_19\ : STD_LOGIC;
  signal \^q_reg[6]_2\ : STD_LOGIC;
  signal \^q_reg[6]_20\ : STD_LOGIC;
  signal \^q_reg[6]_21\ : STD_LOGIC;
  signal \^q_reg[6]_22\ : STD_LOGIC;
  signal \^q_reg[6]_23\ : STD_LOGIC;
  signal \^q_reg[6]_24\ : STD_LOGIC;
  signal \^q_reg[6]_25\ : STD_LOGIC;
  signal \^q_reg[6]_26\ : STD_LOGIC;
  signal \^q_reg[6]_27\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^q_reg[6]_28\ : STD_LOGIC;
  signal \^q_reg[6]_29\ : STD_LOGIC;
  signal \^q_reg[6]_3\ : STD_LOGIC;
  signal \^q_reg[6]_31\ : STD_LOGIC;
  signal \^q_reg[6]_4\ : STD_LOGIC;
  signal \^q_reg[6]_5\ : STD_LOGIC;
  signal \^q_reg[6]_6\ : STD_LOGIC;
  signal \^q_reg[6]_7\ : STD_LOGIC;
  signal \^q_reg[6]_8\ : STD_LOGIC;
  signal \^q_reg[6]_9\ : STD_LOGIC;
  signal \^q_reg[7]_0\ : STD_LOGIC;
  signal \^q_reg[7]_1\ : STD_LOGIC;
  signal \q_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \q_reg[9]_i_1_n_1\ : STD_LOGIC;
  signal \q_reg[9]_i_1_n_2\ : STD_LOGIC;
  signal \q_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal \q_reg[9]_i_1_n_4\ : STD_LOGIC;
  signal \q_reg[9]_i_1_n_5\ : STD_LOGIC;
  signal \q_reg[9]_i_1_n_6\ : STD_LOGIC;
  signal \q_reg[9]_i_1_n_7\ : STD_LOGIC;
  signal \y0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \y0_carry__0_i_1_n_1\ : STD_LOGIC;
  signal \y0_carry__0_i_1_n_2\ : STD_LOGIC;
  signal \y0_carry__0_i_1_n_3\ : STD_LOGIC;
  signal \y0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \y0_carry__1_i_1_n_1\ : STD_LOGIC;
  signal \y0_carry__1_i_1_n_2\ : STD_LOGIC;
  signal \y0_carry__1_i_1_n_3\ : STD_LOGIC;
  signal \y0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \y0_carry__2_i_1_n_1\ : STD_LOGIC;
  signal \y0_carry__2_i_1_n_2\ : STD_LOGIC;
  signal \y0_carry__2_i_1_n_3\ : STD_LOGIC;
  signal \y0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \y0_carry__3_i_1_n_1\ : STD_LOGIC;
  signal \y0_carry__3_i_1_n_2\ : STD_LOGIC;
  signal \y0_carry__3_i_1_n_3\ : STD_LOGIC;
  signal \y0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \y0_carry__4_i_1_n_1\ : STD_LOGIC;
  signal \y0_carry__4_i_1_n_2\ : STD_LOGIC;
  signal \y0_carry__4_i_1_n_3\ : STD_LOGIC;
  signal \y0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \y0_carry__5_i_1_n_1\ : STD_LOGIC;
  signal \y0_carry__5_i_1_n_2\ : STD_LOGIC;
  signal \y0_carry__5_i_1_n_3\ : STD_LOGIC;
  signal \y0_carry__6_i_1_n_2\ : STD_LOGIC;
  signal \y0_carry__6_i_1_n_3\ : STD_LOGIC;
  signal y0_carry_i_1_n_0 : STD_LOGIC;
  signal y0_carry_i_1_n_1 : STD_LOGIC;
  signal y0_carry_i_1_n_2 : STD_LOGIC;
  signal y0_carry_i_1_n_3 : STD_LOGIC;
  signal y0_carry_i_3_n_0 : STD_LOGIC;
  signal \NLW_q_reg[0]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_q_reg[0]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_q_reg[1]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_q_reg[1]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_q_reg[1]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_q_reg[1]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_q_reg[29]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_q_reg[29]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_y0_carry__6_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_y0_carry__6_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ALUResult_OBUF[0]_inst_i_4\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[10]_inst_i_6\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[11]_inst_i_6\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[13]_inst_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[14]_inst_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[14]_inst_i_5\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[14]_inst_i_7\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[15]_inst_i_6\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[16]_inst_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[16]_inst_i_7\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[17]_inst_i_6\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[18]_inst_i_6\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[19]_inst_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[19]_inst_i_6\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[21]_inst_i_6\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[22]_inst_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[23]_inst_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[24]_inst_i_6\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[24]_inst_i_7\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[25]_inst_i_6\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[26]_inst_i_6\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[27]_inst_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[27]_inst_i_7\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[27]_inst_i_8\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[29]_inst_i_4\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[30]_inst_i_4\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[31]_inst_i_11\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[31]_inst_i_5\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[5]_inst_i_6\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[7]_inst_i_6\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[8]_inst_i_6\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[8]_inst_i_7\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[9]_inst_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[9]_inst_i_8\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Result0_carry__0_i_11\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \Result0_carry__0_i_9\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Result0_carry__1_i_10\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \Result0_carry__1_i_11\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Result0_carry__1_i_12\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \Result0_carry__1_i_9\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \Result0_carry__2_i_10\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \Result0_carry__2_i_11\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \Result0_carry__2_i_12\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \Result0_carry__2_i_9\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \Result0_carry__3_i_10\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \Result0_carry__3_i_11\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Result0_carry__3_i_9\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \Result0_carry__4_i_11\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \Result0_carry__4_i_9\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \Result0_carry__5_i_10\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \Result0_carry__5_i_11\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \Result0_carry__5_i_12\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \Result0_carry__5_i_9\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \Result0_carry__6_i_12\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \Result_OBUF[10]_inst_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \Result_OBUF[11]_inst_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \Result_OBUF[12]_inst_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \Result_OBUF[13]_inst_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \Result_OBUF[14]_inst_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \Result_OBUF[15]_inst_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \Result_OBUF[16]_inst_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \Result_OBUF[17]_inst_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \Result_OBUF[18]_inst_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \Result_OBUF[19]_inst_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \Result_OBUF[1]_inst_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \Result_OBUF[20]_inst_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \Result_OBUF[21]_inst_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \Result_OBUF[22]_inst_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \Result_OBUF[23]_inst_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \Result_OBUF[24]_inst_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \Result_OBUF[25]_inst_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \Result_OBUF[26]_inst_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \Result_OBUF[27]_inst_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \Result_OBUF[28]_inst_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \Result_OBUF[29]_inst_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \Result_OBUF[2]_inst_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \Result_OBUF[30]_inst_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \Result_OBUF[31]_inst_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \Result_OBUF[3]_inst_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \Result_OBUF[4]_inst_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \Result_OBUF[5]_inst_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \Result_OBUF[6]_inst_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \Result_OBUF[8]_inst_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \Result_OBUF[9]_inst_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \q[0]_i_100\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \q[0]_i_104\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \q[0]_i_105\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \q[0]_i_108\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \q[0]_i_109\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \q[0]_i_110\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \q[0]_i_111\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \q[0]_i_127\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \q[0]_i_19\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \q[0]_i_20\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \q[0]_i_27\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \q[0]_i_30\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \q[0]_i_56\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \q[0]_i_57\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \q[0]_i_69\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \q[0]_i_72\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \q[0]_i_73\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \q[0]_i_76\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \q[0]_i_77\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \q[0]_i_78\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \q[0]_i_79\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \q[0]_i_81\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \q[0]_i_82\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \q[0]_i_83\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \q[0]_i_86\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \q[0]_i_87\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \q[0]_i_98\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \q[0]_i_99\ : label is "soft_lutpair42";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \q_reg[13]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \q_reg[17]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \q_reg[1]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \q_reg[1]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \q_reg[21]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \q_reg[25]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \q_reg[29]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \q_reg[5]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \q_reg[9]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \y0_carry__0_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \y0_carry__1_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \y0_carry__2_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \y0_carry__3_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \y0_carry__4_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \y0_carry__5_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \y0_carry__6_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of y0_carry_i_1 : label is 35;
begin
  Instr_OBUF(23 downto 0) <= \^instr_obuf\(23 downto 0);
  PC(30 downto 0) <= \^pc\(30 downto 0);
  \Result0_inferred__0/i__carry__6\(0) <= \^result0_inferred__0/i__carry__6\(0);
  d1(30 downto 0) <= \^d1\(30 downto 0);
  \q_reg[0]_0\ <= \^q_reg[0]_0\;
  \q_reg[3]_1\ <= \^q_reg[3]_1\;
  \q_reg[3]_3\(0) <= \^q_reg[3]_3\(0);
  \q_reg[3]_4\ <= \^q_reg[3]_4\;
  \q_reg[3]_5\ <= \^q_reg[3]_5\;
  \q_reg[6]_0\ <= \^q_reg[6]_0\;
  \q_reg[6]_1\ <= \^q_reg[6]_1\;
  \q_reg[6]_10\ <= \^q_reg[6]_10\;
  \q_reg[6]_11\ <= \^q_reg[6]_11\;
  \q_reg[6]_12\ <= \^q_reg[6]_12\;
  \q_reg[6]_13\ <= \^q_reg[6]_13\;
  \q_reg[6]_14\ <= \^q_reg[6]_14\;
  \q_reg[6]_15\ <= \^q_reg[6]_15\;
  \q_reg[6]_16\ <= \^q_reg[6]_16\;
  \q_reg[6]_17\ <= \^q_reg[6]_17\;
  \q_reg[6]_18\ <= \^q_reg[6]_18\;
  \q_reg[6]_19\ <= \^q_reg[6]_19\;
  \q_reg[6]_2\ <= \^q_reg[6]_2\;
  \q_reg[6]_20\ <= \^q_reg[6]_20\;
  \q_reg[6]_21\ <= \^q_reg[6]_21\;
  \q_reg[6]_22\ <= \^q_reg[6]_22\;
  \q_reg[6]_23\ <= \^q_reg[6]_23\;
  \q_reg[6]_24\ <= \^q_reg[6]_24\;
  \q_reg[6]_25\ <= \^q_reg[6]_25\;
  \q_reg[6]_26\ <= \^q_reg[6]_26\;
  \q_reg[6]_27\(4 downto 0) <= \^q_reg[6]_27\(4 downto 0);
  \q_reg[6]_28\ <= \^q_reg[6]_28\;
  \q_reg[6]_29\ <= \^q_reg[6]_29\;
  \q_reg[6]_3\ <= \^q_reg[6]_3\;
  \q_reg[6]_31\ <= \^q_reg[6]_31\;
  \q_reg[6]_4\ <= \^q_reg[6]_4\;
  \q_reg[6]_5\ <= \^q_reg[6]_5\;
  \q_reg[6]_6\ <= \^q_reg[6]_6\;
  \q_reg[6]_7\ <= \^q_reg[6]_7\;
  \q_reg[6]_8\ <= \^q_reg[6]_8\;
  \q_reg[6]_9\ <= \^q_reg[6]_9\;
  \q_reg[7]_0\ <= \^q_reg[7]_0\;
  \q_reg[7]_1\ <= \^q_reg[7]_1\;
\ALUResult_OBUF[0]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult_OBUF[0]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[0]_inst_i_3_n_0\,
      O => \^q_reg[6]_25\,
      S => \^q_reg[6]_28\
    );
\ALUResult_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFD8AAD8AAD800D8"
    )
        port map (
      I0 => \^q_reg[7]_1\,
      I1 => \ALUResult_OBUF[31]_inst_i_1_1\(0),
      I2 => \ALUResult_OBUF[31]_inst_i_1_0\(0),
      I3 => \^q_reg[6]_29\,
      I4 => SrcA(0),
      I5 => SrcB(0),
      O => \ALUResult_OBUF[0]_inst_i_2_n_0\
    );
\ALUResult_OBUF[0]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"383BCBC8"
    )
        port map (
      I0 => \ALUResult_OBUF[0]_inst_i_5_n_0\,
      I1 => \^q_reg[7]_1\,
      I2 => \^q_reg[6]_29\,
      I3 => SrcA(0),
      I4 => SrcB(0),
      O => \ALUResult_OBUF[0]_inst_i_3_n_0\
    );
\ALUResult_OBUF[0]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[0]_0\,
      I1 => \^q_reg[3]_4\,
      I2 => rd10(0),
      O => SrcA(0)
    );
\ALUResult_OBUF[0]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AACFEE"
    )
        port map (
      I0 => SrcB(0),
      I1 => \^q_reg[6]_0\,
      I2 => \ALUResult_OBUF[8]_inst_i_7_n_0\,
      I3 => \^q_reg[6]_31\,
      I4 => \ALUResult_OBUF[9]_inst_i_6_n_0\,
      O => \ALUResult_OBUF[0]_inst_i_5_n_0\
    );
\ALUResult_OBUF[10]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult_OBUF[10]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[10]_inst_i_3_n_0\,
      O => \^q_reg[6]_5\,
      S => \^q_reg[6]_28\
    );
\ALUResult_OBUF[10]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2FFB2F0B20FB200"
    )
        port map (
      I0 => \ALUResult_OBUF[28]_inst_i_1_0\(9),
      I1 => \i_alu/aD2M4dsP\(10),
      I2 => \^q_reg[7]_1\,
      I3 => \^q_reg[6]_29\,
      I4 => \ALUResult_OBUF[31]_inst_i_1_0\(9),
      I5 => \ALUResult_OBUF[31]_inst_i_1_1\(9),
      O => \ALUResult_OBUF[10]_inst_i_2_n_0\
    );
\ALUResult_OBUF[10]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CB38C83B"
    )
        port map (
      I0 => \ALUResult_OBUF[10]_inst_i_5_n_0\,
      I1 => \^q_reg[7]_1\,
      I2 => \^q_reg[6]_29\,
      I3 => \i_alu/aD2M4dsP\(10),
      I4 => \ALUResult_OBUF[28]_inst_i_1_0\(9),
      O => \ALUResult_OBUF[10]_inst_i_3_n_0\
    );
\ALUResult_OBUF[10]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FAFACCCCFCFC"
    )
        port map (
      I0 => \ALUResult_OBUF[14]_inst_i_7_n_0\,
      I1 => \ALUResult_OBUF[10]_inst_i_6_n_0\,
      I2 => \^q_reg[6]_0\,
      I3 => SrcB(6),
      I4 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      I5 => \^q_reg[6]_31\,
      O => \ALUResult_OBUF[10]_inst_i_5_n_0\
    );
\ALUResult_OBUF[10]_inst_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A80"
    )
        port map (
      I0 => \Result0_carry__0_i_10_n_0\,
      I1 => r15(9),
      I2 => \^q_reg[3]_5\,
      I3 => rd20(10),
      O => \ALUResult_OBUF[10]_inst_i_6_n_0\
    );
\ALUResult_OBUF[11]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult_OBUF[11]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[11]_inst_i_3_n_0\,
      O => \^q_reg[6]_6\,
      S => \^q_reg[6]_28\
    );
\ALUResult_OBUF[11]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2FFB2F0B20FB200"
    )
        port map (
      I0 => \ALUResult_OBUF[28]_inst_i_1_0\(10),
      I1 => \i_alu/aD2M4dsP\(11),
      I2 => \^q_reg[7]_1\,
      I3 => \^q_reg[6]_29\,
      I4 => \ALUResult_OBUF[31]_inst_i_1_0\(10),
      I5 => \ALUResult_OBUF[31]_inst_i_1_1\(10),
      O => \ALUResult_OBUF[11]_inst_i_2_n_0\
    );
\ALUResult_OBUF[11]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CB38C83B"
    )
        port map (
      I0 => \ALUResult_OBUF[11]_inst_i_5_n_0\,
      I1 => \^q_reg[7]_1\,
      I2 => \^q_reg[6]_29\,
      I3 => \i_alu/aD2M4dsP\(11),
      I4 => \ALUResult_OBUF[28]_inst_i_1_0\(10),
      O => \ALUResult_OBUF[11]_inst_i_3_n_0\
    );
\ALUResult_OBUF[11]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF4E4E"
    )
        port map (
      I0 => \^q_reg[6]_31\,
      I1 => \ALUResult_OBUF[11]_inst_i_6_n_0\,
      I2 => \i_alu/aD2M4dsP\(15),
      I3 => \^q_reg[3]_3\(0),
      I4 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      O => \ALUResult_OBUF[11]_inst_i_5_n_0\
    );
\ALUResult_OBUF[11]_inst_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A80"
    )
        port map (
      I0 => \Result0_carry__0_i_10_n_0\,
      I1 => r15(10),
      I2 => \^q_reg[3]_5\,
      I3 => rd20(11),
      O => \ALUResult_OBUF[11]_inst_i_6_n_0\
    );
\ALUResult_OBUF[12]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult_OBUF[12]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[12]_inst_i_3_n_0\,
      O => \^q_reg[6]_8\,
      S => \^q_reg[6]_28\
    );
\ALUResult_OBUF[12]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAAA00D8D8D8D8"
    )
        port map (
      I0 => \^q_reg[7]_1\,
      I1 => \ALUResult_OBUF[31]_inst_i_1_1\(11),
      I2 => \ALUResult_OBUF[31]_inst_i_1_0\(11),
      I3 => SrcB(12),
      I4 => \ALUResult_OBUF[28]_inst_i_1_0\(11),
      I5 => \^q_reg[6]_29\,
      O => \ALUResult_OBUF[12]_inst_i_2_n_0\
    );
\ALUResult_OBUF[12]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"383BCBC8"
    )
        port map (
      I0 => \ALUResult_OBUF[12]_inst_i_5_n_0\,
      I1 => \^q_reg[7]_1\,
      I2 => \^q_reg[6]_29\,
      I3 => \ALUResult_OBUF[28]_inst_i_1_0\(11),
      I4 => SrcB(12),
      O => \ALUResult_OBUF[12]_inst_i_3_n_0\
    );
\ALUResult_OBUF[12]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3333F0AA"
    )
        port map (
      I0 => \ALUResult_OBUF[16]_inst_i_7_n_0\,
      I1 => \i_alu/aD2M4dsP\(8),
      I2 => SrcB(16),
      I3 => \^q_reg[6]_31\,
      I4 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      O => \ALUResult_OBUF[12]_inst_i_5_n_0\
    );
\ALUResult_OBUF[13]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \ALUResult_OBUF[13]_inst_i_2_n_0\,
      I1 => \^q_reg[6]_28\,
      I2 => \ALUResult_OBUF[13]_inst_i_3_n_0\,
      O => \^q_reg[6]_9\
    );
\ALUResult_OBUF[13]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2FFB2F0B20FB200"
    )
        port map (
      I0 => \ALUResult_OBUF[28]_inst_i_1_0\(12),
      I1 => \i_alu/aD2M4dsP\(13),
      I2 => \^q_reg[7]_1\,
      I3 => \^q_reg[6]_29\,
      I4 => \ALUResult_OBUF[31]_inst_i_1_0\(12),
      I5 => \ALUResult_OBUF[31]_inst_i_1_1\(12),
      O => \ALUResult_OBUF[13]_inst_i_2_n_0\
    );
\ALUResult_OBUF[13]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD55DD55DD55D"
    )
        port map (
      I0 => \ALUResult_OBUF[27]_inst_i_5_n_0\,
      I1 => \ALUResult_OBUF[23]_inst_i_5_n_0\,
      I2 => \ALUResult_OBUF[28]_inst_i_1_0\(12),
      I3 => \i_alu/aD2M4dsP\(13),
      I4 => \ALUResult_OBUF[13]_inst_i_5_n_0\,
      I5 => \ALUResult_OBUF[23]_inst_i_7_n_0\,
      O => \ALUResult_OBUF[13]_inst_i_3_n_0\
    );
\ALUResult_OBUF[13]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF4E4E"
    )
        port map (
      I0 => \^q_reg[6]_31\,
      I1 => \ALUResult_OBUF[17]_inst_i_6_n_0\,
      I2 => \i_alu/aD2M4dsP\(17),
      I3 => \i_alu/aD2M4dsP\(9),
      I4 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      O => \ALUResult_OBUF[13]_inst_i_5_n_0\
    );
\ALUResult_OBUF[14]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \ALUResult_OBUF[14]_inst_i_2_n_0\,
      I1 => \^q_reg[6]_28\,
      I2 => \ALUResult_OBUF[14]_inst_i_3_n_0\,
      O => \^q_reg[6]_10\
    );
\ALUResult_OBUF[14]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00FFAAD8D8D8D8"
    )
        port map (
      I0 => \^q_reg[7]_1\,
      I1 => \ALUResult_OBUF[31]_inst_i_1_1\(13),
      I2 => \ALUResult_OBUF[31]_inst_i_1_0\(13),
      I3 => \ALUResult_OBUF[28]_inst_i_1_0\(13),
      I4 => \i_alu/aD2M4dsP\(14),
      I5 => \^q_reg[6]_29\,
      O => \ALUResult_OBUF[14]_inst_i_2_n_0\
    );
\ALUResult_OBUF[14]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD5D5D5"
    )
        port map (
      I0 => \ALUResult_OBUF[27]_inst_i_5_n_0\,
      I1 => \ALUResult_OBUF[23]_inst_i_5_n_0\,
      I2 => \ALUResult_OBUF[14]_inst_i_5_n_0\,
      I3 => \ALUResult_OBUF[14]_inst_i_6_n_0\,
      I4 => \ALUResult_OBUF[23]_inst_i_7_n_0\,
      O => \ALUResult_OBUF[14]_inst_i_3_n_0\
    );
\ALUResult_OBUF[14]_inst_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E21D"
    )
        port map (
      I0 => rd10(14),
      I1 => \^q_reg[3]_1\,
      I2 => r15(13),
      I3 => \i_alu/aD2M4dsP\(14),
      O => \ALUResult_OBUF[14]_inst_i_5_n_0\
    );
\ALUResult_OBUF[14]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF4E4E"
    )
        port map (
      I0 => \^q_reg[6]_31\,
      I1 => \ALUResult_OBUF[14]_inst_i_7_n_0\,
      I2 => \i_alu/aD2M4dsP\(18),
      I3 => \i_alu/aD2M4dsP\(10),
      I4 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      O => \ALUResult_OBUF[14]_inst_i_6_n_0\
    );
\ALUResult_OBUF[14]_inst_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A80"
    )
        port map (
      I0 => \Result0_carry__0_i_10_n_0\,
      I1 => r15(13),
      I2 => \^q_reg[3]_5\,
      I3 => rd20(14),
      O => \ALUResult_OBUF[14]_inst_i_7_n_0\
    );
\ALUResult_OBUF[15]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult_OBUF[15]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[15]_inst_i_3_n_0\,
      O => \^q_reg[6]_11\,
      S => \^q_reg[6]_28\
    );
\ALUResult_OBUF[15]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2FFB2F0B20FB200"
    )
        port map (
      I0 => \ALUResult_OBUF[28]_inst_i_1_0\(14),
      I1 => \i_alu/aD2M4dsP\(15),
      I2 => \^q_reg[7]_1\,
      I3 => \^q_reg[6]_29\,
      I4 => \ALUResult_OBUF[31]_inst_i_1_0\(14),
      I5 => \ALUResult_OBUF[31]_inst_i_1_1\(14),
      O => \ALUResult_OBUF[15]_inst_i_2_n_0\
    );
\ALUResult_OBUF[15]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CBC8383B"
    )
        port map (
      I0 => \ALUResult_OBUF[15]_inst_i_5_n_0\,
      I1 => \^q_reg[7]_1\,
      I2 => \^q_reg[6]_29\,
      I3 => \ALUResult_OBUF[28]_inst_i_1_0\(14),
      I4 => \i_alu/aD2M4dsP\(15),
      O => \ALUResult_OBUF[15]_inst_i_3_n_0\
    );
\ALUResult_OBUF[15]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF4E4E"
    )
        port map (
      I0 => \^q_reg[6]_31\,
      I1 => \ALUResult_OBUF[15]_inst_i_6_n_0\,
      I2 => \i_alu/aD2M4dsP\(19),
      I3 => \i_alu/aD2M4dsP\(11),
      I4 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      O => \ALUResult_OBUF[15]_inst_i_5_n_0\
    );
\ALUResult_OBUF[15]_inst_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A80"
    )
        port map (
      I0 => \Result0_carry__0_i_10_n_0\,
      I1 => r15(14),
      I2 => \^q_reg[3]_5\,
      I3 => rd20(15),
      O => \ALUResult_OBUF[15]_inst_i_6_n_0\
    );
\ALUResult_OBUF[16]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \ALUResult_OBUF[16]_inst_i_2_n_0\,
      I1 => \^q_reg[6]_28\,
      I2 => \ALUResult_OBUF[16]_inst_i_3_n_0\,
      O => \^q_reg[6]_12\
    );
\ALUResult_OBUF[16]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAAA00D8D8D8D8"
    )
        port map (
      I0 => \^q_reg[7]_1\,
      I1 => \ALUResult_OBUF[31]_inst_i_1_1\(15),
      I2 => \ALUResult_OBUF[31]_inst_i_1_0\(15),
      I3 => SrcB(16),
      I4 => \ALUResult_OBUF[28]_inst_i_1_0\(15),
      I5 => \^q_reg[6]_29\,
      O => \ALUResult_OBUF[16]_inst_i_2_n_0\
    );
\ALUResult_OBUF[16]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF5DD55DD55DD5"
    )
        port map (
      I0 => \ALUResult_OBUF[27]_inst_i_5_n_0\,
      I1 => \ALUResult_OBUF[23]_inst_i_5_n_0\,
      I2 => \ALUResult_OBUF[28]_inst_i_1_0\(15),
      I3 => SrcB(16),
      I4 => \ALUResult_OBUF[16]_inst_i_5_n_0\,
      I5 => \ALUResult_OBUF[23]_inst_i_7_n_0\,
      O => \ALUResult_OBUF[16]_inst_i_3_n_0\
    );
\ALUResult_OBUF[16]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCE020000CE02"
    )
        port map (
      I0 => \Result0_carry__0_i_10_n_0\,
      I1 => \^q_reg[6]_31\,
      I2 => \q[0]_i_48_0\,
      I3 => SrcB(20),
      I4 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      I5 => \ALUResult_OBUF[16]_inst_i_7_n_0\,
      O => \ALUResult_OBUF[16]_inst_i_5_n_0\
    );
\ALUResult_OBUF[16]_inst_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A80"
    )
        port map (
      I0 => \Result0_carry__0_i_10_n_0\,
      I1 => r15(11),
      I2 => \^q_reg[3]_5\,
      I3 => rd20(12),
      O => \ALUResult_OBUF[16]_inst_i_7_n_0\
    );
\ALUResult_OBUF[17]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult_OBUF[17]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[17]_inst_i_3_n_0\,
      O => \^q_reg[6]_13\,
      S => \^q_reg[6]_28\
    );
\ALUResult_OBUF[17]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2FFB2F0B20FB200"
    )
        port map (
      I0 => \ALUResult_OBUF[28]_inst_i_1_0\(16),
      I1 => \i_alu/aD2M4dsP\(17),
      I2 => \^q_reg[7]_1\,
      I3 => \^q_reg[6]_29\,
      I4 => \ALUResult_OBUF[31]_inst_i_1_0\(16),
      I5 => \ALUResult_OBUF[31]_inst_i_1_1\(16),
      O => \ALUResult_OBUF[17]_inst_i_2_n_0\
    );
\ALUResult_OBUF[17]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CBC8383B"
    )
        port map (
      I0 => \ALUResult_OBUF[17]_inst_i_5_n_0\,
      I1 => \^q_reg[7]_1\,
      I2 => \^q_reg[6]_29\,
      I3 => \ALUResult_OBUF[28]_inst_i_1_0\(16),
      I4 => \i_alu/aD2M4dsP\(17),
      O => \ALUResult_OBUF[17]_inst_i_3_n_0\
    );
\ALUResult_OBUF[17]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCF0AA"
    )
        port map (
      I0 => \ALUResult_OBUF[21]_inst_i_6_n_0\,
      I1 => \ALUResult_OBUF[17]_inst_i_6_n_0\,
      I2 => SrcB(21),
      I3 => \^q_reg[6]_31\,
      I4 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      O => \ALUResult_OBUF[17]_inst_i_5_n_0\
    );
\ALUResult_OBUF[17]_inst_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A80"
    )
        port map (
      I0 => \Result0_carry__0_i_10_n_0\,
      I1 => r15(12),
      I2 => \^q_reg[3]_5\,
      I3 => rd20(13),
      O => \ALUResult_OBUF[17]_inst_i_6_n_0\
    );
\ALUResult_OBUF[18]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult_OBUF[18]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[18]_inst_i_3_n_0\,
      O => \^q_reg[6]_14\,
      S => \^q_reg[6]_28\
    );
\ALUResult_OBUF[18]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00FFAAD8D8D8D8"
    )
        port map (
      I0 => \^q_reg[7]_1\,
      I1 => \ALUResult_OBUF[31]_inst_i_1_1\(17),
      I2 => \ALUResult_OBUF[31]_inst_i_1_0\(17),
      I3 => \ALUResult_OBUF[28]_inst_i_1_0\(17),
      I4 => \i_alu/aD2M4dsP\(18),
      I5 => \^q_reg[6]_29\,
      O => \ALUResult_OBUF[18]_inst_i_2_n_0\
    );
\ALUResult_OBUF[18]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CBC8383B"
    )
        port map (
      I0 => \ALUResult_OBUF[18]_inst_i_5_n_0\,
      I1 => \^q_reg[7]_1\,
      I2 => \^q_reg[6]_29\,
      I3 => \ALUResult_OBUF[28]_inst_i_1_0\(17),
      I4 => \i_alu/aD2M4dsP\(18),
      O => \ALUResult_OBUF[18]_inst_i_3_n_0\
    );
\ALUResult_OBUF[18]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3333F0AA"
    )
        port map (
      I0 => \ALUResult_OBUF[18]_inst_i_6_n_0\,
      I1 => \i_alu/aD2M4dsP\(14),
      I2 => SrcB(22),
      I3 => \^q_reg[6]_31\,
      I4 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      O => \ALUResult_OBUF[18]_inst_i_5_n_0\
    );
\ALUResult_OBUF[18]_inst_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A80"
    )
        port map (
      I0 => \Result0_carry__0_i_10_n_0\,
      I1 => r15(17),
      I2 => \^q_reg[3]_5\,
      I3 => rd20(18),
      O => \ALUResult_OBUF[18]_inst_i_6_n_0\
    );
\ALUResult_OBUF[19]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \ALUResult_OBUF[19]_inst_i_2_n_0\,
      I1 => \^q_reg[6]_28\,
      I2 => \ALUResult_OBUF[19]_inst_i_3_n_0\,
      O => \^q_reg[6]_15\
    );
\ALUResult_OBUF[19]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2FFB2F0B20FB200"
    )
        port map (
      I0 => \ALUResult_OBUF[28]_inst_i_1_0\(18),
      I1 => \i_alu/aD2M4dsP\(19),
      I2 => \^q_reg[7]_1\,
      I3 => \^q_reg[6]_29\,
      I4 => \ALUResult_OBUF[31]_inst_i_1_0\(18),
      I5 => \ALUResult_OBUF[31]_inst_i_1_1\(18),
      O => \ALUResult_OBUF[19]_inst_i_2_n_0\
    );
\ALUResult_OBUF[19]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD55DD55DD55D"
    )
        port map (
      I0 => \ALUResult_OBUF[27]_inst_i_5_n_0\,
      I1 => \ALUResult_OBUF[23]_inst_i_5_n_0\,
      I2 => \ALUResult_OBUF[28]_inst_i_1_0\(18),
      I3 => \i_alu/aD2M4dsP\(19),
      I4 => \ALUResult_OBUF[19]_inst_i_5_n_0\,
      I5 => \ALUResult_OBUF[23]_inst_i_7_n_0\,
      O => \ALUResult_OBUF[19]_inst_i_3_n_0\
    );
\ALUResult_OBUF[19]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFE4E4"
    )
        port map (
      I0 => \^q_reg[6]_31\,
      I1 => \ALUResult_OBUF[19]_inst_i_6_n_0\,
      I2 => SrcB(23),
      I3 => \i_alu/aD2M4dsP\(15),
      I4 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      O => \ALUResult_OBUF[19]_inst_i_5_n_0\
    );
\ALUResult_OBUF[19]_inst_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A80"
    )
        port map (
      I0 => \Result0_carry__0_i_10_n_0\,
      I1 => r15(18),
      I2 => \^q_reg[3]_5\,
      I3 => rd20(19),
      O => \ALUResult_OBUF[19]_inst_i_6_n_0\
    );
\ALUResult_OBUF[1]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult_OBUF[1]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[1]_inst_i_3_n_0\,
      O => \^q_reg[6]_3\,
      S => \^q_reg[6]_28\
    );
\ALUResult_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFF00AAD8D8D8D8"
    )
        port map (
      I0 => \^q_reg[7]_1\,
      I1 => \ALUResult_OBUF[31]_inst_i_1_1\(1),
      I2 => \ALUResult_OBUF[31]_inst_i_1_0\(1),
      I3 => \i_alu/aD2M4dsP\(1),
      I4 => \ALUResult_OBUF[28]_inst_i_1_0\(0),
      I5 => \^q_reg[6]_29\,
      O => \ALUResult_OBUF[1]_inst_i_2_n_0\
    );
\ALUResult_OBUF[1]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C7C43437"
    )
        port map (
      I0 => \ALUResult_OBUF[1]_inst_i_5_n_0\,
      I1 => \^q_reg[7]_1\,
      I2 => \^q_reg[6]_29\,
      I3 => \ALUResult_OBUF[28]_inst_i_1_0\(0),
      I4 => \i_alu/aD2M4dsP\(1),
      O => \ALUResult_OBUF[1]_inst_i_3_n_0\
    );
\ALUResult_OBUF[1]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEEFFEE"
    )
        port map (
      I0 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      I1 => \i_alu/aD2M4dsP\(1),
      I2 => \^q_reg[6]_0\,
      I3 => \^q_reg[6]_31\,
      I4 => SrcB(5),
      O => \ALUResult_OBUF[1]_inst_i_5_n_0\
    );
\ALUResult_OBUF[20]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult_OBUF[20]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[20]_inst_i_3_n_0\,
      O => \^q_reg[6]_16\,
      S => \^q_reg[6]_28\
    );
\ALUResult_OBUF[20]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E8FFE8F0E80FE800"
    )
        port map (
      I0 => \ALUResult_OBUF[28]_inst_i_1_0\(19),
      I1 => SrcB(20),
      I2 => \^q_reg[7]_1\,
      I3 => \^q_reg[6]_29\,
      I4 => \ALUResult_OBUF[31]_inst_i_1_0\(19),
      I5 => \ALUResult_OBUF[31]_inst_i_1_1\(19),
      O => \ALUResult_OBUF[20]_inst_i_2_n_0\
    );
\ALUResult_OBUF[20]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"383BCBC8"
    )
        port map (
      I0 => \ALUResult_OBUF[20]_inst_i_5_n_0\,
      I1 => \^q_reg[7]_1\,
      I2 => \^q_reg[6]_29\,
      I3 => \ALUResult_OBUF[28]_inst_i_1_0\(19),
      I4 => SrcB(20),
      O => \ALUResult_OBUF[20]_inst_i_3_n_0\
    );
\ALUResult_OBUF[20]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => \^q_reg[6]_31\,
      I1 => SrcB(20),
      I2 => SrcB(24),
      I3 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      I4 => SrcB(16),
      O => \ALUResult_OBUF[20]_inst_i_5_n_0\
    );
\ALUResult_OBUF[21]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult_OBUF[21]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[21]_inst_i_3_n_0\,
      O => \^q_reg[6]_17\,
      S => \^q_reg[6]_28\
    );
\ALUResult_OBUF[21]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E8FFE8F0E80FE800"
    )
        port map (
      I0 => \ALUResult_OBUF[28]_inst_i_1_0\(20),
      I1 => SrcB(21),
      I2 => \^q_reg[7]_1\,
      I3 => \^q_reg[6]_29\,
      I4 => \ALUResult_OBUF[31]_inst_i_1_0\(20),
      I5 => \ALUResult_OBUF[31]_inst_i_1_1\(20),
      O => \ALUResult_OBUF[21]_inst_i_2_n_0\
    );
\ALUResult_OBUF[21]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"383BCBC8"
    )
        port map (
      I0 => \ALUResult_OBUF[21]_inst_i_5_n_0\,
      I1 => \^q_reg[7]_1\,
      I2 => \^q_reg[6]_29\,
      I3 => \ALUResult_OBUF[28]_inst_i_1_0\(20),
      I4 => SrcB(21),
      O => \ALUResult_OBUF[21]_inst_i_3_n_0\
    );
\ALUResult_OBUF[21]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => \ALUResult_OBUF[25]_inst_i_6_n_0\,
      I1 => SrcB(25),
      I2 => \ALUResult_OBUF[21]_inst_i_6_n_0\,
      I3 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      I4 => \^q_reg[6]_31\,
      O => \ALUResult_OBUF[21]_inst_i_5_n_0\
    );
\ALUResult_OBUF[21]_inst_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A80"
    )
        port map (
      I0 => \Result0_carry__0_i_10_n_0\,
      I1 => r15(16),
      I2 => \^q_reg[3]_5\,
      I3 => rd20(17),
      O => \ALUResult_OBUF[21]_inst_i_6_n_0\
    );
\ALUResult_OBUF[22]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \ALUResult_OBUF[22]_inst_i_2_n_0\,
      I1 => \^q_reg[6]_28\,
      I2 => \ALUResult_OBUF[22]_inst_i_3_n_0\,
      O => \^q_reg[6]_18\
    );
\ALUResult_OBUF[22]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E8FFE8F0E80FE800"
    )
        port map (
      I0 => \ALUResult_OBUF[28]_inst_i_1_0\(21),
      I1 => SrcB(22),
      I2 => \^q_reg[7]_1\,
      I3 => \^q_reg[6]_29\,
      I4 => \ALUResult_OBUF[31]_inst_i_1_0\(21),
      I5 => \ALUResult_OBUF[31]_inst_i_1_1\(21),
      O => \ALUResult_OBUF[22]_inst_i_2_n_0\
    );
\ALUResult_OBUF[22]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF5DD55DD55DD5"
    )
        port map (
      I0 => \ALUResult_OBUF[27]_inst_i_5_n_0\,
      I1 => \ALUResult_OBUF[23]_inst_i_5_n_0\,
      I2 => \ALUResult_OBUF[28]_inst_i_1_0\(21),
      I3 => SrcB(22),
      I4 => \ALUResult_OBUF[22]_inst_i_5_n_0\,
      I5 => \ALUResult_OBUF[23]_inst_i_7_n_0\,
      O => \ALUResult_OBUF[22]_inst_i_3_n_0\
    );
\ALUResult_OBUF[22]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFCE02CE02"
    )
        port map (
      I0 => \Result0_carry__0_i_10_n_0\,
      I1 => \^q_reg[6]_31\,
      I2 => \q[0]_i_49_0\,
      I3 => SrcB(26),
      I4 => \i_alu/aD2M4dsP\(18),
      I5 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      O => \ALUResult_OBUF[22]_inst_i_5_n_0\
    );
\ALUResult_OBUF[23]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \ALUResult_OBUF[23]_inst_i_2_n_0\,
      I1 => \^q_reg[6]_28\,
      I2 => \ALUResult_OBUF[23]_inst_i_3_n_0\,
      O => \^q_reg[6]_19\
    );
\ALUResult_OBUF[23]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAAA00D8D8D8D8"
    )
        port map (
      I0 => \^q_reg[7]_1\,
      I1 => \ALUResult_OBUF[31]_inst_i_1_1\(22),
      I2 => \ALUResult_OBUF[31]_inst_i_1_0\(22),
      I3 => SrcB(23),
      I4 => \ALUResult_OBUF[28]_inst_i_1_0\(22),
      I5 => \^q_reg[6]_29\,
      O => \ALUResult_OBUF[23]_inst_i_2_n_0\
    );
\ALUResult_OBUF[23]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF5DD55DD55DD5"
    )
        port map (
      I0 => \ALUResult_OBUF[27]_inst_i_5_n_0\,
      I1 => \ALUResult_OBUF[23]_inst_i_5_n_0\,
      I2 => \ALUResult_OBUF[28]_inst_i_1_0\(22),
      I3 => SrcB(23),
      I4 => \ALUResult_OBUF[23]_inst_i_6_n_0\,
      I5 => \ALUResult_OBUF[23]_inst_i_7_n_0\,
      O => \ALUResult_OBUF[23]_inst_i_3_n_0\
    );
\ALUResult_OBUF[23]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000038440BCC"
    )
        port map (
      I0 => \^pc\(1),
      I1 => \^pc\(4),
      I2 => \^pc\(5),
      I3 => \^pc\(2),
      I4 => \^pc\(3),
      I5 => \^pc\(6),
      O => \ALUResult_OBUF[23]_inst_i_5_n_0\
    );
\ALUResult_OBUF[23]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF4E4E"
    )
        port map (
      I0 => \^q_reg[6]_31\,
      I1 => \ALUResult_OBUF[27]_inst_i_8_n_0\,
      I2 => \i_alu/aD2M4dsP\(27),
      I3 => \i_alu/aD2M4dsP\(19),
      I4 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      O => \ALUResult_OBUF[23]_inst_i_6_n_0\
    );
\ALUResult_OBUF[23]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011511115510000"
    )
        port map (
      I0 => \^pc\(6),
      I1 => \^pc\(4),
      I2 => \^pc\(1),
      I3 => \^pc\(2),
      I4 => \^pc\(3),
      I5 => \^pc\(5),
      O => \ALUResult_OBUF[23]_inst_i_7_n_0\
    );
\ALUResult_OBUF[24]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult_OBUF[24]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[24]_inst_i_3_n_0\,
      O => \^q_reg[6]_20\,
      S => \^q_reg[6]_28\
    );
\ALUResult_OBUF[24]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E8FFE8F0E80FE800"
    )
        port map (
      I0 => \ALUResult_OBUF[28]_inst_i_1_0\(23),
      I1 => SrcB(24),
      I2 => \^q_reg[7]_1\,
      I3 => \^q_reg[6]_29\,
      I4 => \ALUResult_OBUF[31]_inst_i_1_0\(23),
      I5 => \ALUResult_OBUF[31]_inst_i_1_1\(23),
      O => \ALUResult_OBUF[24]_inst_i_2_n_0\
    );
\ALUResult_OBUF[24]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"383BCBC8"
    )
        port map (
      I0 => \ALUResult_OBUF[24]_inst_i_5_n_0\,
      I1 => \^q_reg[7]_1\,
      I2 => \^q_reg[6]_29\,
      I3 => \ALUResult_OBUF[28]_inst_i_1_0\(23),
      I4 => SrcB(24),
      O => \ALUResult_OBUF[24]_inst_i_3_n_0\
    );
\ALUResult_OBUF[24]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF3030FFB8"
    )
        port map (
      I0 => \ALUResult_OBUF[24]_inst_i_6_n_0\,
      I1 => \^q_reg[6]_31\,
      I2 => \ALUResult_OBUF[24]_inst_i_7_n_0\,
      I3 => \^q_reg[6]_0\,
      I4 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      I5 => \ALUResult_OBUF[24]_inst_i_8_n_0\,
      O => \ALUResult_OBUF[24]_inst_i_5_n_0\
    );
\ALUResult_OBUF[24]_inst_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \Result0_carry__0_i_10_n_0\,
      I1 => rd20(28),
      I2 => \^q_reg[3]_5\,
      I3 => r15(27),
      O => \ALUResult_OBUF[24]_inst_i_6_n_0\
    );
\ALUResult_OBUF[24]_inst_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \Result0_carry__0_i_10_n_0\,
      I1 => rd20(24),
      I2 => \^q_reg[3]_5\,
      I3 => r15(23),
      O => \ALUResult_OBUF[24]_inst_i_7_n_0\
    );
\ALUResult_OBUF[24]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080800000008000"
    )
        port map (
      I0 => \Result0_carry__0_i_10_n_0\,
      I1 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      I2 => \^q_reg[6]_31\,
      I3 => rd20(20),
      I4 => \^q_reg[3]_5\,
      I5 => r15(19),
      O => \ALUResult_OBUF[24]_inst_i_8_n_0\
    );
\ALUResult_OBUF[25]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult_OBUF[25]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[25]_inst_i_3_n_0\,
      O => \^q_reg[6]_21\,
      S => \^q_reg[6]_28\
    );
\ALUResult_OBUF[25]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAAA00D8D8D8D8"
    )
        port map (
      I0 => \^q_reg[7]_1\,
      I1 => \ALUResult_OBUF[31]_inst_i_1_1\(24),
      I2 => \ALUResult_OBUF[31]_inst_i_1_0\(24),
      I3 => SrcB(25),
      I4 => \ALUResult_OBUF[28]_inst_i_1_0\(24),
      I5 => \^q_reg[6]_29\,
      O => \ALUResult_OBUF[25]_inst_i_2_n_0\
    );
\ALUResult_OBUF[25]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"383BCBC8"
    )
        port map (
      I0 => \ALUResult_OBUF[25]_inst_i_5_n_0\,
      I1 => \^q_reg[7]_1\,
      I2 => \^q_reg[6]_29\,
      I3 => \ALUResult_OBUF[28]_inst_i_1_0\(24),
      I4 => SrcB(25),
      O => \ALUResult_OBUF[25]_inst_i_3_n_0\
    );
\ALUResult_OBUF[25]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D80000CCCC"
    )
        port map (
      I0 => \^q_reg[6]_0\,
      I1 => SrcB(25),
      I2 => SrcB(29),
      I3 => \ALUResult_OBUF[25]_inst_i_6_n_0\,
      I4 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      I5 => \^q_reg[6]_31\,
      O => \ALUResult_OBUF[25]_inst_i_5_n_0\
    );
\ALUResult_OBUF[25]_inst_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A80"
    )
        port map (
      I0 => \Result0_carry__0_i_10_n_0\,
      I1 => r15(20),
      I2 => \^q_reg[3]_5\,
      I3 => rd20(21),
      O => \ALUResult_OBUF[25]_inst_i_6_n_0\
    );
\ALUResult_OBUF[26]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult_OBUF[26]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[26]_inst_i_3_n_0\,
      O => \^q_reg[6]_22\,
      S => \^q_reg[6]_28\
    );
\ALUResult_OBUF[26]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E8FFE8F0E80FE800"
    )
        port map (
      I0 => \ALUResult_OBUF[28]_inst_i_1_0\(25),
      I1 => SrcB(26),
      I2 => \^q_reg[7]_1\,
      I3 => \^q_reg[6]_29\,
      I4 => \ALUResult_OBUF[31]_inst_i_1_0\(25),
      I5 => \ALUResult_OBUF[31]_inst_i_1_1\(25),
      O => \ALUResult_OBUF[26]_inst_i_2_n_0\
    );
\ALUResult_OBUF[26]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"383BCBC8"
    )
        port map (
      I0 => \ALUResult_OBUF[26]_inst_i_5_n_0\,
      I1 => \^q_reg[7]_1\,
      I2 => \^q_reg[6]_29\,
      I3 => \ALUResult_OBUF[28]_inst_i_1_0\(25),
      I4 => SrcB(26),
      O => \ALUResult_OBUF[26]_inst_i_3_n_0\
    );
\ALUResult_OBUF[26]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE222E2"
    )
        port map (
      I0 => \ALUResult_OBUF[26]_inst_i_6_n_0\,
      I1 => \^q_reg[6]_31\,
      I2 => SrcB(30),
      I3 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      I4 => SrcB(22),
      O => \ALUResult_OBUF[26]_inst_i_5_n_0\
    );
\ALUResult_OBUF[26]_inst_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \Result0_carry__0_i_10_n_0\,
      I1 => rd20(26),
      I2 => \^q_reg[3]_5\,
      I3 => r15(25),
      O => \ALUResult_OBUF[26]_inst_i_6_n_0\
    );
\ALUResult_OBUF[27]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \ALUResult_OBUF[27]_inst_i_2_n_0\,
      I1 => \^q_reg[6]_28\,
      I2 => \ALUResult_OBUF[27]_inst_i_3_n_0\,
      O => \^q_reg[6]_23\
    );
\ALUResult_OBUF[27]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00FFAAD8D8D8D8"
    )
        port map (
      I0 => \^q_reg[7]_1\,
      I1 => \ALUResult_OBUF[31]_inst_i_1_1\(26),
      I2 => \ALUResult_OBUF[31]_inst_i_1_0\(26),
      I3 => \ALUResult_OBUF[28]_inst_i_1_0\(26),
      I4 => \i_alu/aD2M4dsP\(27),
      I5 => \^q_reg[6]_29\,
      O => \ALUResult_OBUF[27]_inst_i_2_n_0\
    );
\ALUResult_OBUF[27]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555FDF75D57"
    )
        port map (
      I0 => \ALUResult_OBUF[27]_inst_i_5_n_0\,
      I1 => \i_alu/aD2M4dsP\(27),
      I2 => \^q_reg[7]_1\,
      I3 => \ALUResult_OBUF[28]_inst_i_1_0\(26),
      I4 => \ALUResult_OBUF[27]_inst_i_6_n_0\,
      I5 => \^q_reg[6]_29\,
      O => \ALUResult_OBUF[27]_inst_i_3_n_0\
    );
\ALUResult_OBUF[27]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000070788AB"
    )
        port map (
      I0 => \^pc\(5),
      I1 => \^pc\(2),
      I2 => \^pc\(4),
      I3 => \^pc\(1),
      I4 => \^pc\(3),
      I5 => \^pc\(6),
      O => \ALUResult_OBUF[27]_inst_i_5_n_0\
    );
\ALUResult_OBUF[27]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F03300AA"
    )
        port map (
      I0 => \ALUResult_OBUF[27]_inst_i_7_n_0\,
      I1 => \Result0_carry__6_i_9_n_0\,
      I2 => \ALUResult_OBUF[27]_inst_i_8_n_0\,
      I3 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      I4 => \^q_reg[6]_31\,
      O => \ALUResult_OBUF[27]_inst_i_6_n_0\
    );
\ALUResult_OBUF[27]_inst_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A80"
    )
        port map (
      I0 => \Result0_carry__0_i_10_n_0\,
      I1 => r15(26),
      I2 => \^q_reg[3]_5\,
      I3 => rd20(27),
      O => \ALUResult_OBUF[27]_inst_i_7_n_0\
    );
\ALUResult_OBUF[27]_inst_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A80"
    )
        port map (
      I0 => \Result0_carry__0_i_10_n_0\,
      I1 => r15(22),
      I2 => \^q_reg[3]_5\,
      I3 => rd20(23),
      O => \ALUResult_OBUF[27]_inst_i_8_n_0\
    );
\ALUResult_OBUF[28]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult_OBUF[28]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[28]_inst_i_3_n_0\,
      O => \^q_reg[6]_26\,
      S => \^q_reg[6]_28\
    );
\ALUResult_OBUF[28]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00FFAAD8D8D8D8"
    )
        port map (
      I0 => \^q_reg[7]_1\,
      I1 => \ALUResult_OBUF[31]_inst_i_1_1\(27),
      I2 => \ALUResult_OBUF[31]_inst_i_1_0\(27),
      I3 => \ALUResult_OBUF[28]_inst_i_1_0\(27),
      I4 => \i_alu/aD2M4dsP\(28),
      I5 => \^q_reg[6]_29\,
      O => \ALUResult_OBUF[28]_inst_i_2_n_0\
    );
\ALUResult_OBUF[28]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CBC8383B"
    )
        port map (
      I0 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I1 => \^q_reg[7]_1\,
      I2 => \^q_reg[6]_29\,
      I3 => \ALUResult_OBUF[28]_inst_i_1_0\(27),
      I4 => \i_alu/aD2M4dsP\(28),
      O => \ALUResult_OBUF[28]_inst_i_3_n_0\
    );
\ALUResult_OBUF[28]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFA8080000"
    )
        port map (
      I0 => \Result0_carry__0_i_10_n_0\,
      I1 => rd20(24),
      I2 => \^q_reg[3]_5\,
      I3 => r15(23),
      I4 => \ALUResult_OBUF[28]_inst_i_6_n_0\,
      I5 => \ALUResult_OBUF[28]_inst_i_7_n_0\,
      O => \ALUResult_OBUF[28]_inst_i_5_n_0\
    );
\ALUResult_OBUF[28]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \^pc\(4),
      I1 => \^pc\(2),
      I2 => \^pc\(1),
      I3 => \^pc\(6),
      I4 => \^pc\(3),
      I5 => \^pc\(5),
      O => \ALUResult_OBUF[28]_inst_i_6_n_0\
    );
\ALUResult_OBUF[28]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A082A0808082A2A"
    )
        port map (
      I0 => \ALUResult_OBUF[31]_inst_i_11_n_0\,
      I1 => \ALUResult_OBUF[30]_inst_i_10_n_0\,
      I2 => \Result0_carry__6_i_9_n_0\,
      I3 => SrcB(0),
      I4 => \i_alu/aD2M4dsP\(28),
      I5 => \ALUResult_OBUF[5]_inst_i_6_n_0\,
      O => \ALUResult_OBUF[28]_inst_i_7_n_0\
    );
\ALUResult_OBUF[29]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult_OBUF[29]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[29]_inst_i_3_n_0\,
      O => \^q_reg[6]_24\,
      S => \^q_reg[6]_28\
    );
\ALUResult_OBUF[29]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000D000A"
    )
        port map (
      I0 => \^pc\(2),
      I1 => \^pc\(1),
      I2 => \^pc\(5),
      I3 => \^pc\(3),
      I4 => \^pc\(4),
      I5 => \^pc\(6),
      O => \ALUResult_OBUF[29]_inst_i_10_n_0\
    );
\ALUResult_OBUF[29]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E8FFE8F0E80FE800"
    )
        port map (
      I0 => SrcA(29),
      I1 => SrcB(29),
      I2 => \^q_reg[7]_1\,
      I3 => \^q_reg[6]_29\,
      I4 => \ALUResult_OBUF[31]_inst_i_1_0\(28),
      I5 => \ALUResult_OBUF[31]_inst_i_1_1\(28),
      O => \ALUResult_OBUF[29]_inst_i_2_n_0\
    );
\ALUResult_OBUF[29]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"383BCBC8"
    )
        port map (
      I0 => \ALUResult_OBUF[29]_inst_i_5_n_0\,
      I1 => \^q_reg[7]_1\,
      I2 => \^q_reg[6]_29\,
      I3 => SrcA(29),
      I4 => SrcB(29),
      O => \ALUResult_OBUF[29]_inst_i_3_n_0\
    );
\ALUResult_OBUF[29]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(28),
      I1 => \^q_reg[3]_4\,
      I2 => rd10(29),
      O => SrcA(29)
    );
\ALUResult_OBUF[29]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0002"
    )
        port map (
      I0 => \ALUResult_OBUF[31]_inst_i_11_n_0\,
      I1 => \ALUResult_OBUF[29]_inst_i_6_n_0\,
      I2 => \ALUResult_OBUF[30]_inst_i_8_n_0\,
      I3 => \ALUResult_OBUF[29]_inst_i_7_n_0\,
      I4 => \ALUResult_OBUF[29]_inst_i_8_n_0\,
      I5 => \ALUResult_OBUF[29]_inst_i_9_n_0\,
      O => \ALUResult_OBUF[29]_inst_i_5_n_0\
    );
\ALUResult_OBUF[29]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001515555"
    )
        port map (
      I0 => \ALUResult_OBUF[29]_inst_i_10_n_0\,
      I1 => rd20(1),
      I2 => \^q_reg[3]_5\,
      I3 => r15(0),
      I4 => \Result0_carry__0_i_10_n_0\,
      I5 => \ALUResult_OBUF[31]_inst_i_10_n_0\,
      O => \ALUResult_OBUF[29]_inst_i_6_n_0\
    );
\ALUResult_OBUF[29]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000222AAA2A"
    )
        port map (
      I0 => \ALUResult_OBUF[30]_inst_i_9_n_0\,
      I1 => \Result0_carry__0_i_10_n_0\,
      I2 => rd20(29),
      I3 => \^q_reg[3]_5\,
      I4 => r15(28),
      I5 => \^q_reg[6]_0\,
      O => \ALUResult_OBUF[29]_inst_i_7_n_0\
    );
\ALUResult_OBUF[29]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4044400000000000"
    )
        port map (
      I0 => \^q_reg[6]_31\,
      I1 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      I2 => r15(28),
      I3 => \^q_reg[3]_5\,
      I4 => rd20(29),
      I5 => \Result0_carry__0_i_10_n_0\,
      O => \ALUResult_OBUF[29]_inst_i_8_n_0\
    );
\ALUResult_OBUF[29]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8088800000000000"
    )
        port map (
      I0 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      I1 => \ALUResult_OBUF[5]_inst_i_6_n_0\,
      I2 => r15(24),
      I3 => \^q_reg[3]_5\,
      I4 => rd20(25),
      I5 => \Result0_carry__0_i_10_n_0\,
      O => \ALUResult_OBUF[29]_inst_i_9_n_0\
    );
\ALUResult_OBUF[2]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult_OBUF[2]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[2]_inst_i_3_n_0\,
      O => \^q_reg[6]_27\(0),
      S => \^q_reg[6]_28\
    );
\ALUResult_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00FFAAD8D8D8D8"
    )
        port map (
      I0 => \^q_reg[7]_1\,
      I1 => \ALUResult_OBUF[31]_inst_i_1_1\(2),
      I2 => \ALUResult_OBUF[31]_inst_i_1_0\(2),
      I3 => \ALUResult_OBUF[28]_inst_i_1_0\(1),
      I4 => \i_alu/aD2M4dsP\(2),
      I5 => \^q_reg[6]_29\,
      O => \ALUResult_OBUF[2]_inst_i_2_n_0\
    );
\ALUResult_OBUF[2]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F01FF0100F100F1F"
    )
        port map (
      I0 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      I1 => \ALUResult_OBUF[2]_inst_i_6_n_0\,
      I2 => \^q_reg[7]_1\,
      I3 => \^q_reg[6]_29\,
      I4 => \ALUResult_OBUF[28]_inst_i_1_0\(1),
      I5 => \i_alu/aD2M4dsP\(2),
      O => \ALUResult_OBUF[2]_inst_i_3_n_0\
    );
\ALUResult_OBUF[2]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \^pc\(5),
      I1 => \^pc\(3),
      I2 => \^pc\(6),
      I3 => \^pc\(1),
      I4 => \^pc\(2),
      I5 => \^pc\(4),
      O => \ALUResult_OBUF[2]_inst_i_5_n_0\
    );
\ALUResult_OBUF[2]_inst_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"505C"
    )
        port map (
      I0 => SrcB(6),
      I1 => \i_alu/aD2M4dsP\(2),
      I2 => \^q_reg[6]_31\,
      I3 => \^q_reg[6]_0\,
      O => \ALUResult_OBUF[2]_inst_i_6_n_0\
    );
\ALUResult_OBUF[30]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult_OBUF[30]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[30]_inst_i_3_n_0\,
      O => \^q_reg[6]_2\,
      S => \^q_reg[6]_28\
    );
\ALUResult_OBUF[30]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \^pc\(2),
      I1 => \^pc\(4),
      I2 => \^pc\(5),
      I3 => \^pc\(1),
      I4 => \^pc\(6),
      I5 => \^pc\(3),
      O => \ALUResult_OBUF[30]_inst_i_10_n_0\
    );
\ALUResult_OBUF[30]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAAA00D8D8D8D8"
    )
        port map (
      I0 => \^q_reg[7]_1\,
      I1 => \ALUResult_OBUF[31]_inst_i_1_1\(29),
      I2 => \ALUResult_OBUF[31]_inst_i_1_0\(29),
      I3 => SrcB(30),
      I4 => SrcA(30),
      I5 => \^q_reg[6]_29\,
      O => \ALUResult_OBUF[30]_inst_i_2_n_0\
    );
\ALUResult_OBUF[30]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"383BCBC8"
    )
        port map (
      I0 => \ALUResult_OBUF[30]_inst_i_5_n_0\,
      I1 => \^q_reg[7]_1\,
      I2 => \^q_reg[6]_29\,
      I3 => SrcA(30),
      I4 => SrcB(30),
      O => \ALUResult_OBUF[30]_inst_i_3_n_0\
    );
\ALUResult_OBUF[30]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(29),
      I1 => \^q_reg[3]_1\,
      I2 => rd10(30),
      O => SrcA(30)
    );
\ALUResult_OBUF[30]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAAABABAAAAAAAA"
    )
        port map (
      I0 => \ALUResult_OBUF[30]_inst_i_6_n_0\,
      I1 => \ALUResult_OBUF[30]_inst_i_7_n_0\,
      I2 => \ALUResult_OBUF[30]_inst_i_8_n_0\,
      I3 => \ALUResult_OBUF[31]_inst_i_10_n_0\,
      I4 => \i_alu/aD2M4dsP\(2),
      I5 => \ALUResult_OBUF[31]_inst_i_11_n_0\,
      O => \ALUResult_OBUF[30]_inst_i_5_n_0\
    );
\ALUResult_OBUF[30]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEAAAEA00000000"
    )
        port map (
      I0 => \Result0_carry__0_i_12_n_0\,
      I1 => \Result0_carry__0_i_10_n_0\,
      I2 => rd20(26),
      I3 => \^q_reg[3]_5\,
      I4 => r15(25),
      I5 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      O => \ALUResult_OBUF[30]_inst_i_6_n_0\
    );
\ALUResult_OBUF[30]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000222AAA2A"
    )
        port map (
      I0 => \ALUResult_OBUF[30]_inst_i_9_n_0\,
      I1 => \Result0_carry__0_i_10_n_0\,
      I2 => rd20(30),
      I3 => \^q_reg[3]_5\,
      I4 => r15(29),
      I5 => \^q_reg[6]_0\,
      O => \ALUResult_OBUF[30]_inst_i_7_n_0\
    );
\ALUResult_OBUF[30]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202022222220222"
    )
        port map (
      I0 => \ALUResult_OBUF[30]_inst_i_10_n_0\,
      I1 => \^q_reg[6]_0\,
      I2 => \Result0_carry__0_i_10_n_0\,
      I3 => rd20(31),
      I4 => \^q_reg[3]_5\,
      I5 => r15(30),
      O => \ALUResult_OBUF[30]_inst_i_8_n_0\
    );
\ALUResult_OBUF[30]_inst_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \^pc\(3),
      I1 => \^pc\(6),
      I2 => \^pc\(5),
      I3 => \^pc\(4),
      O => \ALUResult_OBUF[30]_inst_i_9_n_0\
    );
\ALUResult_OBUF[31]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult_OBUF[31]_inst_i_3_n_0\,
      I1 => \ALUResult_OBUF[31]_inst_i_4_n_0\,
      O => \^q_reg[6]_1\,
      S => \^q_reg[6]_28\
    );
\ALUResult_OBUF[31]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFEEFFFFFFFF"
    )
        port map (
      I0 => \^pc\(5),
      I1 => \^pc\(6),
      I2 => \^pc\(2),
      I3 => \^pc\(4),
      I4 => \^pc\(1),
      I5 => \^pc\(3),
      O => \ALUResult_OBUF[31]_inst_i_10_n_0\
    );
\ALUResult_OBUF[31]_inst_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \^pc\(4),
      I1 => \^pc\(1),
      I2 => \^pc\(6),
      I3 => \^pc\(3),
      I4 => \^pc\(5),
      O => \ALUResult_OBUF[31]_inst_i_11_n_0\
    );
\ALUResult_OBUF[31]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101222203030123"
    )
        port map (
      I0 => \^pc\(5),
      I1 => \^pc\(6),
      I2 => \^pc\(4),
      I3 => \^pc\(1),
      I4 => \^pc\(3),
      I5 => \^pc\(2),
      O => \^q_reg[6]_28\
    );
\ALUResult_OBUF[31]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00FFAAD8D8D8D8"
    )
        port map (
      I0 => \^q_reg[7]_1\,
      I1 => \ALUResult_OBUF[31]_inst_i_1_1\(30),
      I2 => \ALUResult_OBUF[31]_inst_i_1_0\(30),
      I3 => \ALUResult_OBUF[31]_inst_i_5_n_0\,
      I4 => \Result0_carry__6_i_9_n_0\,
      I5 => \^q_reg[6]_29\,
      O => \ALUResult_OBUF[31]_inst_i_3_n_0\
    );
\ALUResult_OBUF[31]_inst_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CBC8383B"
    )
        port map (
      I0 => \ALUResult_OBUF[31]_inst_i_7_n_0\,
      I1 => \^q_reg[7]_1\,
      I2 => \^q_reg[6]_29\,
      I3 => \ALUResult_OBUF[31]_inst_i_5_n_0\,
      I4 => \Result0_carry__6_i_9_n_0\,
      O => \ALUResult_OBUF[31]_inst_i_4_n_0\
    );
\ALUResult_OBUF[31]_inst_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(30),
      I1 => \^q_reg[3]_1\,
      I2 => rd10(31),
      O => \ALUResult_OBUF[31]_inst_i_5_n_0\
    );
\ALUResult_OBUF[31]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF88B00101"
    )
        port map (
      I0 => \^pc\(5),
      I1 => \^pc\(3),
      I2 => \^pc\(2),
      I3 => \^pc\(1),
      I4 => \^pc\(4),
      I5 => \^pc\(6),
      O => \^q_reg[6]_29\
    );
\ALUResult_OBUF[31]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEEEFFFEEEEEEEE"
    )
        port map (
      I0 => \ALUResult_OBUF[31]_inst_i_8_n_0\,
      I1 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      I2 => \Result0_carry__6_i_9_n_0\,
      I3 => \ALUResult_OBUF[31]_inst_i_10_n_0\,
      I4 => \i_alu/aD2M4dsP\(3),
      I5 => \ALUResult_OBUF[31]_inst_i_11_n_0\,
      O => \ALUResult_OBUF[31]_inst_i_7_n_0\
    );
\ALUResult_OBUF[31]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4044400000000000"
    )
        port map (
      I0 => \^q_reg[6]_31\,
      I1 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      I2 => r15(30),
      I3 => \^q_reg[3]_5\,
      I4 => rd20(31),
      I5 => \Result0_carry__0_i_10_n_0\,
      O => \ALUResult_OBUF[31]_inst_i_8_n_0\
    );
\ALUResult_OBUF[31]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880008000000000"
    )
        port map (
      I0 => \^q_reg[6]_31\,
      I1 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      I2 => rd20(27),
      I3 => \^q_reg[3]_5\,
      I4 => r15(26),
      I5 => \Result0_carry__0_i_10_n_0\,
      O => \ALUResult_OBUF[31]_inst_i_9_n_0\
    );
\ALUResult_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \ALUResult_OBUF[3]_inst_i_2_n_0\,
      I1 => \^q_reg[6]_28\,
      I2 => \ALUResult_OBUF[3]_inst_i_3_n_0\,
      O => \^q_reg[6]_27\(1)
    );
\ALUResult_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00FFAAD8D8D8D8"
    )
        port map (
      I0 => \^q_reg[7]_1\,
      I1 => \ALUResult_OBUF[31]_inst_i_1_1\(3),
      I2 => \ALUResult_OBUF[31]_inst_i_1_0\(3),
      I3 => \ALUResult_OBUF[28]_inst_i_1_0\(2),
      I4 => \i_alu/aD2M4dsP\(3),
      I5 => \^q_reg[6]_29\,
      O => \ALUResult_OBUF[3]_inst_i_2_n_0\
    );
\ALUResult_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD55DD55DD55D"
    )
        port map (
      I0 => \ALUResult_OBUF[27]_inst_i_5_n_0\,
      I1 => \ALUResult_OBUF[23]_inst_i_5_n_0\,
      I2 => \ALUResult_OBUF[28]_inst_i_1_0\(2),
      I3 => \i_alu/aD2M4dsP\(3),
      I4 => \ALUResult_OBUF[3]_inst_i_5_n_0\,
      I5 => \ALUResult_OBUF[23]_inst_i_7_n_0\,
      O => \ALUResult_OBUF[3]_inst_i_3_n_0\
    );
\ALUResult_OBUF[3]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAFBBBB"
    )
        port map (
      I0 => \Result0_carry__0_i_12_n_0\,
      I1 => \i_alu/aD2M4dsP\(3),
      I2 => \^q_reg[3]_3\(0),
      I3 => \^q_reg[6]_0\,
      I4 => \^q_reg[6]_31\,
      I5 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      O => \ALUResult_OBUF[3]_inst_i_5_n_0\
    );
\ALUResult_OBUF[4]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult_OBUF[4]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[4]_inst_i_3_n_0\,
      O => \^q_reg[6]_27\(2),
      S => \^q_reg[6]_28\
    );
\ALUResult_OBUF[4]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D4FFD4F0D40FD400"
    )
        port map (
      I0 => \i_alu/aD2M4dsP\(4),
      I1 => \ALUResult_OBUF[28]_inst_i_1_0\(3),
      I2 => \^q_reg[7]_1\,
      I3 => \^q_reg[6]_29\,
      I4 => \ALUResult_OBUF[31]_inst_i_1_0\(4),
      I5 => \ALUResult_OBUF[31]_inst_i_1_1\(4),
      O => \ALUResult_OBUF[4]_inst_i_2_n_0\
    );
\ALUResult_OBUF[4]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CB38C83B"
    )
        port map (
      I0 => \ALUResult_OBUF[4]_inst_i_5_n_0\,
      I1 => \^q_reg[7]_1\,
      I2 => \^q_reg[6]_29\,
      I3 => \i_alu/aD2M4dsP\(4),
      I4 => \ALUResult_OBUF[28]_inst_i_1_0\(3),
      O => \ALUResult_OBUF[4]_inst_i_3_n_0\
    );
\ALUResult_OBUF[4]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCC0F55"
    )
        port map (
      I0 => \ALUResult_OBUF[8]_inst_i_7_n_0\,
      I1 => SrcB(0),
      I2 => \i_alu/aD2M4dsP\(8),
      I3 => \^q_reg[6]_31\,
      I4 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      O => \ALUResult_OBUF[4]_inst_i_5_n_0\
    );
\ALUResult_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \ALUResult_OBUF[5]_inst_i_2_n_0\,
      I1 => \^q_reg[6]_28\,
      I2 => \ALUResult_OBUF[5]_inst_i_3_n_0\,
      O => \^q_reg[6]_27\(3)
    );
\ALUResult_OBUF[5]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E8FFE8F0E80FE800"
    )
        port map (
      I0 => \ALUResult_OBUF[28]_inst_i_1_0\(4),
      I1 => SrcB(5),
      I2 => \^q_reg[7]_1\,
      I3 => \^q_reg[6]_29\,
      I4 => \ALUResult_OBUF[31]_inst_i_1_0\(5),
      I5 => \ALUResult_OBUF[31]_inst_i_1_1\(5),
      O => \ALUResult_OBUF[5]_inst_i_2_n_0\
    );
\ALUResult_OBUF[5]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF5DD55DD55DD5"
    )
        port map (
      I0 => \ALUResult_OBUF[27]_inst_i_5_n_0\,
      I1 => \ALUResult_OBUF[23]_inst_i_5_n_0\,
      I2 => \ALUResult_OBUF[28]_inst_i_1_0\(4),
      I3 => SrcB(5),
      I4 => \ALUResult_OBUF[5]_inst_i_5_n_0\,
      I5 => \ALUResult_OBUF[23]_inst_i_7_n_0\,
      O => \ALUResult_OBUF[5]_inst_i_3_n_0\
    );
\ALUResult_OBUF[5]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A80"
    )
        port map (
      I0 => \Result0_carry__0_i_10_n_0\,
      I1 => r15(4),
      I2 => \^q_reg[3]_5\,
      I3 => rd20(5),
      O => SrcB(5)
    );
\ALUResult_OBUF[5]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7474777777747774"
    )
        port map (
      I0 => \i_alu/aD2M4dsP\(1),
      I1 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      I2 => \Result0_carry__0_i_12_n_0\,
      I3 => SrcB(5),
      I4 => \i_alu/aD2M4dsP\(9),
      I5 => \ALUResult_OBUF[5]_inst_i_6_n_0\,
      O => \ALUResult_OBUF[5]_inst_i_5_n_0\
    );
\ALUResult_OBUF[5]_inst_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \^pc\(3),
      I1 => \^pc\(4),
      I2 => \^pc\(6),
      I3 => \^pc\(5),
      O => \ALUResult_OBUF[5]_inst_i_6_n_0\
    );
\ALUResult_OBUF[6]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult_OBUF[6]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[6]_inst_i_3_n_0\,
      O => \^q_reg[6]_27\(4),
      S => \^q_reg[6]_28\
    );
\ALUResult_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E8FFE8F0E80FE800"
    )
        port map (
      I0 => \ALUResult_OBUF[28]_inst_i_1_0\(5),
      I1 => SrcB(6),
      I2 => \^q_reg[7]_1\,
      I3 => \^q_reg[6]_29\,
      I4 => \ALUResult_OBUF[31]_inst_i_1_0\(6),
      I5 => \ALUResult_OBUF[31]_inst_i_1_1\(6),
      O => \ALUResult_OBUF[6]_inst_i_2_n_0\
    );
\ALUResult_OBUF[6]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"383BCBC8"
    )
        port map (
      I0 => \ALUResult_OBUF[6]_inst_i_5_n_0\,
      I1 => \^q_reg[7]_1\,
      I2 => \^q_reg[6]_29\,
      I3 => \ALUResult_OBUF[28]_inst_i_1_0\(5),
      I4 => SrcB(6),
      O => \ALUResult_OBUF[6]_inst_i_3_n_0\
    );
\ALUResult_OBUF[6]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A80"
    )
        port map (
      I0 => \Result0_carry__0_i_10_n_0\,
      I1 => r15(5),
      I2 => \^q_reg[3]_5\,
      I3 => rd20(6),
      O => SrcB(6)
    );
\ALUResult_OBUF[6]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFF2D0F2D0"
    )
        port map (
      I0 => \^q_reg[6]_31\,
      I1 => \^q_reg[6]_0\,
      I2 => SrcB(6),
      I3 => \ALUResult_OBUF[10]_inst_i_6_n_0\,
      I4 => \i_alu/aD2M4dsP\(2),
      I5 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      O => \ALUResult_OBUF[6]_inst_i_5_n_0\
    );
\ALUResult_OBUF[7]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD55DD55DD55D"
    )
        port map (
      I0 => \ALUResult_OBUF[27]_inst_i_5_n_0\,
      I1 => \ALUResult_OBUF[23]_inst_i_5_n_0\,
      I2 => \ALUResult_OBUF[28]_inst_i_1_0\(6),
      I3 => \^q_reg[3]_3\(0),
      I4 => \ALUResult_OBUF[7]_inst_i_5_n_0\,
      I5 => \ALUResult_OBUF[23]_inst_i_7_n_0\,
      O => \q_reg[6]_33\
    );
\ALUResult_OBUF[7]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFE4E4"
    )
        port map (
      I0 => \^q_reg[6]_31\,
      I1 => \ALUResult_OBUF[7]_inst_i_6_n_0\,
      I2 => \ALUResult_OBUF[11]_inst_i_6_n_0\,
      I3 => \i_alu/aD2M4dsP\(3),
      I4 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      O => \ALUResult_OBUF[7]_inst_i_5_n_0\
    );
\ALUResult_OBUF[7]_inst_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A80"
    )
        port map (
      I0 => \Result0_carry__0_i_10_n_0\,
      I1 => r15(6),
      I2 => \^q_reg[3]_5\,
      I3 => rd20(7),
      O => \ALUResult_OBUF[7]_inst_i_6_n_0\
    );
\ALUResult_OBUF[8]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult_OBUF[8]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[8]_inst_i_3_n_0\,
      O => \^q_reg[6]_7\,
      S => \^q_reg[6]_28\
    );
\ALUResult_OBUF[8]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00FFAAD8D8D8D8"
    )
        port map (
      I0 => \^q_reg[7]_1\,
      I1 => \ALUResult_OBUF[31]_inst_i_1_1\(7),
      I2 => \ALUResult_OBUF[31]_inst_i_1_0\(7),
      I3 => \ALUResult_OBUF[28]_inst_i_1_0\(7),
      I4 => \i_alu/aD2M4dsP\(8),
      I5 => \^q_reg[6]_29\,
      O => \ALUResult_OBUF[8]_inst_i_2_n_0\
    );
\ALUResult_OBUF[8]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CB38C83B"
    )
        port map (
      I0 => \ALUResult_OBUF[8]_inst_i_5_n_0\,
      I1 => \^q_reg[7]_1\,
      I2 => \^q_reg[6]_29\,
      I3 => \i_alu/aD2M4dsP\(8),
      I4 => \ALUResult_OBUF[28]_inst_i_1_0\(7),
      O => \ALUResult_OBUF[8]_inst_i_3_n_0\
    );
\ALUResult_OBUF[8]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3300F0AA"
    )
        port map (
      I0 => \ALUResult_OBUF[8]_inst_i_6_n_0\,
      I1 => \ALUResult_OBUF[8]_inst_i_7_n_0\,
      I2 => SrcB(12),
      I3 => \^q_reg[6]_31\,
      I4 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      O => \ALUResult_OBUF[8]_inst_i_5_n_0\
    );
\ALUResult_OBUF[8]_inst_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A80"
    )
        port map (
      I0 => \Result0_carry__0_i_10_n_0\,
      I1 => r15(7),
      I2 => \^q_reg[3]_5\,
      I3 => rd20(8),
      O => \ALUResult_OBUF[8]_inst_i_6_n_0\
    );
\ALUResult_OBUF[8]_inst_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DFF"
    )
        port map (
      I0 => rd20(4),
      I1 => \^q_reg[3]_5\,
      I2 => r15(3),
      I3 => \Result0_carry__0_i_10_n_0\,
      O => \ALUResult_OBUF[8]_inst_i_7_n_0\
    );
\ALUResult_OBUF[9]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \ALUResult_OBUF[9]_inst_i_2_n_0\,
      I1 => \^q_reg[6]_28\,
      I2 => \ALUResult_OBUF[9]_inst_i_3_n_0\,
      O => \^q_reg[6]_4\
    );
\ALUResult_OBUF[9]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00FFAAD8D8D8D8"
    )
        port map (
      I0 => \^q_reg[7]_1\,
      I1 => \ALUResult_OBUF[31]_inst_i_1_1\(8),
      I2 => \ALUResult_OBUF[31]_inst_i_1_0\(8),
      I3 => \ALUResult_OBUF[28]_inst_i_1_0\(8),
      I4 => \i_alu/aD2M4dsP\(9),
      I5 => \^q_reg[6]_29\,
      O => \ALUResult_OBUF[9]_inst_i_2_n_0\
    );
\ALUResult_OBUF[9]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD55DD55DD55D"
    )
        port map (
      I0 => \ALUResult_OBUF[27]_inst_i_5_n_0\,
      I1 => \ALUResult_OBUF[23]_inst_i_5_n_0\,
      I2 => \ALUResult_OBUF[28]_inst_i_1_0\(8),
      I3 => \i_alu/aD2M4dsP\(9),
      I4 => \ALUResult_OBUF[9]_inst_i_5_n_0\,
      I5 => \ALUResult_OBUF[23]_inst_i_7_n_0\,
      O => \ALUResult_OBUF[9]_inst_i_3_n_0\
    );
\ALUResult_OBUF[9]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222222FF2F2F"
    )
        port map (
      I0 => \ALUResult_OBUF[9]_inst_i_6_n_0\,
      I1 => \ALUResult_OBUF[9]_inst_i_7_n_0\,
      I2 => \ALUResult_OBUF[9]_inst_i_8_n_0\,
      I3 => \i_alu/aD2M4dsP\(13),
      I4 => \^q_reg[6]_31\,
      I5 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      O => \ALUResult_OBUF[9]_inst_i_5_n_0\
    );
\ALUResult_OBUF[9]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDCBDFFFFFFFF"
    )
        port map (
      I0 => \^pc\(2),
      I1 => \^pc\(4),
      I2 => \^pc\(5),
      I3 => \^pc\(1),
      I4 => \^pc\(6),
      I5 => \^pc\(3),
      O => \ALUResult_OBUF[9]_inst_i_6_n_0\
    );
\ALUResult_OBUF[9]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBFFFBFFFFFFFFF"
    )
        port map (
      I0 => \^q_reg[6]_0\,
      I1 => \^q_reg[6]_31\,
      I2 => rd20(5),
      I3 => \^q_reg[3]_5\,
      I4 => r15(4),
      I5 => \Result0_carry__0_i_10_n_0\,
      O => \ALUResult_OBUF[9]_inst_i_7_n_0\
    );
\ALUResult_OBUF[9]_inst_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47FF"
    )
        port map (
      I0 => r15(8),
      I1 => \^q_reg[3]_5\,
      I2 => rd20(9),
      I3 => \Result0_carry__0_i_10_n_0\,
      O => \ALUResult_OBUF[9]_inst_i_8_n_0\
    );
\Instr_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004434B2B0"
    )
        port map (
      I0 => \^pc\(5),
      I1 => \^pc\(3),
      I2 => \^pc\(2),
      I3 => \^pc\(1),
      I4 => \^pc\(4),
      I5 => \^pc\(6),
      O => \^instr_obuf\(0)
    );
\Instr_OBUF[11]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020020000000000"
    )
        port map (
      I0 => \^pc\(5),
      I1 => \^pc\(6),
      I2 => \^pc\(2),
      I3 => \^pc\(4),
      I4 => \^pc\(1),
      I5 => \^pc\(3),
      O => \^q_reg[6]_0\
    );
\Instr_OBUF[12]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000049113834"
    )
        port map (
      I0 => \^pc\(3),
      I1 => \^pc\(2),
      I2 => \^pc\(4),
      I3 => \^pc\(5),
      I4 => \^pc\(1),
      I5 => \^pc\(6),
      O => \^instr_obuf\(6)
    );
\Instr_OBUF[13]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400054045541404"
    )
        port map (
      I0 => \^pc\(6),
      I1 => \^pc\(3),
      I2 => \^pc\(4),
      I3 => \^pc\(1),
      I4 => \^pc\(2),
      I5 => \^pc\(5),
      O => \^instr_obuf\(7)
    );
\Instr_OBUF[14]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004826A820"
    )
        port map (
      I0 => \^pc\(4),
      I1 => \^pc\(1),
      I2 => \^pc\(3),
      I3 => \^pc\(2),
      I4 => \^pc\(5),
      I5 => \^pc\(6),
      O => \^instr_obuf\(8)
    );
\Instr_OBUF[15]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044044040400440"
    )
        port map (
      I0 => \^pc\(6),
      I1 => \^pc\(5),
      I2 => \^pc\(2),
      I3 => \^pc\(4),
      I4 => \^pc\(1),
      I5 => \^pc\(3),
      O => \^instr_obuf\(9)
    );
\Instr_OBUF[16]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000402400002080"
    )
        port map (
      I0 => \^pc\(4),
      I1 => \^pc\(5),
      I2 => \^pc\(3),
      I3 => \^pc\(2),
      I4 => \^pc\(6),
      I5 => \^pc\(1),
      O => \^instr_obuf\(10)
    );
\Instr_OBUF[17]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000040400040000"
    )
        port map (
      I0 => \^pc\(6),
      I1 => \^pc\(4),
      I2 => \^pc\(1),
      I3 => \^pc\(3),
      I4 => \^pc\(2),
      I5 => \^pc\(5),
      O => \^instr_obuf\(11)
    );
\Instr_OBUF[18]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000440004100400"
    )
        port map (
      I0 => \^pc\(6),
      I1 => \^pc\(4),
      I2 => \^pc\(1),
      I3 => \^pc\(3),
      I4 => \^pc\(5),
      I5 => \^pc\(2),
      O => \^instr_obuf\(12)
    );
\Instr_OBUF[19]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400040000000A00"
    )
        port map (
      I0 => \^pc\(4),
      I1 => \^pc\(3),
      I2 => \^pc\(6),
      I3 => \^pc\(5),
      I4 => \^pc\(1),
      I5 => \^pc\(2),
      O => \^instr_obuf\(13)
    );
\Instr_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000148F8F9A"
    )
        port map (
      I0 => \^pc\(2),
      I1 => \^pc\(1),
      I2 => \^pc\(5),
      I3 => \^pc\(3),
      I4 => \^pc\(4),
      I5 => \^pc\(6),
      O => \^instr_obuf\(1)
    );
\Instr_OBUF[20]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000441810A0"
    )
        port map (
      I0 => \^pc\(4),
      I1 => \^pc\(3),
      I2 => \^pc\(1),
      I3 => \^pc\(2),
      I4 => \^pc\(5),
      I5 => \^pc\(6),
      O => \^instr_obuf\(14)
    );
\Instr_OBUF[21]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000202AED6F"
    )
        port map (
      I0 => \^pc\(5),
      I1 => \^pc\(3),
      I2 => \^pc\(2),
      I3 => \^pc\(1),
      I4 => \^pc\(4),
      I5 => \^pc\(6),
      O => \^instr_obuf\(15)
    );
\Instr_OBUF[22]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040041004004010"
    )
        port map (
      I0 => \^pc\(6),
      I1 => \^pc\(3),
      I2 => \^pc\(1),
      I3 => \^pc\(4),
      I4 => \^pc\(2),
      I5 => \^pc\(5),
      O => \^instr_obuf\(16)
    );
\Instr_OBUF[23]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1333131310133133"
    )
        port map (
      I0 => \^pc\(4),
      I1 => \^pc\(6),
      I2 => \^pc\(3),
      I3 => \^pc\(5),
      I4 => \^pc\(1),
      I5 => \^pc\(2),
      O => \^instr_obuf\(17)
    );
\Instr_OBUF[24]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000033BF79F"
    )
        port map (
      I0 => \^pc\(1),
      I1 => \^pc\(4),
      I2 => \^pc\(5),
      I3 => \^pc\(2),
      I4 => \^pc\(3),
      I5 => \^pc\(6),
      O => \^instr_obuf\(18)
    );
\Instr_OBUF[25]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000024405819"
    )
        port map (
      I0 => \^pc\(3),
      I1 => \^pc\(4),
      I2 => \^pc\(1),
      I3 => \^pc\(5),
      I4 => \^pc\(2),
      I5 => \^pc\(6),
      O => \^instr_obuf\(19)
    );
\Instr_OBUF[26]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010100"
    )
        port map (
      I0 => \^pc\(6),
      I1 => \^pc\(3),
      I2 => \^pc\(5),
      I3 => \^pc\(2),
      I4 => \^pc\(4),
      O => \^q_reg[7]_0\
    );
\Instr_OBUF[27]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000148000000000"
    )
        port map (
      I0 => \^pc\(2),
      I1 => \^pc\(3),
      I2 => \^pc\(1),
      I3 => \^pc\(4),
      I4 => \^pc\(6),
      I5 => \^pc\(5),
      O => \^q_reg[3]_1\
    );
\Instr_OBUF[28]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000400000"
    )
        port map (
      I0 => \^pc\(6),
      I1 => \^pc\(1),
      I2 => \^pc\(2),
      I3 => \^pc\(3),
      I4 => \^pc\(5),
      I5 => \^pc\(4),
      O => \^instr_obuf\(20)
    );
\Instr_OBUF[29]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0551155515511555"
    )
        port map (
      I0 => \^pc\(6),
      I1 => \^pc\(2),
      I2 => \^pc\(4),
      I3 => \^pc\(3),
      I4 => \^pc\(5),
      I5 => \^pc\(1),
      O => \^instr_obuf\(21)
    );
\Instr_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000228095E6"
    )
        port map (
      I0 => \^pc\(2),
      I1 => \^pc\(5),
      I2 => \^pc\(1),
      I3 => \^pc\(4),
      I4 => \^pc\(3),
      I5 => \^pc\(6),
      O => \^instr_obuf\(2)
    );
\Instr_OBUF[30]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0555155515551555"
    )
        port map (
      I0 => \^pc\(6),
      I1 => \^pc\(2),
      I2 => \^pc\(4),
      I3 => \^pc\(3),
      I4 => \^pc\(5),
      I5 => \^pc\(1),
      O => \^instr_obuf\(22)
    );
\Instr_OBUF[31]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0015550515555555"
    )
        port map (
      I0 => \^pc\(6),
      I1 => \^pc\(1),
      I2 => \^pc\(5),
      I3 => \^pc\(4),
      I4 => \^pc\(3),
      I5 => \^pc\(2),
      O => \^instr_obuf\(23)
    );
\Instr_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0201012000010100"
    )
        port map (
      I0 => \^pc\(5),
      I1 => \^pc\(6),
      I2 => \^pc\(3),
      I3 => \^pc\(4),
      I4 => \^pc\(2),
      I5 => \^pc\(1),
      O => \^instr_obuf\(3)
    );
\Instr_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040040000400040"
    )
        port map (
      I0 => \^pc\(6),
      I1 => \^pc\(3),
      I2 => \^pc\(2),
      I3 => \^pc\(4),
      I4 => \^pc\(1),
      I5 => \^pc\(5),
      O => \^instr_obuf\(4)
    );
\Instr_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000202002000020"
    )
        port map (
      I0 => \^pc\(3),
      I1 => \^pc\(6),
      I2 => \^pc\(1),
      I3 => \^pc\(5),
      I4 => \^pc\(4),
      I5 => \^pc\(2),
      O => \^instr_obuf\(5)
    );
\Instr_OBUF[9]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000080C040404"
    )
        port map (
      I0 => \^pc\(5),
      I1 => \^pc\(3),
      I2 => \^pc\(6),
      I3 => \^pc\(1),
      I4 => \^pc\(2),
      I5 => \^pc\(4),
      O => \^q_reg[6]_31\
    );
\Result0_carry__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFDBFBB540"
    )
        port map (
      I0 => \^pc\(1),
      I1 => \^pc\(4),
      I2 => \^pc\(2),
      I3 => \^pc\(5),
      I4 => \^pc\(3),
      I5 => \^pc\(6),
      O => \Result0_carry__0_i_10_n_0\
    );
\Result0_carry__0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000757F"
    )
        port map (
      I0 => \Result0_carry__0_i_10_n_0\,
      I1 => r15(3),
      I2 => \^q_reg[3]_5\,
      I3 => rd20(4),
      I4 => \Result0_carry__0_i_12_n_0\,
      O => \i_alu/aD2M4dsP\(4)
    );
\Result0_carry__0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \^pc\(5),
      I1 => \^pc\(3),
      I2 => \^pc\(2),
      I3 => \^pc\(1),
      I4 => \^pc\(4),
      I5 => \^pc\(6),
      O => \Result0_carry__0_i_12_n_0\
    );
\Result0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E21D"
    )
        port map (
      I0 => rd10(7),
      I1 => \^q_reg[3]_4\,
      I2 => r15(6),
      I3 => \^q_reg[3]_3\(0),
      O => \q_reg[3]_6\(3)
    );
\Result0_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111E22D2EEEE2222"
    )
        port map (
      I0 => rd10(6),
      I1 => \^q_reg[3]_4\,
      I2 => rd20(6),
      I3 => \^q_reg[3]_5\,
      I4 => r15(5),
      I5 => \Result0_carry__0_i_10_n_0\,
      O => \q_reg[3]_6\(2)
    );
\Result0_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111E22D2EEEE2222"
    )
        port map (
      I0 => rd10(5),
      I1 => \^q_reg[3]_4\,
      I2 => rd20(5),
      I3 => \^q_reg[3]_5\,
      I4 => r15(4),
      I5 => \Result0_carry__0_i_10_n_0\,
      O => \q_reg[3]_6\(1)
    );
\Result0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E21D"
    )
        port map (
      I0 => rd10(4),
      I1 => \^q_reg[3]_4\,
      I2 => r15(3),
      I3 => \i_alu/aD2M4dsP\(4),
      O => \q_reg[3]_6\(0)
    );
\Result0_carry__0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001DFF"
    )
        port map (
      I0 => rd20(7),
      I1 => \^q_reg[3]_5\,
      I2 => r15(6),
      I3 => \Result0_carry__0_i_10_n_0\,
      I4 => \^q_reg[6]_0\,
      O => \^q_reg[3]_3\(0)
    );
\Result0_carry__1_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001DFF"
    )
        port map (
      I0 => rd20(10),
      I1 => \^q_reg[3]_5\,
      I2 => r15(9),
      I3 => \Result0_carry__0_i_10_n_0\,
      I4 => \^q_reg[6]_0\,
      O => \i_alu/aD2M4dsP\(10)
    );
\Result0_carry__1_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000057F7"
    )
        port map (
      I0 => \Result0_carry__0_i_10_n_0\,
      I1 => rd20(9),
      I2 => \^q_reg[3]_5\,
      I3 => r15(8),
      I4 => \^q_reg[6]_0\,
      O => \i_alu/aD2M4dsP\(9)
    );
\Result0_carry__1_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001DFF"
    )
        port map (
      I0 => rd20(8),
      I1 => \^q_reg[3]_5\,
      I2 => r15(7),
      I3 => \Result0_carry__0_i_10_n_0\,
      I4 => \^q_reg[6]_0\,
      O => \i_alu/aD2M4dsP\(8)
    );
\Result0_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E21D"
    )
        port map (
      I0 => rd10(11),
      I1 => \^q_reg[3]_1\,
      I2 => r15(10),
      I3 => \i_alu/aD2M4dsP\(11),
      O => \q_reg[3]_8\(3)
    );
\Result0_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E21D"
    )
        port map (
      I0 => rd10(10),
      I1 => \^q_reg[3]_1\,
      I2 => r15(9),
      I3 => \i_alu/aD2M4dsP\(10),
      O => \q_reg[3]_8\(2)
    );
\Result0_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E21D"
    )
        port map (
      I0 => rd10(9),
      I1 => \^q_reg[3]_1\,
      I2 => r15(8),
      I3 => \i_alu/aD2M4dsP\(9),
      O => \q_reg[3]_8\(1)
    );
\Result0_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E21D"
    )
        port map (
      I0 => rd10(8),
      I1 => \^q_reg[3]_1\,
      I2 => r15(7),
      I3 => \i_alu/aD2M4dsP\(8),
      O => \q_reg[3]_8\(0)
    );
\Result0_carry__1_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001DFF"
    )
        port map (
      I0 => rd20(11),
      I1 => \^q_reg[3]_5\,
      I2 => r15(10),
      I3 => \Result0_carry__0_i_10_n_0\,
      I4 => \^q_reg[6]_0\,
      O => \i_alu/aD2M4dsP\(11)
    );
\Result0_carry__2_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001DFF"
    )
        port map (
      I0 => rd20(14),
      I1 => \^q_reg[3]_5\,
      I2 => r15(13),
      I3 => \Result0_carry__0_i_10_n_0\,
      I4 => \^q_reg[6]_0\,
      O => \i_alu/aD2M4dsP\(14)
    );
\Result0_carry__2_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001DFF"
    )
        port map (
      I0 => rd20(13),
      I1 => \^q_reg[3]_5\,
      I2 => r15(12),
      I3 => \Result0_carry__0_i_10_n_0\,
      I4 => \^q_reg[6]_0\,
      O => \i_alu/aD2M4dsP\(13)
    );
\Result0_carry__2_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAEAAAA"
    )
        port map (
      I0 => \^q_reg[6]_0\,
      I1 => rd20(12),
      I2 => \^q_reg[3]_5\,
      I3 => r15(11),
      I4 => \Result0_carry__0_i_10_n_0\,
      O => SrcB(12)
    );
\Result0_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E21D"
    )
        port map (
      I0 => rd10(15),
      I1 => \^q_reg[3]_1\,
      I2 => r15(14),
      I3 => \i_alu/aD2M4dsP\(15),
      O => \q_reg[3]_10\(3)
    );
\Result0_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E21D"
    )
        port map (
      I0 => rd10(14),
      I1 => \^q_reg[3]_1\,
      I2 => r15(13),
      I3 => \i_alu/aD2M4dsP\(14),
      O => \q_reg[3]_10\(2)
    );
\Result0_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E21D"
    )
        port map (
      I0 => rd10(13),
      I1 => \^q_reg[3]_1\,
      I2 => r15(12),
      I3 => \i_alu/aD2M4dsP\(13),
      O => \q_reg[3]_10\(1)
    );
\Result0_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => r15(11),
      I1 => \^q_reg[3]_1\,
      I2 => rd10(12),
      I3 => SrcB(12),
      O => \q_reg[3]_10\(0)
    );
\Result0_carry__2_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001DFF"
    )
        port map (
      I0 => rd20(15),
      I1 => \^q_reg[3]_5\,
      I2 => r15(14),
      I3 => \Result0_carry__0_i_10_n_0\,
      I4 => \^q_reg[6]_0\,
      O => \i_alu/aD2M4dsP\(15)
    );
\Result0_carry__3_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001DFF"
    )
        port map (
      I0 => rd20(18),
      I1 => \^q_reg[3]_5\,
      I2 => r15(17),
      I3 => \Result0_carry__0_i_10_n_0\,
      I4 => \^q_reg[6]_0\,
      O => \i_alu/aD2M4dsP\(18)
    );
\Result0_carry__3_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001DFF"
    )
        port map (
      I0 => rd20(17),
      I1 => \^q_reg[3]_5\,
      I2 => r15(16),
      I3 => \Result0_carry__0_i_10_n_0\,
      I4 => \^q_reg[6]_0\,
      O => \i_alu/aD2M4dsP\(17)
    );
\Result0_carry__3_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFE200"
    )
        port map (
      I0 => rd20(16),
      I1 => \^q_reg[3]_5\,
      I2 => r15(15),
      I3 => \Result0_carry__0_i_10_n_0\,
      I4 => \^q_reg[6]_0\,
      O => SrcB(16)
    );
\Result0_carry__3_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E21D"
    )
        port map (
      I0 => rd10(19),
      I1 => \^q_reg[3]_1\,
      I2 => r15(18),
      I3 => \i_alu/aD2M4dsP\(19),
      O => \q_reg[3]_12\(3)
    );
\Result0_carry__3_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E21D"
    )
        port map (
      I0 => rd10(18),
      I1 => \^q_reg[3]_1\,
      I2 => r15(17),
      I3 => \i_alu/aD2M4dsP\(18),
      O => \q_reg[3]_12\(2)
    );
\Result0_carry__3_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E21D"
    )
        port map (
      I0 => rd10(17),
      I1 => \^q_reg[3]_1\,
      I2 => r15(16),
      I3 => \i_alu/aD2M4dsP\(17),
      O => \q_reg[3]_12\(1)
    );
\Result0_carry__3_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => rd10(16),
      I1 => \^q_reg[3]_1\,
      I2 => r15(15),
      I3 => SrcB(16),
      O => \q_reg[3]_12\(0)
    );
\Result0_carry__3_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001DFF"
    )
        port map (
      I0 => rd20(19),
      I1 => \^q_reg[3]_5\,
      I2 => r15(18),
      I3 => \Result0_carry__0_i_10_n_0\,
      I4 => \^q_reg[6]_0\,
      O => \i_alu/aD2M4dsP\(19)
    );
\Result0_carry__4_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFE200"
    )
        port map (
      I0 => rd20(22),
      I1 => \^q_reg[3]_5\,
      I2 => r15(21),
      I3 => \Result0_carry__0_i_10_n_0\,
      I4 => \^q_reg[6]_0\,
      O => SrcB(22)
    );
\Result0_carry__4_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAEAAAA"
    )
        port map (
      I0 => \^q_reg[6]_0\,
      I1 => rd20(21),
      I2 => \^q_reg[3]_5\,
      I3 => r15(20),
      I4 => \Result0_carry__0_i_10_n_0\,
      O => SrcB(21)
    );
\Result0_carry__4_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB800"
    )
        port map (
      I0 => r15(19),
      I1 => \^q_reg[3]_5\,
      I2 => rd20(20),
      I3 => \Result0_carry__0_i_10_n_0\,
      I4 => \^q_reg[6]_0\,
      O => SrcB(20)
    );
\Result0_carry__4_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => rd10(23),
      I1 => \^q_reg[3]_1\,
      I2 => r15(22),
      I3 => SrcB(23),
      O => \q_reg[3]_21\(3)
    );
\Result0_carry__4_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => rd10(22),
      I1 => \^q_reg[3]_1\,
      I2 => r15(21),
      I3 => SrcB(22),
      O => \q_reg[3]_21\(2)
    );
\Result0_carry__4_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => rd10(21),
      I1 => \^q_reg[3]_1\,
      I2 => r15(20),
      I3 => SrcB(21),
      O => \q_reg[3]_21\(1)
    );
\Result0_carry__4_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => rd10(20),
      I1 => \^q_reg[3]_1\,
      I2 => r15(19),
      I3 => SrcB(20),
      O => \q_reg[3]_21\(0)
    );
\Result0_carry__4_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAEAAAA"
    )
        port map (
      I0 => \^q_reg[6]_0\,
      I1 => rd20(23),
      I2 => \^q_reg[3]_5\,
      I3 => r15(22),
      I4 => \Result0_carry__0_i_10_n_0\,
      O => SrcB(23)
    );
\Result0_carry__5_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEAAAAA"
    )
        port map (
      I0 => \^q_reg[6]_0\,
      I1 => r15(25),
      I2 => \^q_reg[3]_5\,
      I3 => rd20(26),
      I4 => \Result0_carry__0_i_10_n_0\,
      O => SrcB(26)
    );
\Result0_carry__5_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEAAAAA"
    )
        port map (
      I0 => \^q_reg[6]_0\,
      I1 => r15(24),
      I2 => \^q_reg[3]_5\,
      I3 => rd20(25),
      I4 => \Result0_carry__0_i_10_n_0\,
      O => SrcB(25)
    );
\Result0_carry__5_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEAAAAA"
    )
        port map (
      I0 => \^q_reg[6]_0\,
      I1 => r15(23),
      I2 => \^q_reg[3]_5\,
      I3 => rd20(24),
      I4 => \Result0_carry__0_i_10_n_0\,
      O => SrcB(24)
    );
\Result0_carry__5_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E21D"
    )
        port map (
      I0 => rd10(27),
      I1 => \^q_reg[3]_1\,
      I2 => r15(26),
      I3 => \i_alu/aD2M4dsP\(27),
      O => \q_reg[3]_16\(3)
    );
\Result0_carry__5_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => rd10(26),
      I1 => \^q_reg[3]_1\,
      I2 => r15(25),
      I3 => SrcB(26),
      O => \q_reg[3]_16\(2)
    );
\Result0_carry__5_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => rd10(25),
      I1 => \^q_reg[3]_1\,
      I2 => r15(24),
      I3 => SrcB(25),
      O => \q_reg[3]_16\(1)
    );
\Result0_carry__5_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => rd10(24),
      I1 => \^q_reg[3]_1\,
      I2 => r15(23),
      I3 => SrcB(24),
      O => \q_reg[3]_16\(0)
    );
\Result0_carry__5_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001DFF"
    )
        port map (
      I0 => rd20(27),
      I1 => \^q_reg[3]_5\,
      I2 => r15(26),
      I3 => \Result0_carry__0_i_10_n_0\,
      I4 => \^q_reg[6]_0\,
      O => \i_alu/aD2M4dsP\(27)
    );
\Result0_carry__6_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => rd10(31),
      I1 => \^q_reg[3]_1\,
      I2 => r15(30),
      O => \q_reg[3]_20\(2)
    );
\Result0_carry__6_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEAAAAA"
    )
        port map (
      I0 => \^q_reg[6]_0\,
      I1 => r15(29),
      I2 => \^q_reg[3]_5\,
      I3 => rd20(30),
      I4 => \Result0_carry__0_i_10_n_0\,
      O => SrcB(30)
    );
\Result0_carry__6_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEAAAAA"
    )
        port map (
      I0 => \^q_reg[6]_0\,
      I1 => r15(28),
      I2 => \^q_reg[3]_5\,
      I3 => rd20(29),
      I4 => \Result0_carry__0_i_10_n_0\,
      O => SrcB(29)
    );
\Result0_carry__6_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000047FF"
    )
        port map (
      I0 => r15(27),
      I1 => \^q_reg[3]_5\,
      I2 => rd20(28),
      I3 => \Result0_carry__0_i_10_n_0\,
      I4 => \^q_reg[6]_0\,
      O => \i_alu/aD2M4dsP\(28)
    );
\Result0_carry__6_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(29),
      I1 => \^q_reg[3]_1\,
      I2 => rd10(30),
      O => \q_reg[3]_20\(1)
    );
\Result0_carry__6_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(28),
      I1 => \^q_reg[3]_1\,
      I2 => rd10(29),
      O => \q_reg[3]_20\(0)
    );
\Result0_carry__6_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B847"
    )
        port map (
      I0 => r15(30),
      I1 => \^q_reg[3]_1\,
      I2 => rd10(31),
      I3 => \Result0_carry__6_i_9_n_0\,
      O => \q_reg[3]_0\(3)
    );
\Result0_carry__6_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => r15(29),
      I1 => \^q_reg[3]_1\,
      I2 => rd10(30),
      I3 => SrcB(30),
      O => \q_reg[3]_0\(2)
    );
\Result0_carry__6_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => rd10(29),
      I1 => \^q_reg[3]_1\,
      I2 => r15(28),
      I3 => SrcB(29),
      O => \q_reg[3]_0\(1)
    );
\Result0_carry__6_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B847"
    )
        port map (
      I0 => r15(27),
      I1 => \^q_reg[3]_1\,
      I2 => rd10(28),
      I3 => \i_alu/aD2M4dsP\(28),
      O => \q_reg[3]_0\(0)
    );
\Result0_carry__6_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000047FF"
    )
        port map (
      I0 => r15(30),
      I1 => \^q_reg[3]_5\,
      I2 => rd20(31),
      I3 => \Result0_carry__0_i_10_n_0\,
      I4 => \^q_reg[6]_0\,
      O => \Result0_carry__6_i_9_n_0\
    );
Result0_carry_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222EEE2E"
    )
        port map (
      I0 => Result0_carry_i_13_n_0,
      I1 => \Result0_carry__0_i_10_n_0\,
      I2 => rd20(2),
      I3 => \^q_reg[3]_5\,
      I4 => r15(1),
      O => \i_alu/aD2M4dsP\(2)
    );
Result0_carry_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4747FFFF4747FF00"
    )
        port map (
      I0 => r15(0),
      I1 => \^q_reg[3]_5\,
      I2 => rd20(1),
      I3 => \^q_reg[3]_4\,
      I4 => \Result0_carry__0_i_10_n_0\,
      I5 => Result0_carry_i_14_n_0,
      O => \i_alu/aD2M4dsP\(1)
    );
Result0_carry_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B80000B8B800FF"
    )
        port map (
      I0 => \^q_reg[0]_0\,
      I1 => \^q_reg[3]_5\,
      I2 => rd20(0),
      I3 => Result0_carry_i_15_n_0,
      I4 => \Result0_carry__0_i_10_n_0\,
      I5 => \^q_reg[3]_4\,
      O => SrcB(0)
    );
Result0_carry_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFBEBEFEEEEFEF"
    )
        port map (
      I0 => \^pc\(6),
      I1 => \^pc\(3),
      I2 => \^pc\(4),
      I3 => \^pc\(1),
      I4 => \^pc\(5),
      I5 => \^pc\(2),
      O => Result0_carry_i_13_n_0
    );
Result0_carry_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAFFEAFFABBEEB"
    )
        port map (
      I0 => \^pc\(6),
      I1 => \^pc\(4),
      I2 => \^pc\(3),
      I3 => \^pc\(5),
      I4 => \^pc\(1),
      I5 => \^pc\(2),
      O => Result0_carry_i_14_n_0
    );
Result0_carry_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFEAEFBFBBEAFF"
    )
        port map (
      I0 => \^pc\(6),
      I1 => \^pc\(4),
      I2 => \^pc\(1),
      I3 => \^pc\(2),
      I4 => \^pc\(3),
      I5 => \^pc\(5),
      O => Result0_carry_i_15_n_0
    );
Result0_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[0]_0\,
      I1 => \^q_reg[3]_4\,
      I2 => rd10(0),
      O => DI(0)
    );
Result0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E21D"
    )
        port map (
      I0 => rd10(3),
      I1 => \^q_reg[3]_4\,
      I2 => r15(2),
      I3 => \i_alu/aD2M4dsP\(3),
      O => S(3)
    );
Result0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B847"
    )
        port map (
      I0 => r15(1),
      I1 => \^q_reg[3]_4\,
      I2 => rd10(2),
      I3 => \i_alu/aD2M4dsP\(2),
      O => S(2)
    );
Result0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B847"
    )
        port map (
      I0 => r15(0),
      I1 => \^q_reg[3]_4\,
      I2 => rd10(1),
      I3 => \i_alu/aD2M4dsP\(1),
      O => S(1)
    );
Result0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => rd10(0),
      I1 => \^q_reg[3]_4\,
      I2 => \^q_reg[0]_0\,
      I3 => SrcB(0),
      O => S(0)
    );
Result0_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100011111111111"
    )
        port map (
      I0 => \^q_reg[7]_0\,
      I1 => \^q_reg[6]_0\,
      I2 => r15(2),
      I3 => \^q_reg[3]_5\,
      I4 => rd20(3),
      I5 => \Result0_carry__0_i_10_n_0\,
      O => \i_alu/aD2M4dsP\(3)
    );
\Result_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd(0),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_25\,
      O => Result_OBUF(0)
    );
\Result_OBUF[10]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd(10),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_5\,
      O => Result_OBUF(9)
    );
\Result_OBUF[11]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd(11),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_6\,
      O => Result_OBUF(10)
    );
\Result_OBUF[12]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd(12),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_8\,
      O => Result_OBUF(11)
    );
\Result_OBUF[13]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd(13),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_9\,
      O => Result_OBUF(12)
    );
\Result_OBUF[14]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd(14),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_10\,
      O => Result_OBUF(13)
    );
\Result_OBUF[15]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd(15),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_11\,
      O => Result_OBUF(14)
    );
\Result_OBUF[16]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd(16),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_12\,
      O => Result_OBUF(15)
    );
\Result_OBUF[17]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd(17),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_13\,
      O => Result_OBUF(16)
    );
\Result_OBUF[18]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd(18),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_14\,
      O => Result_OBUF(17)
    );
\Result_OBUF[19]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd(19),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_15\,
      O => Result_OBUF(18)
    );
\Result_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd(1),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_3\,
      O => Result_OBUF(1)
    );
\Result_OBUF[20]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd(20),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_16\,
      O => Result_OBUF(19)
    );
\Result_OBUF[21]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd(21),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_17\,
      O => Result_OBUF(20)
    );
\Result_OBUF[22]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd(22),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_18\,
      O => Result_OBUF(21)
    );
\Result_OBUF[23]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd(23),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_19\,
      O => Result_OBUF(22)
    );
\Result_OBUF[24]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd(24),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_20\,
      O => Result_OBUF(23)
    );
\Result_OBUF[25]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd(25),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_21\,
      O => Result_OBUF(24)
    );
\Result_OBUF[26]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd(26),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_22\,
      O => Result_OBUF(25)
    );
\Result_OBUF[27]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd(27),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_23\,
      O => Result_OBUF(26)
    );
\Result_OBUF[28]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd(28),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_26\,
      O => Result_OBUF(27)
    );
\Result_OBUF[29]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd(29),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_24\,
      O => Result_OBUF(28)
    );
\Result_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd(2),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_27\(0),
      O => Result_OBUF(2)
    );
\Result_OBUF[30]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd(30),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_2\,
      O => Result_OBUF(29)
    );
\Result_OBUF[31]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd(31),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_1\,
      O => Result_OBUF(30)
    );
\Result_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd(3),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_27\(1),
      O => Result_OBUF(3)
    );
\Result_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd(4),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_27\(2),
      O => Result_OBUF(4)
    );
\Result_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd(5),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_27\(3),
      O => Result_OBUF(5)
    );
\Result_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd(6),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_27\(4),
      O => Result_OBUF(6)
    );
\Result_OBUF[8]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd(8),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_7\,
      O => Result_OBUF(7)
    );
\Result_OBUF[9]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd(9),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_4\,
      O => Result_OBUF(8)
    );
\WriteData_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[0]_0\,
      I1 => \^q_reg[3]_5\,
      I2 => rd20(0),
      O => wd(0)
    );
\WriteData_OBUF[29]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rd20(29),
      I1 => \^q_reg[3]_5\,
      I2 => r15(28),
      O => wd(1)
    );
\WriteData_OBUF[30]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rd20(30),
      I1 => \^q_reg[3]_5\,
      I2 => r15(29),
      O => wd(2)
    );
\WriteData_OBUF[31]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rd20(31),
      I1 => \^q_reg[3]_5\,
      I2 => r15(30),
      O => wd(3)
    );
\WriteData_OBUF[31]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \^pc\(2),
      I1 => \^pc\(5),
      I2 => \^pc\(1),
      I3 => \^pc\(4),
      I4 => \^pc\(3),
      I5 => \^pc\(6),
      O => \^q_reg[3]_5\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => r15(6),
      I1 => \^q_reg[3]_4\,
      I2 => rd10(7),
      I3 => \^q_reg[3]_3\(0),
      O => \q_reg[3]_2\(3)
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ED47B847ED474747"
    )
        port map (
      I0 => r15(5),
      I1 => \^q_reg[3]_4\,
      I2 => rd10(6),
      I3 => \Result0_carry__0_i_10_n_0\,
      I4 => \^q_reg[3]_5\,
      I5 => rd20(6),
      O => \q_reg[3]_2\(2)
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ED47B847ED474747"
    )
        port map (
      I0 => r15(4),
      I1 => \^q_reg[3]_4\,
      I2 => rd10(5),
      I3 => \Result0_carry__0_i_10_n_0\,
      I4 => \^q_reg[3]_5\,
      I5 => rd20(5),
      O => \q_reg[3]_2\(1)
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"656A"
    )
        port map (
      I0 => \i_alu/aD2M4dsP\(4),
      I1 => r15(3),
      I2 => \^q_reg[3]_4\,
      I3 => rd10(4),
      O => \q_reg[3]_2\(0)
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"656A"
    )
        port map (
      I0 => \i_alu/aD2M4dsP\(11),
      I1 => r15(10),
      I2 => \^q_reg[3]_1\,
      I3 => rd10(11),
      O => \q_reg[3]_7\(3)
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"656A"
    )
        port map (
      I0 => \i_alu/aD2M4dsP\(10),
      I1 => r15(9),
      I2 => \^q_reg[3]_1\,
      I3 => rd10(10),
      O => \q_reg[3]_7\(2)
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => r15(8),
      I1 => \^q_reg[3]_1\,
      I2 => rd10(9),
      I3 => \i_alu/aD2M4dsP\(9),
      O => \q_reg[3]_7\(1)
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"656A"
    )
        port map (
      I0 => \i_alu/aD2M4dsP\(8),
      I1 => r15(7),
      I2 => \^q_reg[3]_1\,
      I3 => rd10(8),
      O => \q_reg[3]_7\(0)
    );
\i__carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => r15(14),
      I1 => \^q_reg[3]_1\,
      I2 => rd10(15),
      I3 => \i_alu/aD2M4dsP\(15),
      O => \q_reg[3]_9\(3)
    );
\i__carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"656A"
    )
        port map (
      I0 => \i_alu/aD2M4dsP\(14),
      I1 => r15(13),
      I2 => \^q_reg[3]_1\,
      I3 => rd10(14),
      O => \q_reg[3]_9\(2)
    );
\i__carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => r15(12),
      I1 => \^q_reg[3]_1\,
      I2 => rd10(13),
      I3 => \i_alu/aD2M4dsP\(13),
      O => \q_reg[3]_9\(1)
    );
\i__carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E21D"
    )
        port map (
      I0 => rd10(12),
      I1 => \^q_reg[3]_1\,
      I2 => r15(11),
      I3 => SrcB(12),
      O => \q_reg[3]_9\(0)
    );
\i__carry__3_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => r15(18),
      I1 => \^q_reg[3]_1\,
      I2 => rd10(19),
      I3 => \i_alu/aD2M4dsP\(19),
      O => \q_reg[3]_11\(3)
    );
\i__carry__3_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => r15(17),
      I1 => \^q_reg[3]_1\,
      I2 => rd10(18),
      I3 => \i_alu/aD2M4dsP\(18),
      O => \q_reg[3]_11\(2)
    );
\i__carry__3_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => r15(16),
      I1 => \^q_reg[3]_1\,
      I2 => rd10(17),
      I3 => \i_alu/aD2M4dsP\(17),
      O => \q_reg[3]_11\(1)
    );
\i__carry__3_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B847"
    )
        port map (
      I0 => r15(15),
      I1 => \^q_reg[3]_1\,
      I2 => rd10(16),
      I3 => SrcB(16),
      O => \q_reg[3]_11\(0)
    );
\i__carry__4_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B847"
    )
        port map (
      I0 => r15(22),
      I1 => \^q_reg[3]_1\,
      I2 => rd10(23),
      I3 => SrcB(23),
      O => \q_reg[3]_13\(3)
    );
\i__carry__4_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B847"
    )
        port map (
      I0 => r15(21),
      I1 => \^q_reg[3]_1\,
      I2 => rd10(22),
      I3 => SrcB(22),
      O => \q_reg[3]_13\(2)
    );
\i__carry__4_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B847"
    )
        port map (
      I0 => r15(20),
      I1 => \^q_reg[3]_1\,
      I2 => rd10(21),
      I3 => SrcB(21),
      O => \q_reg[3]_13\(1)
    );
\i__carry__4_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B847"
    )
        port map (
      I0 => r15(19),
      I1 => \^q_reg[3]_1\,
      I2 => rd10(20),
      I3 => SrcB(20),
      O => \q_reg[3]_13\(0)
    );
\i__carry__5_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"656A"
    )
        port map (
      I0 => \i_alu/aD2M4dsP\(27),
      I1 => r15(26),
      I2 => \^q_reg[3]_4\,
      I3 => rd10(27),
      O => \q_reg[3]_14\(3)
    );
\i__carry__5_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B847"
    )
        port map (
      I0 => r15(25),
      I1 => \^q_reg[3]_4\,
      I2 => rd10(26),
      I3 => SrcB(26),
      O => \q_reg[3]_14\(2)
    );
\i__carry__5_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B847"
    )
        port map (
      I0 => r15(24),
      I1 => \^q_reg[3]_4\,
      I2 => rd10(25),
      I3 => SrcB(25),
      O => \q_reg[3]_14\(1)
    );
\i__carry__5_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B847"
    )
        port map (
      I0 => r15(23),
      I1 => \^q_reg[3]_4\,
      I2 => rd10(24),
      I3 => SrcB(24),
      O => \q_reg[3]_14\(0)
    );
\i__carry__6_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => rd10(31),
      I1 => \^q_reg[3]_4\,
      I2 => r15(30),
      O => \q_reg[3]_19\(1)
    );
\i__carry__6_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(29),
      I1 => \^q_reg[3]_4\,
      I2 => rd10(30),
      O => \q_reg[3]_19\(0)
    );
\i__carry__6_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => rd10(31),
      I1 => \^q_reg[3]_4\,
      I2 => r15(30),
      I3 => \Result0_carry__6_i_9_n_0\,
      O => \q_reg[3]_15\(3)
    );
\i__carry__6_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E21D"
    )
        port map (
      I0 => rd10(30),
      I1 => \^q_reg[3]_4\,
      I2 => r15(29),
      I3 => SrcB(30),
      O => \q_reg[3]_15\(2)
    );
\i__carry__6_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B847"
    )
        port map (
      I0 => r15(28),
      I1 => \^q_reg[3]_4\,
      I2 => rd10(29),
      I3 => SrcB(29),
      O => \q_reg[3]_15\(1)
    );
\i__carry__6_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => rd10(28),
      I1 => \^q_reg[3]_4\,
      I2 => r15(27),
      I3 => \i_alu/aD2M4dsP\(28),
      O => \q_reg[3]_15\(0)
    );
\i__carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[0]_0\,
      I1 => \^q_reg[3]_4\,
      I2 => rd10(0),
      O => \q_reg[0]_1\(0)
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => r15(2),
      I1 => \^q_reg[3]_4\,
      I2 => rd10(3),
      I3 => \i_alu/aD2M4dsP\(3),
      O => \q_reg[3]_17\(3)
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => rd10(2),
      I1 => \^q_reg[3]_4\,
      I2 => r15(1),
      I3 => \i_alu/aD2M4dsP\(2),
      O => \q_reg[3]_17\(2)
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => rd10(1),
      I1 => \^q_reg[3]_4\,
      I2 => r15(0),
      I3 => \i_alu/aD2M4dsP\(1),
      O => \q_reg[3]_17\(1)
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B847"
    )
        port map (
      I0 => \^q_reg[0]_0\,
      I1 => \^q_reg[3]_4\,
      I2 => rd10(0),
      I3 => SrcB(0),
      O => \q_reg[3]_17\(0)
    );
mem_reg_0_63_0_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010100"
    )
        port map (
      I0 => \^pc\(6),
      I1 => \^pc\(3),
      I2 => \^pc\(5),
      I3 => \^pc\(2),
      I4 => \^pc\(4),
      I5 => \^pc\(1),
      O => MemWrite
    );
mem_reg_r1_0_15_0_5_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA2A00000000"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^instr_obuf\(16),
      I2 => \^instr_obuf\(18),
      I3 => \^instr_obuf\(17),
      I4 => \^q_reg[6]_0\,
      I5 => mem_reg_r1_0_15_0_5_i_16_n_0,
      O => RegWrite
    );
mem_reg_r1_0_15_0_5_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002268000"
    )
        port map (
      I0 => \^pc\(5),
      I1 => \^pc\(2),
      I2 => \^pc\(3),
      I3 => \^pc\(1),
      I4 => \^pc\(4),
      I5 => \^pc\(6),
      O => \q_reg[3]_18\(1)
    );
mem_reg_r1_0_15_0_5_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0102120020020000"
    )
        port map (
      I0 => \^pc\(1),
      I1 => \^pc\(6),
      I2 => \^pc\(2),
      I3 => \^pc\(3),
      I4 => \^pc\(5),
      I5 => \^pc\(4),
      O => \q_reg[3]_18\(0)
    );
mem_reg_r1_0_15_0_5_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000050E030C0"
    )
        port map (
      I0 => \^pc\(3),
      I1 => \^pc\(2),
      I2 => \^pc\(5),
      I3 => \^pc\(4),
      I4 => \^pc\(1),
      I5 => \^pc\(6),
      O => RA3(2)
    );
mem_reg_r1_0_15_0_5_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005C903A00"
    )
        port map (
      I0 => \^pc\(3),
      I1 => \^pc\(2),
      I2 => \^pc\(5),
      I3 => \^pc\(4),
      I4 => \^pc\(1),
      I5 => \^pc\(6),
      O => RA3(1)
    );
mem_reg_r1_0_15_0_5_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000019BE2C0A"
    )
        port map (
      I0 => \^pc\(3),
      I1 => \^pc\(2),
      I2 => \^pc\(5),
      I3 => \^pc\(4),
      I4 => \^pc\(1),
      I5 => \^pc\(6),
      O => RA3(0)
    );
mem_reg_r1_0_15_0_5_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEAEEAAAAAAEEA"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_18_n_0,
      I1 => \^instr_obuf\(22),
      I2 => \^instr_obuf\(20),
      I3 => q(0),
      I4 => \^instr_obuf\(21),
      I5 => \q_reg[0]_2\,
      O => mem_reg_r1_0_15_0_5_i_15_n_0
    );
mem_reg_r1_0_15_0_5_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEB"
    )
        port map (
      I0 => \^pc\(1),
      I1 => \^pc\(4),
      I2 => \^pc\(2),
      I3 => \^pc\(5),
      I4 => \^pc\(3),
      I5 => \^pc\(6),
      O => mem_reg_r1_0_15_0_5_i_16_n_0
    );
mem_reg_r1_0_15_0_5_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \^pc\(6),
      I1 => \^pc\(1),
      I2 => \^pc\(4),
      I3 => \^pc\(5),
      I4 => \^pc\(2),
      I5 => \^pc\(3),
      O => mem_reg_r1_0_15_0_5_i_17_n_0
    );
mem_reg_r1_0_15_0_5_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55140014"
    )
        port map (
      I0 => \^instr_obuf\(22),
      I1 => \^instr_obuf\(20),
      I2 => mem_reg_r1_0_15_0_5_i_15_0,
      I3 => \^instr_obuf\(21),
      I4 => mem_reg_r1_0_15_0_5_i_15_1,
      I5 => \^instr_obuf\(23),
      O => mem_reg_r1_0_15_0_5_i_18_n_0
    );
mem_reg_r1_0_15_0_5_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => rd(1),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_3\,
      I3 => \^d1\(0),
      I4 => mem_reg_r1_0_15_0_5_i_17_n_0,
      O => wd3(1)
    );
mem_reg_r1_0_15_0_5_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => rd(0),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_25\,
      I3 => \^q_reg[0]_0\,
      I4 => mem_reg_r1_0_15_0_5_i_17_n_0,
      O => wd3(0)
    );
mem_reg_r1_0_15_0_5_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^d1\(2),
      I1 => mem_reg_r1_0_15_0_5_i_17_n_0,
      I2 => rd(3),
      I3 => \^q_reg[7]_0\,
      I4 => \^q_reg[6]_27\(1),
      O => wd3(3)
    );
mem_reg_r1_0_15_0_5_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^d1\(1),
      I1 => mem_reg_r1_0_15_0_5_i_17_n_0,
      I2 => rd(2),
      I3 => \^q_reg[7]_0\,
      I4 => \^q_reg[6]_27\(0),
      O => wd3(2)
    );
mem_reg_r1_0_15_0_5_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^d1\(4),
      I1 => mem_reg_r1_0_15_0_5_i_17_n_0,
      I2 => rd(5),
      I3 => \^q_reg[7]_0\,
      I4 => \^q_reg[6]_27\(3),
      O => wd3(5)
    );
mem_reg_r1_0_15_0_5_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^d1\(3),
      I1 => mem_reg_r1_0_15_0_5_i_17_n_0,
      I2 => rd(4),
      I3 => \^q_reg[7]_0\,
      I4 => \^q_reg[6]_27\(2),
      O => wd3(4)
    );
mem_reg_r1_0_15_0_5_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010005000A00000"
    )
        port map (
      I0 => \^pc\(2),
      I1 => \^pc\(1),
      I2 => \^pc\(5),
      I3 => \^pc\(6),
      I4 => \^pc\(3),
      I5 => \^pc\(4),
      O => \q_reg[3]_18\(3)
    );
mem_reg_r1_0_15_0_5_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000024708400"
    )
        port map (
      I0 => \^pc\(2),
      I1 => \^pc\(5),
      I2 => \^pc\(3),
      I3 => \^pc\(1),
      I4 => \^pc\(4),
      I5 => \^pc\(6),
      O => \q_reg[3]_18\(2)
    );
mem_reg_r1_0_15_12_17_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => rd(13),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_9\,
      I3 => \^d1\(12),
      I4 => mem_reg_r1_0_15_0_5_i_17_n_0,
      O => wd3(13)
    );
mem_reg_r1_0_15_12_17_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => rd(12),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_8\,
      I3 => \^d1\(11),
      I4 => mem_reg_r1_0_15_0_5_i_17_n_0,
      O => wd3(12)
    );
mem_reg_r1_0_15_12_17_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => rd(15),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_11\,
      I3 => \^d1\(14),
      I4 => mem_reg_r1_0_15_0_5_i_17_n_0,
      O => wd3(15)
    );
mem_reg_r1_0_15_12_17_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => rd(14),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_10\,
      I3 => \^d1\(13),
      I4 => mem_reg_r1_0_15_0_5_i_17_n_0,
      O => wd3(14)
    );
mem_reg_r1_0_15_12_17_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => rd(17),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_13\,
      I3 => \^d1\(16),
      I4 => mem_reg_r1_0_15_0_5_i_17_n_0,
      O => wd3(17)
    );
mem_reg_r1_0_15_12_17_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => rd(16),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_12\,
      I3 => \^d1\(15),
      I4 => mem_reg_r1_0_15_0_5_i_17_n_0,
      O => wd3(16)
    );
mem_reg_r1_0_15_18_23_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => rd(19),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_15\,
      I3 => \^d1\(18),
      I4 => mem_reg_r1_0_15_0_5_i_17_n_0,
      O => wd3(19)
    );
mem_reg_r1_0_15_18_23_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => rd(18),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_14\,
      I3 => \^d1\(17),
      I4 => mem_reg_r1_0_15_0_5_i_17_n_0,
      O => wd3(18)
    );
mem_reg_r1_0_15_18_23_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => rd(21),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_17\,
      I3 => \^d1\(20),
      I4 => mem_reg_r1_0_15_0_5_i_17_n_0,
      O => wd3(21)
    );
mem_reg_r1_0_15_18_23_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => rd(20),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_16\,
      I3 => \^d1\(19),
      I4 => mem_reg_r1_0_15_0_5_i_17_n_0,
      O => wd3(20)
    );
mem_reg_r1_0_15_18_23_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => rd(23),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_19\,
      I3 => \^d1\(22),
      I4 => mem_reg_r1_0_15_0_5_i_17_n_0,
      O => wd3(23)
    );
mem_reg_r1_0_15_18_23_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => rd(22),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_18\,
      I3 => \^d1\(21),
      I4 => mem_reg_r1_0_15_0_5_i_17_n_0,
      O => wd3(22)
    );
mem_reg_r1_0_15_24_29_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => rd(25),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_21\,
      I3 => \^d1\(24),
      I4 => mem_reg_r1_0_15_0_5_i_17_n_0,
      O => wd3(25)
    );
mem_reg_r1_0_15_24_29_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => rd(24),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_20\,
      I3 => \^d1\(23),
      I4 => mem_reg_r1_0_15_0_5_i_17_n_0,
      O => wd3(24)
    );
mem_reg_r1_0_15_24_29_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => rd(27),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_23\,
      I3 => \^d1\(26),
      I4 => mem_reg_r1_0_15_0_5_i_17_n_0,
      O => wd3(27)
    );
mem_reg_r1_0_15_24_29_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => rd(26),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_22\,
      I3 => \^d1\(25),
      I4 => mem_reg_r1_0_15_0_5_i_17_n_0,
      O => wd3(26)
    );
mem_reg_r1_0_15_24_29_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => rd(29),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_24\,
      I3 => \^d1\(28),
      I4 => mem_reg_r1_0_15_0_5_i_17_n_0,
      O => wd3(29)
    );
mem_reg_r1_0_15_24_29_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^d1\(27),
      I1 => mem_reg_r1_0_15_0_5_i_17_n_0,
      I2 => rd(28),
      I3 => \^q_reg[7]_0\,
      I4 => \^q_reg[6]_26\,
      O => wd3(28)
    );
\mem_reg_r1_0_15_30_31__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => rd(31),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_1\,
      I3 => \^d1\(30),
      I4 => mem_reg_r1_0_15_0_5_i_17_n_0,
      O => wd3(31)
    );
mem_reg_r1_0_15_30_31_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => rd(30),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_2\,
      I3 => \^d1\(29),
      I4 => mem_reg_r1_0_15_0_5_i_17_n_0,
      O => wd3(30)
    );
mem_reg_r1_0_15_6_11_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^d1\(6),
      I1 => mem_reg_r1_0_15_0_5_i_17_n_0,
      I2 => rd(7),
      I3 => \^q_reg[7]_0\,
      I4 => p_0_in(0),
      O => wd3(7)
    );
mem_reg_r1_0_15_6_11_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^d1\(5),
      I1 => mem_reg_r1_0_15_0_5_i_17_n_0,
      I2 => rd(6),
      I3 => \^q_reg[7]_0\,
      I4 => \^q_reg[6]_27\(4),
      O => wd3(6)
    );
mem_reg_r1_0_15_6_11_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => rd(9),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_4\,
      I3 => \^d1\(8),
      I4 => mem_reg_r1_0_15_0_5_i_17_n_0,
      O => wd3(9)
    );
mem_reg_r1_0_15_6_11_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => rd(8),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_7\,
      I3 => \^d1\(7),
      I4 => mem_reg_r1_0_15_0_5_i_17_n_0,
      O => wd3(8)
    );
mem_reg_r1_0_15_6_11_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => rd(11),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_6\,
      I3 => \^d1\(10),
      I4 => mem_reg_r1_0_15_0_5_i_17_n_0,
      O => wd3(11)
    );
mem_reg_r1_0_15_6_11_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => rd(10),
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[6]_5\,
      I3 => \^d1\(9),
      I4 => mem_reg_r1_0_15_0_5_i_17_n_0,
      O => wd3(10)
    );
mem_reg_r2_0_15_0_5_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1001014000000000"
    )
        port map (
      I0 => \^pc\(6),
      I1 => \^pc\(3),
      I2 => \^pc\(5),
      I3 => \^pc\(2),
      I4 => \^pc\(4),
      I5 => \^pc\(1),
      O => ADDRA(3)
    );
mem_reg_r2_0_15_0_5_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000228094E4"
    )
        port map (
      I0 => \^pc\(2),
      I1 => \^pc\(5),
      I2 => \^pc\(1),
      I3 => \^pc\(4),
      I4 => \^pc\(3),
      I5 => \^pc\(6),
      O => ADDRA(2)
    );
mem_reg_r2_0_15_0_5_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000148E8F98"
    )
        port map (
      I0 => \^pc\(2),
      I1 => \^pc\(1),
      I2 => \^pc\(5),
      I3 => \^pc\(3),
      I4 => \^pc\(4),
      I5 => \^pc\(6),
      O => ADDRA(1)
    );
mem_reg_r2_0_15_0_5_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1100151040441504"
    )
        port map (
      I0 => \^pc\(6),
      I1 => \^pc\(4),
      I2 => \^pc\(1),
      I3 => \^pc\(2),
      I4 => \^pc\(3),
      I5 => \^pc\(5),
      O => ADDRA(0)
    );
\q[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF77780888000"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^q_reg[3]_4\,
      I2 => rd(0),
      I3 => \^q_reg[7]_0\,
      I4 => \^q_reg[6]_25\,
      I5 => \^q_reg[0]_0\,
      O => \q[0]_i_1_n_0\
    );
\q[0]_i_100\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E21D"
    )
        port map (
      I0 => rd10(4),
      I1 => \^q_reg[3]_4\,
      I2 => r15(3),
      I3 => \i_alu/aD2M4dsP\(4),
      O => \q[0]_i_100_n_0\
    );
\q[0]_i_101\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F1F1FE02020DF20"
    )
        port map (
      I0 => rd20(5),
      I1 => \^q_reg[3]_5\,
      I2 => \Result0_carry__0_i_10_n_0\,
      I3 => rd10(5),
      I4 => \^q_reg[3]_4\,
      I5 => r15(4),
      O => \q[0]_i_101_n_0\
    );
\q[0]_i_102\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E21D"
    )
        port map (
      I0 => rd10(10),
      I1 => \^q_reg[3]_4\,
      I2 => r15(9),
      I3 => \i_alu/aD2M4dsP\(10),
      O => \q[0]_i_102_n_0\
    );
\q[0]_i_103\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \i_alu/aD2M4dsP\(13),
      I1 => rd10(13),
      I2 => \^q_reg[3]_4\,
      I3 => r15(12),
      O => \q[0]_i_103_n_0\
    );
\q[0]_i_104\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E21D"
    )
        port map (
      I0 => rd10(8),
      I1 => \^q_reg[3]_4\,
      I2 => r15(7),
      I3 => \i_alu/aD2M4dsP\(8),
      O => \q[0]_i_104_n_0\
    );
\q[0]_i_105\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => SrcB(12),
      I1 => rd10(12),
      I2 => \^q_reg[3]_4\,
      I3 => r15(11),
      O => \q[0]_i_105_n_0\
    );
\q[0]_i_106\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900990090000"
    )
        port map (
      I0 => SrcB(26),
      I1 => \ALUResult_OBUF[28]_inst_i_1_0\(25),
      I2 => SrcB(24),
      I3 => \ALUResult_OBUF[28]_inst_i_1_0\(23),
      I4 => \ALUResult_OBUF[28]_inst_i_1_0\(1),
      I5 => \i_alu/aD2M4dsP\(2),
      O => \q[0]_i_106_n_0\
    );
\q[0]_i_107\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \i_alu/aD2M4dsP\(28),
      I1 => rd10(28),
      I2 => \^q_reg[3]_4\,
      I3 => r15(27),
      O => \q[0]_i_107_n_0\
    );
\q[0]_i_108\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => SrcB(30),
      I1 => rd10(30),
      I2 => \^q_reg[3]_4\,
      I3 => r15(29),
      O => \q[0]_i_108_n_0\
    );
\q[0]_i_109\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => SrcB(20),
      I1 => rd10(20),
      I2 => \^q_reg[3]_4\,
      I3 => r15(19),
      O => \q[0]_i_109_n_0\
    );
\q[0]_i_110\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \Result0_carry__6_i_9_n_0\,
      I1 => rd10(31),
      I2 => \^q_reg[3]_4\,
      I3 => r15(30),
      O => \q[0]_i_110_n_0\
    );
\q[0]_i_111\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \i_alu/aD2M4dsP\(1),
      I1 => rd10(1),
      I2 => \^q_reg[3]_4\,
      I3 => r15(0),
      O => \q[0]_i_111_n_0\
    );
\q[0]_i_112\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => SrcB(23),
      I1 => \i_alu/aD2M4dsP\(18),
      I2 => \i_alu/aD2M4dsP\(1),
      I3 => \i_alu/aD2M4dsP\(2),
      I4 => \i_alu/aD2M4dsP\(4),
      I5 => \q[0]_i_125_n_0\,
      O => \q[0]_i_112_n_0\
    );
\q[0]_i_113\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \i_alu/aD2M4dsP\(11),
      I1 => \i_alu/aD2M4dsP\(3),
      I2 => \i_alu/aD2M4dsP\(28),
      I3 => SrcB(20),
      I4 => \^q_reg[3]_3\(0),
      O => \q[0]_i_113_n_0\
    );
\q[0]_i_114\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => SrcB(22),
      I1 => \i_alu/aD2M4dsP\(9),
      I2 => \i_alu/aD2M4dsP\(13),
      I3 => SrcB(12),
      I4 => \i_alu/aD2M4dsP\(8),
      O => \q[0]_i_114_n_0\
    );
\q[0]_i_115\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \i_alu/aD2M4dsP\(27),
      I1 => \i_alu/aD2M4dsP\(19),
      I2 => \i_alu/aD2M4dsP\(14),
      I3 => \i_alu/aD2M4dsP\(10),
      O => \q[0]_i_115_n_0\
    );
\q[0]_i_116\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880008000000000"
    )
        port map (
      I0 => SrcB(24),
      I1 => SrcB(6),
      I2 => rd20(5),
      I3 => \^q_reg[3]_5\,
      I4 => r15(4),
      I5 => \Result0_carry__0_i_10_n_0\,
      O => \q[0]_i_116_n_0\
    );
\q[0]_i_117\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \Result0_carry__6_i_9_n_0\,
      I1 => SrcB(30),
      I2 => SrcB(29),
      I3 => SrcB(26),
      O => \q[0]_i_117_n_0\
    );
\q[0]_i_118\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => SrcB(22),
      I1 => \i_alu/aD2M4dsP\(10),
      I2 => \i_alu/aD2M4dsP\(9),
      I3 => \^q_reg[3]_3\(0),
      I4 => SrcB(16),
      O => \q[0]_i_118_n_0\
    );
\q[0]_i_119\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => SrcB(20),
      I1 => SrcB(24),
      I2 => \i_alu/aD2M4dsP\(4),
      I3 => SrcB(5),
      I4 => \q[0]_i_126_n_0\,
      I5 => \i_alu/aD2M4dsP\(2),
      O => \q[0]_i_119_n_0\
    );
\q[0]_i_120\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \i_alu/aD2M4dsP\(19),
      I1 => \i_alu/aD2M4dsP\(18),
      I2 => SrcB(21),
      I3 => \i_alu/aD2M4dsP\(15),
      O => \q[0]_i_120_n_0\
    );
\q[0]_i_121\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \ALUResult_OBUF[16]_inst_i_7_n_0\,
      I1 => SrcB(6),
      I2 => SrcB(29),
      I3 => SrcB(26),
      O => \q[0]_i_121_n_0\
    );
\q[0]_i_122\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \ALUResult_OBUF[27]_inst_i_7_n_0\,
      I1 => \q[0]_i_127_n_0\,
      I2 => \^q_reg[7]_1\,
      I3 => SrcB(30),
      I4 => \i_alu/aD2M4dsP\(3),
      O => \q[0]_i_122_n_0\
    );
\q[0]_i_123\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFE02020FF20"
    )
        port map (
      I0 => rd20(6),
      I1 => \^q_reg[3]_5\,
      I2 => \Result0_carry__0_i_10_n_0\,
      I3 => rd10(6),
      I4 => \^q_reg[3]_4\,
      I5 => r15(5),
      O => \q[0]_i_123_n_0\
    );
\q[0]_i_124\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFE02020FF20"
    )
        port map (
      I0 => rd20(5),
      I1 => \^q_reg[3]_5\,
      I2 => \Result0_carry__0_i_10_n_0\,
      I3 => rd10(5),
      I4 => \^q_reg[3]_4\,
      I5 => r15(4),
      O => \q[0]_i_124_n_0\
    );
\q[0]_i_125\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA80800000000"
    )
        port map (
      I0 => \Result0_carry__0_i_10_n_0\,
      I1 => rd20(25),
      I2 => \^q_reg[3]_5\,
      I3 => r15(24),
      I4 => \^q_reg[6]_0\,
      I5 => SrcB(0),
      O => \q[0]_i_125_n_0\
    );
\q[0]_i_126\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011155515"
    )
        port map (
      I0 => \^q_reg[6]_0\,
      I1 => \Result0_carry__0_i_10_n_0\,
      I2 => rd20(28),
      I3 => \^q_reg[3]_5\,
      I4 => r15(27),
      I5 => SrcB(0),
      O => \q[0]_i_126_n_0\
    );
\q[0]_i_127\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \Result0_carry__0_i_10_n_0\,
      I1 => rd20(25),
      I2 => \^q_reg[3]_5\,
      I3 => r15(24),
      O => \q[0]_i_127_n_0\
    );
\q[0]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \ALUResult_OBUF[15]_inst_i_5_n_0\,
      I1 => \ALUResult_OBUF[27]_inst_i_6_n_0\,
      I2 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I3 => \q[0]_i_45_n_0\,
      I4 => \q[0]_i_46_n_0\,
      O => \q[0]_i_14_n_0\
    );
\q[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \q[0]_i_47_n_0\,
      I1 => \q[0]_i_48_n_0\,
      I2 => \q[0]_i_49_n_0\,
      I3 => \q[0]_i_50_n_0\,
      I4 => \q[0]_i_51_n_0\,
      I5 => \q[0]_i_52_n_0\,
      O => \q[0]_i_15_n_0\
    );
\q[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \q[0]_i_53_n_0\,
      I1 => \q[0]_i_54_n_0\,
      I2 => \q[0]_i_55_n_0\,
      I3 => \q[0]_i_56_n_0\,
      I4 => \q[0]_i_57_n_0\,
      I5 => \q[0]_i_58_n_0\,
      O => \q[0]_i_16_n_0\
    );
\q[0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \q[0]_i_59_n_0\,
      I1 => \q[0]_i_60_n_0\,
      I2 => \ALUResult_OBUF[14]_inst_i_5_n_0\,
      I3 => \q[0]_i_61_n_0\,
      I4 => \q[0]_i_62_n_0\,
      I5 => \q[0]_i_63_n_0\,
      O => \q[0]_i_17_n_0\
    );
\q[0]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55404040FFFFFFFF"
    )
        port map (
      I0 => \q[0]_i_64_n_0\,
      I1 => \q[0]_i_65_n_0\,
      I2 => \q[0]_i_66_n_0\,
      I3 => \q[0]_i_67_n_0\,
      I4 => \q[0]_i_68_n_0\,
      I5 => \^q_reg[6]_28\,
      O => \q[0]_i_18_n_0\
    );
\q[0]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd10(31),
      I1 => \^q_reg[3]_4\,
      I2 => r15(30),
      I3 => \Result0_carry__6_i_9_n_0\,
      O => \q[0]_i_19_n_0\
    );
\q[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000100000000"
    )
        port map (
      I0 => \q[0]_i_5_n_0\,
      I1 => \q[0]_i_6_n_0\,
      I2 => \q[0]_i_7_n_0\,
      I3 => \q[0]_i_8_n_0\,
      I4 => \q[0]_i_9_n_0\,
      I5 => \^q_reg[6]_29\,
      O => \q_reg[6]_32\
    );
\q[0]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4540"
    )
        port map (
      I0 => \^q_reg[3]_3\(0),
      I1 => r15(6),
      I2 => \^q_reg[3]_4\,
      I3 => rd10(7),
      I4 => \^q_reg[7]_1\,
      O => \q[0]_i_20_n_0\
    );
\q[0]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0E0E00000002000"
    )
        port map (
      I0 => rd20(5),
      I1 => \^q_reg[3]_5\,
      I2 => \Result0_carry__0_i_10_n_0\,
      I3 => rd10(5),
      I4 => \^q_reg[3]_4\,
      I5 => r15(4),
      O => \q[0]_i_21_n_0\
    );
\q[0]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF2FFF2FFF2"
    )
        port map (
      I0 => \ALUResult_OBUF[28]_inst_i_1_0\(9),
      I1 => \i_alu/aD2M4dsP\(10),
      I2 => \q[0]_i_69_n_0\,
      I3 => \q[0]_i_70_n_0\,
      I4 => SrcB(29),
      I5 => SrcA(29),
      O => \q[0]_i_22_n_0\
    );
\q[0]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF22F2"
    )
        port map (
      I0 => \ALUResult_OBUF[28]_inst_i_1_0\(8),
      I1 => \i_alu/aD2M4dsP\(9),
      I2 => \ALUResult_OBUF[28]_inst_i_1_0\(17),
      I3 => \i_alu/aD2M4dsP\(18),
      I4 => \q[0]_i_71_n_0\,
      O => \q[0]_i_23_n_0\
    );
\q[0]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => SrcB(26),
      I1 => rd10(26),
      I2 => \^q_reg[3]_4\,
      I3 => r15(25),
      O => \q[0]_i_24_n_0\
    );
\q[0]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \i_alu/aD2M4dsP\(17),
      I1 => r15(16),
      I2 => \^q_reg[3]_4\,
      I3 => rd10(17),
      I4 => \i_alu/aD2M4dsP\(15),
      I5 => \ALUResult_OBUF[28]_inst_i_1_0\(14),
      O => \q[0]_i_25_n_0\
    );
\q[0]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF222"
    )
        port map (
      I0 => \ALUResult_OBUF[28]_inst_i_1_0\(18),
      I1 => \i_alu/aD2M4dsP\(19),
      I2 => SrcB(21),
      I3 => \ALUResult_OBUF[28]_inst_i_1_0\(20),
      I4 => \q[0]_i_72_n_0\,
      I5 => \q[0]_i_73_n_0\,
      O => \q[0]_i_26_n_0\
    );
\q[0]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd10(3),
      I1 => \^q_reg[3]_4\,
      I2 => r15(2),
      I3 => \i_alu/aD2M4dsP\(3),
      O => \q[0]_i_27_n_0\
    );
\q[0]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEAFFEA"
    )
        port map (
      I0 => \q[0]_i_74_n_0\,
      I1 => SrcB(6),
      I2 => \ALUResult_OBUF[28]_inst_i_1_0\(5),
      I3 => \ALUResult_OBUF[28]_inst_i_1_0\(12),
      I4 => \i_alu/aD2M4dsP\(13),
      O => \q[0]_i_28_n_0\
    );
\q[0]_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd10(14),
      I1 => \^q_reg[3]_4\,
      I2 => r15(13),
      I3 => \i_alu/aD2M4dsP\(14),
      O => \q[0]_i_29_n_0\
    );
\q[0]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000148000000000"
    )
        port map (
      I0 => \^pc\(2),
      I1 => \^pc\(3),
      I2 => \^pc\(1),
      I3 => \^pc\(4),
      I4 => \^pc\(6),
      I5 => \^pc\(5),
      O => \^q_reg[3]_4\
    );
\q[0]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => SrcB(23),
      I1 => rd10(23),
      I2 => \^q_reg[3]_4\,
      I3 => r15(22),
      O => \q[0]_i_30_n_0\
    );
\q[0]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \q[0]_i_75_n_0\,
      I1 => SrcA(29),
      I2 => SrcB(29),
      I3 => \q[0]_i_76_n_0\,
      I4 => \q[0]_i_77_n_0\,
      I5 => \q[0]_i_78_n_0\,
      O => \q[0]_i_31_n_0\
    );
\q[0]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => SrcB(21),
      I1 => \ALUResult_OBUF[28]_inst_i_1_0\(20),
      I2 => \q[0]_i_79_n_0\,
      I3 => \q[0]_i_80_n_0\,
      I4 => \ALUResult_OBUF[28]_inst_i_1_0\(16),
      I5 => \i_alu/aD2M4dsP\(17),
      O => \q[0]_i_32_n_0\
    );
\q[0]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => \q[0]_i_81_n_0\,
      I1 => \ALUResult_OBUF[28]_inst_i_1_0\(8),
      I2 => \i_alu/aD2M4dsP\(9),
      I3 => \q[0]_i_82_n_0\,
      I4 => \ALUResult_OBUF[28]_inst_i_1_0\(12),
      I5 => \i_alu/aD2M4dsP\(13),
      O => \q[0]_i_33_n_0\
    );
\q[0]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => \i_alu/aD2M4dsP\(11),
      I1 => \ALUResult_OBUF[28]_inst_i_1_0\(10),
      I2 => \q[0]_i_83_n_0\,
      I3 => \^q_reg[7]_1\,
      I4 => \q[0]_i_84_n_0\,
      I5 => \q[0]_i_85_n_0\,
      O => \q[0]_i_34_n_0\
    );
\q[0]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \q[0]_i_86_n_0\,
      I1 => \q[0]_i_87_n_0\,
      I2 => \ALUResult_OBUF[28]_inst_i_1_0\(14),
      I3 => \i_alu/aD2M4dsP\(15),
      I4 => \i_alu/aD2M4dsP\(10),
      I5 => \ALUResult_OBUF[28]_inst_i_1_0\(9),
      O => \q[0]_i_35_n_0\
    );
\q[0]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \q[0]_i_88_n_0\,
      I1 => \q[0]_i_89_n_0\,
      I2 => \q[0]_i_90_n_0\,
      I3 => \q[0]_i_91_n_0\,
      I4 => \q[0]_i_92_n_0\,
      I5 => \q[0]_i_93_n_0\,
      O => \q[0]_i_36_n_0\
    );
\q[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF00000EEE"
    )
        port map (
      I0 => \q[0]_i_14_n_0\,
      I1 => \q[0]_i_15_n_0\,
      I2 => \q[0]_i_16_n_0\,
      I3 => \q[0]_i_17_n_0\,
      I4 => \q[0]_i_18_n_0\,
      I5 => \^q_reg[6]_29\,
      O => \q_reg[6]_30\
    );
\q[0]_i_45\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ALUResult_OBUF[31]_inst_i_7_n_0\,
      I1 => \ALUResult_OBUF[3]_inst_i_5_n_0\,
      I2 => \ALUResult_OBUF[9]_inst_i_5_n_0\,
      I3 => \ALUResult_OBUF[7]_inst_i_5_n_0\,
      O => \q[0]_i_45_n_0\
    );
\q[0]_i_46\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFAB"
    )
        port map (
      I0 => \ALUResult_OBUF[11]_inst_i_5_n_0\,
      I1 => \ALUResult_OBUF[2]_inst_i_6_n_0\,
      I2 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      I3 => \ALUResult_OBUF[12]_inst_i_5_n_0\,
      I4 => \ALUResult_OBUF[13]_inst_i_5_n_0\,
      O => \q[0]_i_46_n_0\
    );
\q[0]_i_47\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ALUResult_OBUF[5]_inst_i_5_n_0\,
      I1 => \ALUResult_OBUF[6]_inst_i_5_n_0\,
      I2 => \ALUResult_OBUF[10]_inst_i_5_n_0\,
      I3 => \ALUResult_OBUF[4]_inst_i_5_n_0\,
      O => \q[0]_i_47_n_0\
    );
\q[0]_i_48\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ALUResult_OBUF[24]_inst_i_5_n_0\,
      I1 => \ALUResult_OBUF[16]_inst_i_5_n_0\,
      I2 => \ALUResult_OBUF[26]_inst_i_5_n_0\,
      I3 => \ALUResult_OBUF[20]_inst_i_5_n_0\,
      O => \q[0]_i_48_n_0\
    );
\q[0]_i_49\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ALUResult_OBUF[0]_inst_i_5_n_0\,
      I1 => \ALUResult_OBUF[21]_inst_i_5_n_0\,
      I2 => \ALUResult_OBUF[14]_inst_i_6_n_0\,
      I3 => \ALUResult_OBUF[22]_inst_i_5_n_0\,
      O => \q[0]_i_49_n_0\
    );
\q[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF2FFF2FFF2"
    )
        port map (
      I0 => \ALUResult_OBUF[28]_inst_i_1_0\(1),
      I1 => \i_alu/aD2M4dsP\(2),
      I2 => \q[0]_i_19_n_0\,
      I3 => \q[0]_i_20_n_0\,
      I4 => SrcB(12),
      I5 => \ALUResult_OBUF[28]_inst_i_1_0\(11),
      O => \q[0]_i_5_n_0\
    );
\q[0]_i_50\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \^q_reg[7]_1\,
      I1 => \ALUResult_OBUF[17]_inst_i_5_n_0\,
      I2 => \ALUResult_OBUF[25]_inst_i_5_n_0\,
      I3 => \ALUResult_OBUF[8]_inst_i_5_n_0\,
      O => \q[0]_i_50_n_0\
    );
\q[0]_i_51\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ALUResult_OBUF[23]_inst_i_6_n_0\,
      I1 => \ALUResult_OBUF[19]_inst_i_5_n_0\,
      I2 => \ALUResult_OBUF[29]_inst_i_5_n_0\,
      I3 => \ALUResult_OBUF[18]_inst_i_5_n_0\,
      O => \q[0]_i_51_n_0\
    );
\q[0]_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAEAAFEF"
    )
        port map (
      I0 => \ALUResult_OBUF[30]_inst_i_5_n_0\,
      I1 => SrcB(5),
      I2 => \^q_reg[6]_31\,
      I3 => \^q_reg[6]_0\,
      I4 => \i_alu/aD2M4dsP\(1),
      I5 => \ALUResult_OBUF[2]_inst_i_5_n_0\,
      O => \q[0]_i_52_n_0\
    );
\q[0]_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000011001100000"
    )
        port map (
      I0 => \q[0]_i_98_n_0\,
      I1 => \q[0]_i_99_n_0\,
      I2 => \i_alu/aD2M4dsP\(18),
      I3 => \ALUResult_OBUF[28]_inst_i_1_0\(17),
      I4 => \i_alu/aD2M4dsP\(17),
      I5 => \ALUResult_OBUF[28]_inst_i_1_0\(16),
      O => \q[0]_i_53_n_0\
    );
\q[0]_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000014000014"
    )
        port map (
      I0 => \q[0]_i_100_n_0\,
      I1 => \i_alu/aD2M4dsP\(3),
      I2 => \ALUResult_OBUF[28]_inst_i_1_0\(2),
      I3 => SrcB(16),
      I4 => \ALUResult_OBUF[28]_inst_i_1_0\(15),
      I5 => \q[0]_i_101_n_0\,
      O => \q[0]_i_54_n_0\
    );
\q[0]_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9099900009000999"
    )
        port map (
      I0 => \ALUResult_OBUF[28]_inst_i_1_0\(21),
      I1 => SrcB(22),
      I2 => r15(24),
      I3 => \^q_reg[3]_4\,
      I4 => rd10(25),
      I5 => SrcB(25),
      O => \q[0]_i_55_n_0\
    );
\q[0]_i_56\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => SrcB(29),
      I1 => rd10(29),
      I2 => \^q_reg[3]_1\,
      I3 => r15(28),
      O => \q[0]_i_56_n_0\
    );
\q[0]_i_57\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => SrcB(0),
      I1 => rd10(0),
      I2 => \^q_reg[3]_4\,
      I3 => \^q_reg[0]_0\,
      O => \q[0]_i_57_n_0\
    );
\q[0]_i_58\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000141400"
    )
        port map (
      I0 => \q[0]_i_102_n_0\,
      I1 => \i_alu/aD2M4dsP\(9),
      I2 => \ALUResult_OBUF[28]_inst_i_1_0\(8),
      I3 => \i_alu/aD2M4dsP\(15),
      I4 => \ALUResult_OBUF[28]_inst_i_1_0\(14),
      I5 => \q[0]_i_103_n_0\,
      O => \q[0]_i_58_n_0\
    );
\q[0]_i_59\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1400001400000000"
    )
        port map (
      I0 => \q[0]_i_104_n_0\,
      I1 => \^q_reg[3]_3\(0),
      I2 => \ALUResult_OBUF[28]_inst_i_1_0\(6),
      I3 => SrcB(21),
      I4 => \ALUResult_OBUF[28]_inst_i_1_0\(20),
      I5 => \q[0]_i_105_n_0\,
      O => \q[0]_i_59_n_0\
    );
\q[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF8"
    )
        port map (
      I0 => SrcB(24),
      I1 => \ALUResult_OBUF[28]_inst_i_1_0\(23),
      I2 => \q[0]_i_21_n_0\,
      I3 => \q[0]_i_22_n_0\,
      I4 => \q[0]_i_23_n_0\,
      I5 => \q[0]_i_24_n_0\,
      O => \q[0]_i_6_n_0\
    );
\q[0]_i_60\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \q[0]_i_106_n_0\,
      I1 => \q[0]_i_107_n_0\,
      I2 => \q[0]_i_108_n_0\,
      I3 => \q[0]_i_109_n_0\,
      I4 => \q[0]_i_110_n_0\,
      I5 => \q[0]_i_111_n_0\,
      O => \q[0]_i_60_n_0\
    );
\q[0]_i_61\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F1F1FE02020DF20"
    )
        port map (
      I0 => rd20(6),
      I1 => \^q_reg[3]_5\,
      I2 => \Result0_carry__0_i_10_n_0\,
      I3 => rd10(6),
      I4 => \^q_reg[3]_1\,
      I5 => r15(5),
      O => \q[0]_i_61_n_0\
    );
\q[0]_i_62\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E21D"
    )
        port map (
      I0 => rd10(11),
      I1 => \^q_reg[3]_1\,
      I2 => r15(10),
      I3 => \i_alu/aD2M4dsP\(11),
      O => \q[0]_i_62_n_0\
    );
\q[0]_i_63\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11122212"
    )
        port map (
      I0 => \i_alu/aD2M4dsP\(27),
      I1 => \^q_reg[7]_1\,
      I2 => rd10(27),
      I3 => \^q_reg[3]_1\,
      I4 => r15(26),
      O => \q[0]_i_63_n_0\
    );
\q[0]_i_64\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \^q_reg[7]_1\,
      I1 => \Result0_carry__6_i_9_n_0\,
      I2 => \^q_reg[6]_29\,
      O => \q[0]_i_64_n_0\
    );
\q[0]_i_65\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \i_alu/aD2M4dsP\(15),
      I1 => SrcB(21),
      I2 => \i_alu/aD2M4dsP\(17),
      I3 => SrcB(16),
      I4 => \q[0]_i_112_n_0\,
      O => \q[0]_i_65_n_0\
    );
\q[0]_i_66\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \q[0]_i_113_n_0\,
      I1 => \q[0]_i_114_n_0\,
      I2 => \q[0]_i_115_n_0\,
      I3 => \q[0]_i_116_n_0\,
      I4 => \q[0]_i_117_n_0\,
      O => \q[0]_i_66_n_0\
    );
\q[0]_i_67\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \q[0]_i_118_n_0\,
      I1 => SrcB(23),
      I2 => \i_alu/aD2M4dsP\(1),
      I3 => \i_alu/aD2M4dsP\(14),
      I4 => \i_alu/aD2M4dsP\(17),
      I5 => \q[0]_i_119_n_0\,
      O => \q[0]_i_67_n_0\
    );
\q[0]_i_68\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \q[0]_i_120_n_0\,
      I1 => \q[0]_i_121_n_0\,
      I2 => \q[0]_i_122_n_0\,
      I3 => \i_alu/aD2M4dsP\(8),
      I4 => \i_alu/aD2M4dsP\(13),
      I5 => \i_alu/aD2M4dsP\(11),
      O => \q[0]_i_68_n_0\
    );
\q[0]_i_69\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd10(4),
      I1 => \^q_reg[3]_4\,
      I2 => r15(3),
      I3 => \i_alu/aD2M4dsP\(4),
      O => \q[0]_i_69_n_0\
    );
\q[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF4"
    )
        port map (
      I0 => \i_alu/aD2M4dsP\(11),
      I1 => \ALUResult_OBUF[28]_inst_i_1_0\(10),
      I2 => \q[0]_i_25_n_0\,
      I3 => \q[0]_i_26_n_0\,
      I4 => \q[0]_i_27_n_0\,
      I5 => \q[0]_i_28_n_0\,
      O => \q[0]_i_7_n_0\
    );
\q[0]_i_70\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => SrcB(25),
      I1 => rd10(25),
      I2 => \^q_reg[3]_4\,
      I3 => r15(24),
      O => \q[0]_i_70_n_0\
    );
\q[0]_i_71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \i_alu/aD2M4dsP\(8),
      I1 => r15(7),
      I2 => \^q_reg[3]_4\,
      I3 => rd10(8),
      I4 => \i_alu/aD2M4dsP\(1),
      I5 => \ALUResult_OBUF[28]_inst_i_1_0\(0),
      O => \q[0]_i_71_n_0\
    );
\q[0]_i_72\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => SrcB(30),
      I1 => rd10(30),
      I2 => \^q_reg[3]_4\,
      I3 => r15(29),
      O => \q[0]_i_72_n_0\
    );
\q[0]_i_73\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => SrcB(20),
      I1 => rd10(20),
      I2 => \^q_reg[3]_4\,
      I3 => r15(19),
      O => \q[0]_i_73_n_0\
    );
\q[0]_i_74\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \ALUResult_OBUF[28]_inst_i_1_0\(27),
      I1 => \i_alu/aD2M4dsP\(28),
      I2 => SrcB(0),
      I3 => SrcA(0),
      I4 => \ALUResult_OBUF[28]_inst_i_1_0\(21),
      I5 => SrcB(22),
      O => \q[0]_i_74_n_0\
    );
\q[0]_i_75\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \q[0]_i_123_n_0\,
      I1 => \q[0]_i_124_n_0\,
      I2 => SrcB(26),
      I3 => \ALUResult_OBUF[28]_inst_i_1_0\(25),
      I4 => SrcB(25),
      I5 => \ALUResult_OBUF[28]_inst_i_1_0\(24),
      O => \q[0]_i_75_n_0\
    );
\q[0]_i_76\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => SrcB(30),
      I1 => rd10(30),
      I2 => \^q_reg[3]_4\,
      I3 => r15(29),
      O => \q[0]_i_76_n_0\
    );
\q[0]_i_77\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => rd10(31),
      I1 => \^q_reg[3]_4\,
      I2 => r15(30),
      I3 => \Result0_carry__6_i_9_n_0\,
      O => \q[0]_i_77_n_0\
    );
\q[0]_i_78\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => rd10(1),
      I1 => \^q_reg[3]_4\,
      I2 => r15(0),
      I3 => \i_alu/aD2M4dsP\(1),
      O => \q[0]_i_78_n_0\
    );
\q[0]_i_79\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => rd10(19),
      I1 => \^q_reg[3]_4\,
      I2 => r15(18),
      I3 => \i_alu/aD2M4dsP\(19),
      O => \q[0]_i_79_n_0\
    );
\q[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFAEFFAEFFAE"
    )
        port map (
      I0 => \q[0]_i_29_n_0\,
      I1 => \ALUResult_OBUF[28]_inst_i_1_0\(26),
      I2 => \i_alu/aD2M4dsP\(27),
      I3 => \q[0]_i_30_n_0\,
      I4 => SrcB(16),
      I5 => \ALUResult_OBUF[28]_inst_i_1_0\(15),
      O => \q[0]_i_8_n_0\
    );
\q[0]_i_80\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => rd10(18),
      I1 => \^q_reg[3]_4\,
      I2 => r15(17),
      I3 => \i_alu/aD2M4dsP\(18),
      O => \q[0]_i_80_n_0\
    );
\q[0]_i_81\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => SrcB(12),
      I1 => rd10(12),
      I2 => \^q_reg[3]_4\,
      I3 => r15(11),
      O => \q[0]_i_81_n_0\
    );
\q[0]_i_82\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => rd10(14),
      I1 => \^q_reg[3]_4\,
      I2 => r15(13),
      I3 => \i_alu/aD2M4dsP\(14),
      O => \q[0]_i_82_n_0\
    );
\q[0]_i_83\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => rd10(3),
      I1 => \^q_reg[3]_4\,
      I2 => r15(2),
      I3 => \i_alu/aD2M4dsP\(3),
      O => \q[0]_i_83_n_0\
    );
\q[0]_i_84\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => rd10(2),
      I1 => \^q_reg[3]_4\,
      I2 => r15(1),
      I3 => \i_alu/aD2M4dsP\(2),
      O => \q[0]_i_84_n_0\
    );
\q[0]_i_85\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => rd10(27),
      I1 => \^q_reg[3]_4\,
      I2 => r15(26),
      I3 => \i_alu/aD2M4dsP\(27),
      O => \q[0]_i_85_n_0\
    );
\q[0]_i_86\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => rd10(8),
      I1 => \^q_reg[3]_4\,
      I2 => r15(7),
      I3 => \i_alu/aD2M4dsP\(8),
      O => \q[0]_i_86_n_0\
    );
\q[0]_i_87\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => rd10(7),
      I1 => \^q_reg[3]_4\,
      I2 => r15(6),
      I3 => \^q_reg[3]_3\(0),
      O => \q[0]_i_87_n_0\
    );
\q[0]_i_88\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0151"
    )
        port map (
      I0 => SrcB(22),
      I1 => rd10(22),
      I2 => \^q_reg[3]_1\,
      I3 => r15(21),
      O => \q[0]_i_88_n_0\
    );
\q[0]_i_89\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => SrcB(24),
      I1 => rd10(24),
      I2 => \^q_reg[3]_1\,
      I3 => r15(23),
      O => \q[0]_i_89_n_0\
    );
\q[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \q[0]_i_31_n_0\,
      I1 => \q[0]_i_32_n_0\,
      I2 => \q[0]_i_33_n_0\,
      I3 => \q[0]_i_34_n_0\,
      I4 => \q[0]_i_35_n_0\,
      I5 => \q[0]_i_36_n_0\,
      O => \q[0]_i_9_n_0\
    );
\q[0]_i_90\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => \i_alu/aD2M4dsP\(4),
      I1 => rd10(4),
      I2 => \^q_reg[3]_1\,
      I3 => r15(3),
      O => \q[0]_i_90_n_0\
    );
\q[0]_i_91\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => SrcB(16),
      I1 => rd10(16),
      I2 => \^q_reg[3]_1\,
      I3 => r15(15),
      O => \q[0]_i_91_n_0\
    );
\q[0]_i_92\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => SrcB(23),
      I1 => rd10(23),
      I2 => \^q_reg[3]_1\,
      I3 => r15(22),
      O => \q[0]_i_92_n_0\
    );
\q[0]_i_93\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => SrcB(0),
      I1 => SrcA(0),
      I2 => SrcB(20),
      I3 => \ALUResult_OBUF[28]_inst_i_1_0\(19),
      I4 => \i_alu/aD2M4dsP\(28),
      I5 => \ALUResult_OBUF[28]_inst_i_1_0\(27),
      O => \q[0]_i_93_n_0\
    );
\q[0]_i_98\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => SrcB(23),
      I1 => rd10(23),
      I2 => \^q_reg[3]_4\,
      I3 => r15(22),
      O => \q[0]_i_98_n_0\
    );
\q[0]_i_99\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \i_alu/aD2M4dsP\(19),
      I1 => rd10(19),
      I2 => \^q_reg[3]_4\,
      I3 => r15(18),
      O => \q[0]_i_99_n_0\
    );
\q[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF77780888000"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^q_reg[3]_1\,
      I2 => rd(16),
      I3 => \^q_reg[7]_0\,
      I4 => \^q_reg[6]_12\,
      I5 => \^pc\(15),
      O => \q[13]_i_2_n_0\
    );
\q[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF77780888000"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^q_reg[3]_1\,
      I2 => rd(15),
      I3 => \^q_reg[7]_0\,
      I4 => \^q_reg[6]_11\,
      I5 => \^pc\(14),
      O => \q[13]_i_3_n_0\
    );
\q[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF77780888000"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^q_reg[3]_1\,
      I2 => rd(14),
      I3 => \^q_reg[7]_0\,
      I4 => \^q_reg[6]_10\,
      I5 => \^pc\(13),
      O => \q[13]_i_4_n_0\
    );
\q[13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF77780888000"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^q_reg[3]_1\,
      I2 => rd(13),
      I3 => \^q_reg[7]_0\,
      I4 => \^q_reg[6]_9\,
      I5 => \^pc\(12),
      O => \q[13]_i_5_n_0\
    );
\q[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF77780888000"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^q_reg[3]_1\,
      I2 => rd(20),
      I3 => \^q_reg[7]_0\,
      I4 => \^q_reg[6]_16\,
      I5 => \^pc\(19),
      O => \q[17]_i_2_n_0\
    );
\q[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF77780888000"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^q_reg[3]_1\,
      I2 => rd(19),
      I3 => \^q_reg[7]_0\,
      I4 => \^q_reg[6]_15\,
      I5 => \^pc\(18),
      O => \q[17]_i_3_n_0\
    );
\q[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF77780888000"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^q_reg[3]_1\,
      I2 => rd(18),
      I3 => \^q_reg[7]_0\,
      I4 => \^q_reg[6]_14\,
      I5 => \^pc\(17),
      O => \q[17]_i_4_n_0\
    );
\q[17]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF77780888000"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^q_reg[3]_1\,
      I2 => rd(17),
      I3 => \^q_reg[7]_0\,
      I4 => \^q_reg[6]_13\,
      I5 => \^pc\(16),
      O => \q[17]_i_5_n_0\
    );
\q[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^instr_obuf\(14),
      O => en
    );
\q[1]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^q_reg[3]_1\,
      O => \q[1]_i_2__0_n_0\
    );
\q[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFDCEFDEFCDDDFDD"
    )
        port map (
      I0 => \^pc\(4),
      I1 => \^pc\(6),
      I2 => \^pc\(3),
      I3 => \^pc\(5),
      I4 => \^pc\(1),
      I5 => \^pc\(2),
      O => \q_reg[5]_0\
    );
\q[1]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F870F8F8F8707070"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^q_reg[3]_1\,
      I2 => \^pc\(3),
      I3 => rd(4),
      I4 => \^q_reg[7]_0\,
      I5 => \^q_reg[6]_27\(2),
      O => \q[1]_i_3__0_n_0\
    );
\q[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1004154500501544"
    )
        port map (
      I0 => \^pc\(6),
      I1 => \^pc\(3),
      I2 => \^pc\(2),
      I3 => \^pc\(5),
      I4 => \^pc\(4),
      I5 => \^pc\(1),
      O => \^q_reg[7]_1\
    );
\q[1]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F870F8F8F8707070"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^q_reg[3]_1\,
      I2 => \^pc\(2),
      I3 => rd(3),
      I4 => \^q_reg[7]_0\,
      I5 => \^q_reg[6]_27\(1),
      O => \q[1]_i_4__0_n_0\
    );
\q[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88800080FFF777F7"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^q_reg[3]_1\,
      I2 => \^q_reg[6]_27\(0),
      I3 => \^q_reg[7]_0\,
      I4 => rd(2),
      I5 => \^pc\(1),
      O => \q[1]_i_5_n_0\
    );
\q[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \Result0_carry__6_i_9_n_0\,
      I1 => rd10(31),
      I2 => \^q_reg[3]_1\,
      I3 => r15(30),
      O => \q[1]_i_6_n_0\
    );
\q[1]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF77780888000"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^q_reg[3]_1\,
      I2 => rd(1),
      I3 => \^q_reg[7]_0\,
      I4 => \^q_reg[6]_3\,
      I5 => \^pc\(0),
      O => \q[1]_i_6__0_n_0\
    );
\q[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF77780888000"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^q_reg[3]_1\,
      I2 => rd(24),
      I3 => \^q_reg[7]_0\,
      I4 => \^q_reg[6]_20\,
      I5 => \^pc\(23),
      O => \q[21]_i_2_n_0\
    );
\q[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF77780888000"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^q_reg[3]_1\,
      I2 => rd(23),
      I3 => \^q_reg[7]_0\,
      I4 => \^q_reg[6]_19\,
      I5 => \^pc\(22),
      O => \q[21]_i_3_n_0\
    );
\q[21]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF77780888000"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^q_reg[3]_1\,
      I2 => rd(22),
      I3 => \^q_reg[7]_0\,
      I4 => \^q_reg[6]_18\,
      I5 => \^pc\(21),
      O => \q[21]_i_4_n_0\
    );
\q[21]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF77780888000"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^q_reg[3]_1\,
      I2 => rd(21),
      I3 => \^q_reg[7]_0\,
      I4 => \^q_reg[6]_17\,
      I5 => \^pc\(20),
      O => \q[21]_i_5_n_0\
    );
\q[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F870F8F8F8707070"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^q_reg[3]_1\,
      I2 => \^pc\(27),
      I3 => rd(28),
      I4 => \^q_reg[7]_0\,
      I5 => \^q_reg[6]_26\,
      O => \q[25]_i_2_n_0\
    );
\q[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF77780888000"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^q_reg[3]_1\,
      I2 => rd(27),
      I3 => \^q_reg[7]_0\,
      I4 => \^q_reg[6]_23\,
      I5 => \^pc\(26),
      O => \q[25]_i_3_n_0\
    );
\q[25]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF77780888000"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^q_reg[3]_1\,
      I2 => rd(26),
      I3 => \^q_reg[7]_0\,
      I4 => \^q_reg[6]_22\,
      I5 => \^pc\(25),
      O => \q[25]_i_4_n_0\
    );
\q[25]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF77780888000"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^q_reg[3]_1\,
      I2 => rd(25),
      I3 => \^q_reg[7]_0\,
      I4 => \^q_reg[6]_21\,
      I5 => \^pc\(24),
      O => \q[25]_i_5_n_0\
    );
\q[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF77780888000"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^q_reg[3]_1\,
      I2 => rd(31),
      I3 => \^q_reg[7]_0\,
      I4 => \^q_reg[6]_1\,
      I5 => \^pc\(30),
      O => \q[29]_i_2_n_0\
    );
\q[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF77780888000"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^q_reg[3]_1\,
      I2 => rd(30),
      I3 => \^q_reg[7]_0\,
      I4 => \^q_reg[6]_2\,
      I5 => \^pc\(29),
      O => \q[29]_i_3_n_0\
    );
\q[29]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF77780888000"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^q_reg[3]_1\,
      I2 => rd(29),
      I3 => \^q_reg[7]_0\,
      I4 => \^q_reg[6]_24\,
      I5 => \^pc\(28),
      O => \q[29]_i_4_n_0\
    );
\q[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF77780888000"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^q_reg[3]_1\,
      I2 => rd(8),
      I3 => \^q_reg[7]_0\,
      I4 => \^q_reg[6]_7\,
      I5 => \^pc\(7),
      O => \q[5]_i_2_n_0\
    );
\q[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F870F8F8F8707070"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^q_reg[3]_1\,
      I2 => \^pc\(6),
      I3 => rd(7),
      I4 => \^q_reg[7]_0\,
      I5 => p_0_in(0),
      O => \q[5]_i_3_n_0\
    );
\q[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F070F0F0F0707070"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^q_reg[3]_1\,
      I2 => \^pc\(5),
      I3 => rd(6),
      I4 => \^q_reg[7]_0\,
      I5 => \^q_reg[6]_27\(4),
      O => \q[5]_i_4_n_0\
    );
\q[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F870F8F8F8707070"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^q_reg[3]_1\,
      I2 => \^pc\(4),
      I3 => rd(5),
      I4 => \^q_reg[7]_0\,
      I5 => \^q_reg[6]_27\(3),
      O => \q[5]_i_5_n_0\
    );
\q[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF77780888000"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^q_reg[3]_1\,
      I2 => rd(12),
      I3 => \^q_reg[7]_0\,
      I4 => \^q_reg[6]_8\,
      I5 => \^pc\(11),
      O => \q[9]_i_2_n_0\
    );
\q[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF77780888000"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^q_reg[3]_1\,
      I2 => rd(11),
      I3 => \^q_reg[7]_0\,
      I4 => \^q_reg[6]_6\,
      I5 => \^pc\(10),
      O => \q[9]_i_3_n_0\
    );
\q[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF77780888000"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^q_reg[3]_1\,
      I2 => rd(10),
      I3 => \^q_reg[7]_0\,
      I4 => \^q_reg[6]_5\,
      I5 => \^pc\(9),
      O => \q[9]_i_4_n_0\
    );
\q[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF77780888000"
    )
        port map (
      I0 => mem_reg_r1_0_15_0_5_i_15_n_0,
      I1 => \^q_reg[3]_1\,
      I2 => rd(9),
      I3 => \^q_reg[7]_0\,
      I4 => \^q_reg[6]_4\,
      I5 => \^pc\(8),
      O => \q[9]_i_5_n_0\
    );
\q_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => \q[0]_i_1_n_0\,
      Q => \^q_reg[0]_0\
    );
\q_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => CO(0),
      CO(3 downto 1) => \NLW_q_reg[0]_i_3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \Result0_carry__6\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_q_reg[0]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\q_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => \q_reg[9]_i_1_n_6\,
      Q => \^pc\(9)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => \q_reg[9]_i_1_n_5\,
      Q => \^pc\(10)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => \q_reg[9]_i_1_n_4\,
      Q => \^pc\(11)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => \q_reg[13]_i_1_n_7\,
      Q => \^pc\(12)
    );
\q_reg[13]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[9]_i_1_n_0\,
      CO(3) => \q_reg[13]_i_1_n_0\,
      CO(2) => \q_reg[13]_i_1_n_1\,
      CO(1) => \q_reg[13]_i_1_n_2\,
      CO(0) => \q_reg[13]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \q_reg[13]_i_1_n_4\,
      O(2) => \q_reg[13]_i_1_n_5\,
      O(1) => \q_reg[13]_i_1_n_6\,
      O(0) => \q_reg[13]_i_1_n_7\,
      S(3) => \q[13]_i_2_n_0\,
      S(2) => \q[13]_i_3_n_0\,
      S(1) => \q[13]_i_4_n_0\,
      S(0) => \q[13]_i_5_n_0\
    );
\q_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => \q_reg[13]_i_1_n_6\,
      Q => \^pc\(13)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => \q_reg[13]_i_1_n_5\,
      Q => \^pc\(14)
    );
\q_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => \q_reg[13]_i_1_n_4\,
      Q => \^pc\(15)
    );
\q_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => \q_reg[17]_i_1_n_7\,
      Q => \^pc\(16)
    );
\q_reg[17]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[13]_i_1_n_0\,
      CO(3) => \q_reg[17]_i_1_n_0\,
      CO(2) => \q_reg[17]_i_1_n_1\,
      CO(1) => \q_reg[17]_i_1_n_2\,
      CO(0) => \q_reg[17]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \q_reg[17]_i_1_n_4\,
      O(2) => \q_reg[17]_i_1_n_5\,
      O(1) => \q_reg[17]_i_1_n_6\,
      O(0) => \q_reg[17]_i_1_n_7\,
      S(3) => \q[17]_i_2_n_0\,
      S(2) => \q[17]_i_3_n_0\,
      S(1) => \q[17]_i_4_n_0\,
      S(0) => \q[17]_i_5_n_0\
    );
\q_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => \q_reg[17]_i_1_n_6\,
      Q => \^pc\(17)
    );
\q_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => \q_reg[17]_i_1_n_5\,
      Q => \^pc\(18)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_i_1_n_7\,
      Q => \^pc\(0)
    );
\q_reg[1]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \q_reg[1]_i_1_n_0\,
      CO(2) => \q_reg[1]_i_1_n_1\,
      CO(1) => \q_reg[1]_i_1_n_2\,
      CO(0) => \q_reg[1]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \q[1]_i_2__0_n_0\,
      DI(0) => '0',
      O(3) => \q_reg[1]_i_1_n_4\,
      O(2) => \q_reg[1]_i_1_n_5\,
      O(1) => \q_reg[1]_i_1_n_6\,
      O(0) => \q_reg[1]_i_1_n_7\,
      S(3) => \q[1]_i_3__0_n_0\,
      S(2) => \q[1]_i_4__0_n_0\,
      S(1) => \q[1]_i_5_n_0\,
      S(0) => \q[1]_i_6__0_n_0\
    );
\q_reg[1]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => \NLW_q_reg[1]_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \q_reg[1]_i_2_n_3\,
      CYINIT => \^result0_inferred__0/i__carry__6\(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_q_reg[1]_i_2_O_UNCONNECTED\(3 downto 2),
      O(1) => O(0),
      O(0) => \NLW_q_reg[1]_i_2_O_UNCONNECTED\(0),
      S(3 downto 2) => B"00",
      S(1) => \q[1]_i_6_n_0\,
      S(0) => '1'
    );
\q_reg[1]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \q[0]_i_2__0\(0),
      CO(3 downto 1) => \NLW_q_reg[1]_i_5_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \^result0_inferred__0/i__carry__6\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_q_reg[1]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\q_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => \q_reg[17]_i_1_n_4\,
      Q => \^pc\(19)
    );
\q_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => \q_reg[21]_i_1_n_7\,
      Q => \^pc\(20)
    );
\q_reg[21]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[17]_i_1_n_0\,
      CO(3) => \q_reg[21]_i_1_n_0\,
      CO(2) => \q_reg[21]_i_1_n_1\,
      CO(1) => \q_reg[21]_i_1_n_2\,
      CO(0) => \q_reg[21]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \q_reg[21]_i_1_n_4\,
      O(2) => \q_reg[21]_i_1_n_5\,
      O(1) => \q_reg[21]_i_1_n_6\,
      O(0) => \q_reg[21]_i_1_n_7\,
      S(3) => \q[21]_i_2_n_0\,
      S(2) => \q[21]_i_3_n_0\,
      S(1) => \q[21]_i_4_n_0\,
      S(0) => \q[21]_i_5_n_0\
    );
\q_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => \q_reg[21]_i_1_n_6\,
      Q => \^pc\(21)
    );
\q_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => \q_reg[21]_i_1_n_5\,
      Q => \^pc\(22)
    );
\q_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => \q_reg[21]_i_1_n_4\,
      Q => \^pc\(23)
    );
\q_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => \q_reg[25]_i_1_n_7\,
      Q => \^pc\(24)
    );
\q_reg[25]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[21]_i_1_n_0\,
      CO(3) => \q_reg[25]_i_1_n_0\,
      CO(2) => \q_reg[25]_i_1_n_1\,
      CO(1) => \q_reg[25]_i_1_n_2\,
      CO(0) => \q_reg[25]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \q_reg[25]_i_1_n_4\,
      O(2) => \q_reg[25]_i_1_n_5\,
      O(1) => \q_reg[25]_i_1_n_6\,
      O(0) => \q_reg[25]_i_1_n_7\,
      S(3) => \q[25]_i_2_n_0\,
      S(2) => \q[25]_i_3_n_0\,
      S(1) => \q[25]_i_4_n_0\,
      S(0) => \q[25]_i_5_n_0\
    );
\q_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => \q_reg[25]_i_1_n_6\,
      Q => \^pc\(25)
    );
\q_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => \q_reg[25]_i_1_n_5\,
      Q => \^pc\(26)
    );
\q_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => \q_reg[25]_i_1_n_4\,
      Q => \^pc\(27)
    );
\q_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => \q_reg[29]_i_1_n_7\,
      Q => \^pc\(28)
    );
\q_reg[29]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[25]_i_1_n_0\,
      CO(3 downto 2) => \NLW_q_reg[29]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \q_reg[29]_i_1_n_2\,
      CO(0) => \q_reg[29]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_q_reg[29]_i_1_O_UNCONNECTED\(3),
      O(2) => \q_reg[29]_i_1_n_5\,
      O(1) => \q_reg[29]_i_1_n_6\,
      O(0) => \q_reg[29]_i_1_n_7\,
      S(3) => '0',
      S(2) => \q[29]_i_2_n_0\,
      S(1) => \q[29]_i_3_n_0\,
      S(0) => \q[29]_i_4_n_0\
    );
\q_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_i_1_n_6\,
      Q => \^pc\(1)
    );
\q_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => \q_reg[29]_i_1_n_6\,
      Q => \^pc\(29)
    );
\q_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => \q_reg[29]_i_1_n_5\,
      Q => \^pc\(30)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_i_1_n_5\,
      Q => \^pc\(2)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_i_1_n_4\,
      Q => \^pc\(3)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => \q_reg[5]_i_1_n_7\,
      Q => \^pc\(4)
    );
\q_reg[5]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[1]_i_1_n_0\,
      CO(3) => \q_reg[5]_i_1_n_0\,
      CO(2) => \q_reg[5]_i_1_n_1\,
      CO(1) => \q_reg[5]_i_1_n_2\,
      CO(0) => \q_reg[5]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \q_reg[5]_i_1_n_4\,
      O(2) => \q_reg[5]_i_1_n_5\,
      O(1) => \q_reg[5]_i_1_n_6\,
      O(0) => \q_reg[5]_i_1_n_7\,
      S(3) => \q[5]_i_2_n_0\,
      S(2) => \q[5]_i_3_n_0\,
      S(1) => \q[5]_i_4_n_0\,
      S(0) => \q[5]_i_5_n_0\
    );
\q_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => \q_reg[5]_i_1_n_6\,
      Q => \^pc\(5)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => \q_reg[5]_i_1_n_5\,
      Q => \^pc\(6)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => \q_reg[5]_i_1_n_4\,
      Q => \^pc\(7)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => \q_reg[9]_i_1_n_7\,
      Q => \^pc\(8)
    );
\q_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[5]_i_1_n_0\,
      CO(3) => \q_reg[9]_i_1_n_0\,
      CO(2) => \q_reg[9]_i_1_n_1\,
      CO(1) => \q_reg[9]_i_1_n_2\,
      CO(0) => \q_reg[9]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \q_reg[9]_i_1_n_4\,
      O(2) => \q_reg[9]_i_1_n_5\,
      O(1) => \q_reg[9]_i_1_n_6\,
      O(0) => \q_reg[9]_i_1_n_7\,
      S(3) => \q[9]_i_2_n_0\,
      S(2) => \q[9]_i_3_n_0\,
      S(1) => \q[9]_i_4_n_0\,
      S(0) => \q[9]_i_5_n_0\
    );
\y0_carry__0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => y0_carry_i_1_n_0,
      CO(3) => \y0_carry__0_i_1_n_0\,
      CO(2) => \y0_carry__0_i_1_n_1\,
      CO(1) => \y0_carry__0_i_1_n_2\,
      CO(0) => \y0_carry__0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^d1\(7 downto 4),
      S(3 downto 0) => \^pc\(7 downto 4)
    );
\y0_carry__1_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y0_carry__0_i_1_n_0\,
      CO(3) => \y0_carry__1_i_1_n_0\,
      CO(2) => \y0_carry__1_i_1_n_1\,
      CO(1) => \y0_carry__1_i_1_n_2\,
      CO(0) => \y0_carry__1_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^d1\(11 downto 8),
      S(3 downto 0) => \^pc\(11 downto 8)
    );
\y0_carry__2_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y0_carry__1_i_1_n_0\,
      CO(3) => \y0_carry__2_i_1_n_0\,
      CO(2) => \y0_carry__2_i_1_n_1\,
      CO(1) => \y0_carry__2_i_1_n_2\,
      CO(0) => \y0_carry__2_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^d1\(15 downto 12),
      S(3 downto 0) => \^pc\(15 downto 12)
    );
\y0_carry__3_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y0_carry__2_i_1_n_0\,
      CO(3) => \y0_carry__3_i_1_n_0\,
      CO(2) => \y0_carry__3_i_1_n_1\,
      CO(1) => \y0_carry__3_i_1_n_2\,
      CO(0) => \y0_carry__3_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^d1\(19 downto 16),
      S(3 downto 0) => \^pc\(19 downto 16)
    );
\y0_carry__4_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y0_carry__3_i_1_n_0\,
      CO(3) => \y0_carry__4_i_1_n_0\,
      CO(2) => \y0_carry__4_i_1_n_1\,
      CO(1) => \y0_carry__4_i_1_n_2\,
      CO(0) => \y0_carry__4_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^d1\(23 downto 20),
      S(3 downto 0) => \^pc\(23 downto 20)
    );
\y0_carry__5_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y0_carry__4_i_1_n_0\,
      CO(3) => \y0_carry__5_i_1_n_0\,
      CO(2) => \y0_carry__5_i_1_n_1\,
      CO(1) => \y0_carry__5_i_1_n_2\,
      CO(0) => \y0_carry__5_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^d1\(27 downto 24),
      S(3 downto 0) => \^pc\(27 downto 24)
    );
\y0_carry__6_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y0_carry__5_i_1_n_0\,
      CO(3 downto 2) => \NLW_y0_carry__6_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \y0_carry__6_i_1_n_2\,
      CO(0) => \y0_carry__6_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_y0_carry__6_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => \^d1\(30 downto 28),
      S(3) => '0',
      S(2 downto 0) => \^pc\(30 downto 28)
    );
y0_carry_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => y0_carry_i_1_n_0,
      CO(2) => y0_carry_i_1_n_1,
      CO(1) => y0_carry_i_1_n_2,
      CO(0) => y0_carry_i_1_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \^pc\(1),
      DI(0) => '0',
      O(3 downto 0) => \^d1\(3 downto 0),
      S(3 downto 2) => \^pc\(3 downto 2),
      S(1) => y0_carry_i_3_n_0,
      S(0) => \^pc\(0)
    );
y0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^d1\(1),
      O => \q_reg[2]_0\(0)
    );
y0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^pc\(1),
      O => y0_carry_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity regfile is
  port (
    rd10 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rd20 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \q_reg[3]\ : out STD_LOGIC;
    wd : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \q_reg[3]_0\ : out STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    wd3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RegWrite : in STD_LOGIC;
    ADDRD : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[1]_i_6\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ADDRA : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \WriteData[20]\ : in STD_LOGIC;
    r15 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end regfile;

architecture STRUCTURE of regfile is
  signal \^rd20\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_r1_0_15_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_r1_0_15_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_r1_0_15_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_r1_0_15_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_r1_0_15_30_31_SPO_UNCONNECTED : STD_LOGIC;
  signal \NLW_mem_reg_r1_0_15_30_31__0_SPO_UNCONNECTED\ : STD_LOGIC;
  signal NLW_mem_reg_r1_0_15_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_r2_0_15_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_r2_0_15_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_r2_0_15_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_r2_0_15_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_r2_0_15_30_31_SPO_UNCONNECTED : STD_LOGIC;
  signal \NLW_mem_reg_r2_0_15_30_31__0_SPO_UNCONNECTED\ : STD_LOGIC;
  signal NLW_mem_reg_r2_0_15_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ALUResult_OBUF[16]_inst_i_6\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \ALUResult_OBUF[22]_inst_i_6\ : label is "soft_lutpair68";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_r1_0_15_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_r1_0_15_0_5 : label is 512;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_r1_0_15_0_5 : label is "dp/rf/mem";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg_r1_0_15_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_r1_0_15_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_r1_0_15_0_5 : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_r1_0_15_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_r1_0_15_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_r1_0_15_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_r1_0_15_12_17 : label is "";
  attribute RTL_RAM_BITS of mem_reg_r1_0_15_12_17 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_r1_0_15_12_17 : label is "dp/rf/mem";
  attribute RTL_RAM_TYPE of mem_reg_r1_0_15_12_17 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_r1_0_15_12_17 : label is 0;
  attribute ram_addr_end of mem_reg_r1_0_15_12_17 : label is 15;
  attribute ram_offset of mem_reg_r1_0_15_12_17 : label is 0;
  attribute ram_slice_begin of mem_reg_r1_0_15_12_17 : label is 12;
  attribute ram_slice_end of mem_reg_r1_0_15_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_r1_0_15_18_23 : label is "";
  attribute RTL_RAM_BITS of mem_reg_r1_0_15_18_23 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_r1_0_15_18_23 : label is "dp/rf/mem";
  attribute RTL_RAM_TYPE of mem_reg_r1_0_15_18_23 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_r1_0_15_18_23 : label is 0;
  attribute ram_addr_end of mem_reg_r1_0_15_18_23 : label is 15;
  attribute ram_offset of mem_reg_r1_0_15_18_23 : label is 0;
  attribute ram_slice_begin of mem_reg_r1_0_15_18_23 : label is 18;
  attribute ram_slice_end of mem_reg_r1_0_15_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_r1_0_15_24_29 : label is "";
  attribute RTL_RAM_BITS of mem_reg_r1_0_15_24_29 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_r1_0_15_24_29 : label is "dp/rf/mem";
  attribute RTL_RAM_TYPE of mem_reg_r1_0_15_24_29 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_r1_0_15_24_29 : label is 0;
  attribute ram_addr_end of mem_reg_r1_0_15_24_29 : label is 15;
  attribute ram_offset of mem_reg_r1_0_15_24_29 : label is 0;
  attribute ram_slice_begin of mem_reg_r1_0_15_24_29 : label is 24;
  attribute ram_slice_end of mem_reg_r1_0_15_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_r1_0_15_30_31 : label is "";
  attribute RTL_RAM_BITS of mem_reg_r1_0_15_30_31 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_r1_0_15_30_31 : label is "dp/rf/mem";
  attribute RTL_RAM_TYPE of mem_reg_r1_0_15_30_31 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_r1_0_15_30_31 : label is 0;
  attribute ram_addr_end of mem_reg_r1_0_15_30_31 : label is 15;
  attribute ram_offset of mem_reg_r1_0_15_30_31 : label is 0;
  attribute ram_slice_begin of mem_reg_r1_0_15_30_31 : label is 30;
  attribute ram_slice_end of mem_reg_r1_0_15_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of \mem_reg_r1_0_15_30_31__0\ : label is "";
  attribute RTL_RAM_BITS of \mem_reg_r1_0_15_30_31__0\ : label is 512;
  attribute RTL_RAM_NAME of \mem_reg_r1_0_15_30_31__0\ : label is "dp/rf/mem";
  attribute RTL_RAM_TYPE of \mem_reg_r1_0_15_30_31__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \mem_reg_r1_0_15_30_31__0\ : label is 0;
  attribute ram_addr_end of \mem_reg_r1_0_15_30_31__0\ : label is 15;
  attribute ram_offset of \mem_reg_r1_0_15_30_31__0\ : label is 0;
  attribute ram_slice_begin of \mem_reg_r1_0_15_30_31__0\ : label is 30;
  attribute ram_slice_end of \mem_reg_r1_0_15_30_31__0\ : label is 31;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_r1_0_15_6_11 : label is "";
  attribute RTL_RAM_BITS of mem_reg_r1_0_15_6_11 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_r1_0_15_6_11 : label is "dp/rf/mem";
  attribute RTL_RAM_TYPE of mem_reg_r1_0_15_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_r1_0_15_6_11 : label is 0;
  attribute ram_addr_end of mem_reg_r1_0_15_6_11 : label is 15;
  attribute ram_offset of mem_reg_r1_0_15_6_11 : label is 0;
  attribute ram_slice_begin of mem_reg_r1_0_15_6_11 : label is 6;
  attribute ram_slice_end of mem_reg_r1_0_15_6_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_r2_0_15_0_5 : label is "";
  attribute RTL_RAM_BITS of mem_reg_r2_0_15_0_5 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_r2_0_15_0_5 : label is "dp/rf/mem";
  attribute RTL_RAM_TYPE of mem_reg_r2_0_15_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_r2_0_15_0_5 : label is 0;
  attribute ram_addr_end of mem_reg_r2_0_15_0_5 : label is 15;
  attribute ram_offset of mem_reg_r2_0_15_0_5 : label is 0;
  attribute ram_slice_begin of mem_reg_r2_0_15_0_5 : label is 0;
  attribute ram_slice_end of mem_reg_r2_0_15_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_r2_0_15_12_17 : label is "";
  attribute RTL_RAM_BITS of mem_reg_r2_0_15_12_17 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_r2_0_15_12_17 : label is "dp/rf/mem";
  attribute RTL_RAM_TYPE of mem_reg_r2_0_15_12_17 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_r2_0_15_12_17 : label is 0;
  attribute ram_addr_end of mem_reg_r2_0_15_12_17 : label is 15;
  attribute ram_offset of mem_reg_r2_0_15_12_17 : label is 0;
  attribute ram_slice_begin of mem_reg_r2_0_15_12_17 : label is 12;
  attribute ram_slice_end of mem_reg_r2_0_15_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_r2_0_15_18_23 : label is "";
  attribute RTL_RAM_BITS of mem_reg_r2_0_15_18_23 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_r2_0_15_18_23 : label is "dp/rf/mem";
  attribute RTL_RAM_TYPE of mem_reg_r2_0_15_18_23 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_r2_0_15_18_23 : label is 0;
  attribute ram_addr_end of mem_reg_r2_0_15_18_23 : label is 15;
  attribute ram_offset of mem_reg_r2_0_15_18_23 : label is 0;
  attribute ram_slice_begin of mem_reg_r2_0_15_18_23 : label is 18;
  attribute ram_slice_end of mem_reg_r2_0_15_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_r2_0_15_24_29 : label is "";
  attribute RTL_RAM_BITS of mem_reg_r2_0_15_24_29 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_r2_0_15_24_29 : label is "dp/rf/mem";
  attribute RTL_RAM_TYPE of mem_reg_r2_0_15_24_29 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_r2_0_15_24_29 : label is 0;
  attribute ram_addr_end of mem_reg_r2_0_15_24_29 : label is 15;
  attribute ram_offset of mem_reg_r2_0_15_24_29 : label is 0;
  attribute ram_slice_begin of mem_reg_r2_0_15_24_29 : label is 24;
  attribute ram_slice_end of mem_reg_r2_0_15_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_r2_0_15_30_31 : label is "";
  attribute RTL_RAM_BITS of mem_reg_r2_0_15_30_31 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_r2_0_15_30_31 : label is "dp/rf/mem";
  attribute RTL_RAM_TYPE of mem_reg_r2_0_15_30_31 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_r2_0_15_30_31 : label is 0;
  attribute ram_addr_end of mem_reg_r2_0_15_30_31 : label is 15;
  attribute ram_offset of mem_reg_r2_0_15_30_31 : label is 0;
  attribute ram_slice_begin of mem_reg_r2_0_15_30_31 : label is 30;
  attribute ram_slice_end of mem_reg_r2_0_15_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of \mem_reg_r2_0_15_30_31__0\ : label is "";
  attribute RTL_RAM_BITS of \mem_reg_r2_0_15_30_31__0\ : label is 512;
  attribute RTL_RAM_NAME of \mem_reg_r2_0_15_30_31__0\ : label is "dp/rf/mem";
  attribute RTL_RAM_TYPE of \mem_reg_r2_0_15_30_31__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \mem_reg_r2_0_15_30_31__0\ : label is 0;
  attribute ram_addr_end of \mem_reg_r2_0_15_30_31__0\ : label is 15;
  attribute ram_offset of \mem_reg_r2_0_15_30_31__0\ : label is 0;
  attribute ram_slice_begin of \mem_reg_r2_0_15_30_31__0\ : label is 30;
  attribute ram_slice_end of \mem_reg_r2_0_15_30_31__0\ : label is 31;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_r2_0_15_6_11 : label is "";
  attribute RTL_RAM_BITS of mem_reg_r2_0_15_6_11 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_r2_0_15_6_11 : label is "dp/rf/mem";
  attribute RTL_RAM_TYPE of mem_reg_r2_0_15_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_r2_0_15_6_11 : label is 0;
  attribute ram_addr_end of mem_reg_r2_0_15_6_11 : label is 15;
  attribute ram_offset of mem_reg_r2_0_15_6_11 : label is 0;
  attribute ram_slice_begin of mem_reg_r2_0_15_6_11 : label is 6;
  attribute ram_slice_end of mem_reg_r2_0_15_6_11 : label is 11;
begin
  rd20(31 downto 0) <= \^rd20\(31 downto 0);
\ALUResult_OBUF[16]_inst_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \^rd20\(16),
      I1 => \WriteData[20]\,
      I2 => r15(1),
      O => \q_reg[3]\
    );
\ALUResult_OBUF[22]_inst_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \^rd20\(22),
      I1 => \WriteData[20]\,
      I2 => r15(3),
      O => \q_reg[3]_0\
    );
\WriteData_OBUF[20]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^rd20\(20),
      I1 => \WriteData[20]\,
      I2 => r15(2),
      O => wd(1)
    );
\WriteData_OBUF[24]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^rd20\(24),
      I1 => \WriteData[20]\,
      I2 => r15(4),
      O => wd(2)
    );
\WriteData_OBUF[25]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^rd20\(25),
      I1 => \WriteData[20]\,
      I2 => r15(5),
      O => wd(3)
    );
\WriteData_OBUF[26]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^rd20\(26),
      I1 => \WriteData[20]\,
      I2 => r15(6),
      O => wd(4)
    );
\WriteData_OBUF[28]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^rd20\(28),
      I1 => \WriteData[20]\,
      I2 => r15(7),
      O => wd(5)
    );
\WriteData_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^rd20\(4),
      I1 => \WriteData[20]\,
      I2 => r15(0),
      O => wd(0)
    );
mem_reg_r1_0_15_0_5: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \q[1]_i_6\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \q[1]_i_6\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \q[1]_i_6\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => ADDRD(3 downto 0),
      DIA(1 downto 0) => wd3(1 downto 0),
      DIB(1 downto 0) => wd3(3 downto 2),
      DIC(1 downto 0) => wd3(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(1 downto 0),
      DOB(1 downto 0) => rd10(3 downto 2),
      DOC(1 downto 0) => rd10(5 downto 4),
      DOD(1 downto 0) => NLW_mem_reg_r1_0_15_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_IBUF_BUFG,
      WE => RegWrite
    );
mem_reg_r1_0_15_12_17: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \q[1]_i_6\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \q[1]_i_6\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \q[1]_i_6\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => ADDRD(3 downto 0),
      DIA(1 downto 0) => wd3(13 downto 12),
      DIB(1 downto 0) => wd3(15 downto 14),
      DIC(1 downto 0) => wd3(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(13 downto 12),
      DOB(1 downto 0) => rd10(15 downto 14),
      DOC(1 downto 0) => rd10(17 downto 16),
      DOD(1 downto 0) => NLW_mem_reg_r1_0_15_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_IBUF_BUFG,
      WE => RegWrite
    );
mem_reg_r1_0_15_18_23: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \q[1]_i_6\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \q[1]_i_6\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \q[1]_i_6\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => ADDRD(3 downto 0),
      DIA(1 downto 0) => wd3(19 downto 18),
      DIB(1 downto 0) => wd3(21 downto 20),
      DIC(1 downto 0) => wd3(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(19 downto 18),
      DOB(1 downto 0) => rd10(21 downto 20),
      DOC(1 downto 0) => rd10(23 downto 22),
      DOD(1 downto 0) => NLW_mem_reg_r1_0_15_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_IBUF_BUFG,
      WE => RegWrite
    );
mem_reg_r1_0_15_24_29: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \q[1]_i_6\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \q[1]_i_6\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \q[1]_i_6\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => ADDRD(3 downto 0),
      DIA(1 downto 0) => wd3(25 downto 24),
      DIB(1 downto 0) => wd3(27 downto 26),
      DIC(1 downto 0) => wd3(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(25 downto 24),
      DOB(1 downto 0) => rd10(27 downto 26),
      DOC(1 downto 0) => rd10(29 downto 28),
      DOD(1 downto 0) => NLW_mem_reg_r1_0_15_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_IBUF_BUFG,
      WE => RegWrite
    );
mem_reg_r1_0_15_30_31: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => '0',
      D => wd3(30),
      DPO => rd10(30),
      DPRA0 => \q[1]_i_6\(0),
      DPRA1 => \q[1]_i_6\(1),
      DPRA2 => \q[1]_i_6\(2),
      DPRA3 => \q[1]_i_6\(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_r1_0_15_30_31_SPO_UNCONNECTED,
      WCLK => clk_IBUF_BUFG,
      WE => RegWrite
    );
\mem_reg_r1_0_15_30_31__0\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => '0',
      D => wd3(31),
      DPO => rd10(31),
      DPRA0 => \q[1]_i_6\(0),
      DPRA1 => \q[1]_i_6\(1),
      DPRA2 => \q[1]_i_6\(2),
      DPRA3 => \q[1]_i_6\(3),
      DPRA4 => '0',
      SPO => \NLW_mem_reg_r1_0_15_30_31__0_SPO_UNCONNECTED\,
      WCLK => clk_IBUF_BUFG,
      WE => RegWrite
    );
mem_reg_r1_0_15_6_11: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \q[1]_i_6\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \q[1]_i_6\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \q[1]_i_6\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => ADDRD(3 downto 0),
      DIA(1 downto 0) => wd3(7 downto 6),
      DIB(1 downto 0) => wd3(9 downto 8),
      DIC(1 downto 0) => wd3(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(7 downto 6),
      DOB(1 downto 0) => rd10(9 downto 8),
      DOC(1 downto 0) => rd10(11 downto 10),
      DOD(1 downto 0) => NLW_mem_reg_r1_0_15_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_IBUF_BUFG,
      WE => RegWrite
    );
mem_reg_r2_0_15_0_5: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => ADDRA(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => ADDRA(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => ADDRA(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => ADDRD(3 downto 0),
      DIA(1 downto 0) => wd3(1 downto 0),
      DIB(1 downto 0) => wd3(3 downto 2),
      DIC(1 downto 0) => wd3(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^rd20\(1 downto 0),
      DOB(1 downto 0) => \^rd20\(3 downto 2),
      DOC(1 downto 0) => \^rd20\(5 downto 4),
      DOD(1 downto 0) => NLW_mem_reg_r2_0_15_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_IBUF_BUFG,
      WE => RegWrite
    );
mem_reg_r2_0_15_12_17: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => ADDRA(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => ADDRA(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => ADDRA(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => ADDRD(3 downto 0),
      DIA(1 downto 0) => wd3(13 downto 12),
      DIB(1 downto 0) => wd3(15 downto 14),
      DIC(1 downto 0) => wd3(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^rd20\(13 downto 12),
      DOB(1 downto 0) => \^rd20\(15 downto 14),
      DOC(1 downto 0) => \^rd20\(17 downto 16),
      DOD(1 downto 0) => NLW_mem_reg_r2_0_15_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_IBUF_BUFG,
      WE => RegWrite
    );
mem_reg_r2_0_15_18_23: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => ADDRA(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => ADDRA(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => ADDRA(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => ADDRD(3 downto 0),
      DIA(1 downto 0) => wd3(19 downto 18),
      DIB(1 downto 0) => wd3(21 downto 20),
      DIC(1 downto 0) => wd3(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^rd20\(19 downto 18),
      DOB(1 downto 0) => \^rd20\(21 downto 20),
      DOC(1 downto 0) => \^rd20\(23 downto 22),
      DOD(1 downto 0) => NLW_mem_reg_r2_0_15_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_IBUF_BUFG,
      WE => RegWrite
    );
mem_reg_r2_0_15_24_29: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => ADDRA(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => ADDRA(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => ADDRA(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => ADDRD(3 downto 0),
      DIA(1 downto 0) => wd3(25 downto 24),
      DIB(1 downto 0) => wd3(27 downto 26),
      DIC(1 downto 0) => wd3(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^rd20\(25 downto 24),
      DOB(1 downto 0) => \^rd20\(27 downto 26),
      DOC(1 downto 0) => \^rd20\(29 downto 28),
      DOD(1 downto 0) => NLW_mem_reg_r2_0_15_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_IBUF_BUFG,
      WE => RegWrite
    );
mem_reg_r2_0_15_30_31: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => '0',
      D => wd3(30),
      DPO => \^rd20\(30),
      DPRA0 => ADDRA(0),
      DPRA1 => ADDRA(1),
      DPRA2 => ADDRA(2),
      DPRA3 => ADDRA(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_r2_0_15_30_31_SPO_UNCONNECTED,
      WCLK => clk_IBUF_BUFG,
      WE => RegWrite
    );
\mem_reg_r2_0_15_30_31__0\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => '0',
      D => wd3(31),
      DPO => \^rd20\(31),
      DPRA0 => ADDRA(0),
      DPRA1 => ADDRA(1),
      DPRA2 => ADDRA(2),
      DPRA3 => ADDRA(3),
      DPRA4 => '0',
      SPO => \NLW_mem_reg_r2_0_15_30_31__0_SPO_UNCONNECTED\,
      WCLK => clk_IBUF_BUFG,
      WE => RegWrite
    );
mem_reg_r2_0_15_6_11: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => ADDRA(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => ADDRA(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => ADDRA(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => ADDRD(3 downto 0),
      DIA(1 downto 0) => wd3(7 downto 6),
      DIB(1 downto 0) => wd3(9 downto 8),
      DIC(1 downto 0) => wd3(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^rd20\(7 downto 6),
      DOB(1 downto 0) => \^rd20\(9 downto 8),
      DOC(1 downto 0) => \^rd20\(11 downto 10),
      DOD(1 downto 0) => NLW_mem_reg_r2_0_15_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_IBUF_BUFG,
      WE => RegWrite
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity condlogic is
  port (
    q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[0]\ : out STD_LOGIC;
    \q_reg[0]_0\ : out STD_LOGIC;
    \q_reg[1]\ : out STD_LOGIC;
    ALUResult_OBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    en : in STD_LOGIC;
    \q_reg[0]_1\ : in STD_LOGIC;
    \q_reg[0]_2\ : in STD_LOGIC;
    \q_reg[0]_3\ : in STD_LOGIC;
    \q_reg[0]_4\ : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC;
    ALUFlags : in STD_LOGIC_VECTOR ( 0 to 0 );
    Instr_OBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[0]_5\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[1]_0\ : in STD_LOGIC
  );
end condlogic;

architecture STRUCTURE of condlogic is
begin
flagreg0: entity work.flopenr
     port map (
      ALUFlags(0) => ALUFlags(0),
      Instr_OBUF(0) => Instr_OBUF(0),
      O(0) => O(0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \q_reg[0]_0\ => \q_reg[0]_0\,
      \q_reg[0]_1\ => \q_reg[0]_5\,
      \q_reg[1]_0\ => \q_reg[1]\,
      \q_reg[1]_1\ => \q_reg[1]_0\,
      reset_IBUF => reset_IBUF
    );
flagreg1: entity work.flopenr_0
     port map (
      ALUResult_OBUF(0) => ALUResult_OBUF(0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      en => en,
      q(0) => q(0),
      \q_reg[0]_0\ => \q_reg[0]\,
      \q_reg[0]_1\ => \q_reg[0]_1\,
      \q_reg[0]_2\ => \q_reg[0]_2\,
      \q_reg[0]_3\ => \q_reg[0]_3\,
      \q_reg[0]_4\ => \q_reg[0]_4\,
      reset_IBUF => reset_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity datapath is
  port (
    Instr_OBUF : out STD_LOGIC_VECTOR ( 27 downto 0 );
    PC : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ALUResult_OBUF : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wd : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Result_OBUF : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \q_reg[6]\ : out STD_LOGIC;
    \q_reg[7]\ : out STD_LOGIC;
    \q_reg[6]_0\ : out STD_LOGIC;
    \q_reg[6]_1\ : out STD_LOGIC;
    ALUFlags : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[5]\ : out STD_LOGIC;
    \q_reg[7]_0\ : out STD_LOGIC;
    en : out STD_LOGIC;
    O : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[0]\ : in STD_LOGIC;
    mem_reg_r1_0_15_0_5_i_15 : in STD_LOGIC;
    mem_reg_r1_0_15_0_5_i_15_0 : in STD_LOGIC
  );
end datapath;

architecture STRUCTURE of datapath is
  signal \^aluresult_obuf\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^instr_obuf\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal MemWrite : STD_LOGIC;
  signal RA1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal RA2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal RA3 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal RegWrite : STD_LOGIC;
  signal SrcA : STD_LOGIC_VECTOR ( 28 downto 1 );
  signal aD2M4dsP : STD_LOGIC_VECTOR ( 7 to 7 );
  signal d1 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal i_alu_n_31 : STD_LOGIC;
  signal i_alu_n_63 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pcadd2_n_100 : STD_LOGIC;
  signal pcadd2_n_101 : STD_LOGIC;
  signal pcadd2_n_102 : STD_LOGIC;
  signal pcadd2_n_103 : STD_LOGIC;
  signal pcadd2_n_104 : STD_LOGIC;
  signal pcadd2_n_105 : STD_LOGIC;
  signal pcadd2_n_106 : STD_LOGIC;
  signal pcadd2_n_107 : STD_LOGIC;
  signal pcadd2_n_108 : STD_LOGIC;
  signal pcadd2_n_109 : STD_LOGIC;
  signal pcadd2_n_110 : STD_LOGIC;
  signal pcadd2_n_111 : STD_LOGIC;
  signal pcadd2_n_112 : STD_LOGIC;
  signal pcadd2_n_113 : STD_LOGIC;
  signal pcadd2_n_114 : STD_LOGIC;
  signal pcadd2_n_115 : STD_LOGIC;
  signal pcadd2_n_116 : STD_LOGIC;
  signal pcadd2_n_117 : STD_LOGIC;
  signal pcadd2_n_118 : STD_LOGIC;
  signal pcadd2_n_119 : STD_LOGIC;
  signal pcadd2_n_120 : STD_LOGIC;
  signal pcadd2_n_121 : STD_LOGIC;
  signal pcadd2_n_122 : STD_LOGIC;
  signal pcadd2_n_123 : STD_LOGIC;
  signal pcadd2_n_124 : STD_LOGIC;
  signal pcadd2_n_125 : STD_LOGIC;
  signal pcadd2_n_126 : STD_LOGIC;
  signal pcadd2_n_127 : STD_LOGIC;
  signal pcadd2_n_128 : STD_LOGIC;
  signal pcadd2_n_129 : STD_LOGIC;
  signal pcadd2_n_130 : STD_LOGIC;
  signal pcadd2_n_131 : STD_LOGIC;
  signal pcadd2_n_132 : STD_LOGIC;
  signal pcadd2_n_133 : STD_LOGIC;
  signal pcadd2_n_81 : STD_LOGIC;
  signal pcadd2_n_82 : STD_LOGIC;
  signal pcadd2_n_83 : STD_LOGIC;
  signal pcadd2_n_84 : STD_LOGIC;
  signal pcadd2_n_85 : STD_LOGIC;
  signal pcadd2_n_86 : STD_LOGIC;
  signal pcadd2_n_87 : STD_LOGIC;
  signal pcadd2_n_88 : STD_LOGIC;
  signal pcadd2_n_89 : STD_LOGIC;
  signal pcadd2_n_90 : STD_LOGIC;
  signal pcadd2_n_91 : STD_LOGIC;
  signal pcadd2_n_92 : STD_LOGIC;
  signal pcadd2_n_93 : STD_LOGIC;
  signal pcadd2_n_94 : STD_LOGIC;
  signal pcadd2_n_95 : STD_LOGIC;
  signal pcadd2_n_96 : STD_LOGIC;
  signal pcadd2_n_97 : STD_LOGIC;
  signal pcadd2_n_98 : STD_LOGIC;
  signal pcadd2_n_99 : STD_LOGIC;
  signal pcreg_n_225 : STD_LOGIC;
  signal pcreg_n_233 : STD_LOGIC;
  signal pcreg_n_272 : STD_LOGIC;
  signal pcreg_n_273 : STD_LOGIC;
  signal pcreg_n_275 : STD_LOGIC;
  signal pcreg_n_276 : STD_LOGIC;
  signal pcreg_n_277 : STD_LOGIC;
  signal pcreg_n_278 : STD_LOGIC;
  signal pcreg_n_279 : STD_LOGIC;
  signal pcreg_n_280 : STD_LOGIC;
  signal pcreg_n_281 : STD_LOGIC;
  signal pcreg_n_282 : STD_LOGIC;
  signal pcreg_n_284 : STD_LOGIC;
  signal pcreg_n_285 : STD_LOGIC;
  signal pcreg_n_286 : STD_LOGIC;
  signal pcreg_n_287 : STD_LOGIC;
  signal pcreg_n_32 : STD_LOGIC;
  signal pcreg_n_33 : STD_LOGIC;
  signal pcreg_n_34 : STD_LOGIC;
  signal pcreg_n_35 : STD_LOGIC;
  signal pcreg_n_37 : STD_LOGIC;
  signal pcreg_n_38 : STD_LOGIC;
  signal pcreg_n_39 : STD_LOGIC;
  signal pcreg_n_40 : STD_LOGIC;
  signal pcreg_n_42 : STD_LOGIC;
  signal pcreg_n_43 : STD_LOGIC;
  signal pcreg_n_44 : STD_LOGIC;
  signal pcreg_n_45 : STD_LOGIC;
  signal pcreg_n_46 : STD_LOGIC;
  signal pcreg_n_47 : STD_LOGIC;
  signal pcreg_n_48 : STD_LOGIC;
  signal pcreg_n_49 : STD_LOGIC;
  signal pcreg_n_50 : STD_LOGIC;
  signal pcreg_n_51 : STD_LOGIC;
  signal pcreg_n_52 : STD_LOGIC;
  signal pcreg_n_53 : STD_LOGIC;
  signal pcreg_n_54 : STD_LOGIC;
  signal pcreg_n_55 : STD_LOGIC;
  signal pcreg_n_56 : STD_LOGIC;
  signal pcreg_n_57 : STD_LOGIC;
  signal pcreg_n_58 : STD_LOGIC;
  signal pcreg_n_59 : STD_LOGIC;
  signal pcreg_n_60 : STD_LOGIC;
  signal pcreg_n_61 : STD_LOGIC;
  signal pcreg_n_62 : STD_LOGIC;
  signal pcreg_n_63 : STD_LOGIC;
  signal pcreg_n_64 : STD_LOGIC;
  signal pcreg_n_65 : STD_LOGIC;
  signal pcreg_n_66 : STD_LOGIC;
  signal pcreg_n_67 : STD_LOGIC;
  signal pcreg_n_68 : STD_LOGIC;
  signal pcreg_n_69 : STD_LOGIC;
  signal pcreg_n_70 : STD_LOGIC;
  signal pcreg_n_71 : STD_LOGIC;
  signal pcreg_n_72 : STD_LOGIC;
  signal pcreg_n_73 : STD_LOGIC;
  signal pcreg_n_74 : STD_LOGIC;
  signal pcreg_n_75 : STD_LOGIC;
  signal pcreg_n_76 : STD_LOGIC;
  signal pcreg_n_77 : STD_LOGIC;
  signal pcreg_n_78 : STD_LOGIC;
  signal pcreg_n_79 : STD_LOGIC;
  signal pcreg_n_80 : STD_LOGIC;
  signal pcreg_n_81 : STD_LOGIC;
  signal pcreg_n_82 : STD_LOGIC;
  signal pcreg_n_83 : STD_LOGIC;
  signal pcreg_n_84 : STD_LOGIC;
  signal pcreg_n_85 : STD_LOGIC;
  signal pcreg_n_86 : STD_LOGIC;
  signal pcreg_n_87 : STD_LOGIC;
  signal pcreg_n_89 : STD_LOGIC;
  signal pcreg_n_90 : STD_LOGIC;
  signal pcreg_n_91 : STD_LOGIC;
  signal pcreg_n_92 : STD_LOGIC;
  signal pcreg_n_93 : STD_LOGIC;
  signal pcreg_n_94 : STD_LOGIC;
  signal pcreg_n_95 : STD_LOGIC;
  signal pcreg_n_96 : STD_LOGIC;
  signal \^q_reg[5]\ : STD_LOGIC;
  signal \^q_reg[6]\ : STD_LOGIC;
  signal \^q_reg[7]\ : STD_LOGIC;
  signal r15 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal rd : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rd10 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rd20 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rf_n_64 : STD_LOGIC;
  signal rf_n_71 : STD_LOGIC;
  signal \^wd\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal wd3 : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  ALUResult_OBUF(31 downto 0) <= \^aluresult_obuf\(31 downto 0);
  Instr_OBUF(27 downto 0) <= \^instr_obuf\(27 downto 0);
  \q_reg[5]\ <= \^q_reg[5]\;
  \q_reg[6]\ <= \^q_reg[6]\;
  \q_reg[7]\ <= \^q_reg[7]\;
  wd(31 downto 0) <= \^wd\(31 downto 0);
d_mem: entity work.dmem
     port map (
      MemWrite => MemWrite,
      \Result[7]\ => \^instr_obuf\(22),
      Result_OBUF(0) => Result_OBUF(7),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      p_0_in(5 downto 0) => \^aluresult_obuf\(7 downto 2),
      rd(31 downto 0) => rd(31 downto 0),
      wd(31 downto 0) => \^wd\(31 downto 0)
    );
i_alu: entity work.alu
     port map (
      ALUFlags(0) => ALUFlags(0),
      \ALUResult[7]\ => \^q_reg[6]\,
      \ALUResult[7]_0\ => pcreg_n_233,
      \ALUResult_OBUF[0]_inst_i_2\(3) => pcadd2_n_107,
      \ALUResult_OBUF[0]_inst_i_2\(2) => pcadd2_n_108,
      \ALUResult_OBUF[0]_inst_i_2\(1) => pcadd2_n_109,
      \ALUResult_OBUF[0]_inst_i_2\(0) => pcreg_n_280,
      \ALUResult_OBUF[0]_inst_i_2_0\(3) => pcreg_n_93,
      \ALUResult_OBUF[0]_inst_i_2_0\(2) => pcreg_n_94,
      \ALUResult_OBUF[0]_inst_i_2_0\(1) => pcreg_n_95,
      \ALUResult_OBUF[0]_inst_i_2_0\(0) => pcreg_n_96,
      \ALUResult_OBUF[12]_inst_i_2\(3) => pcadd2_n_90,
      \ALUResult_OBUF[12]_inst_i_2\(2) => pcadd2_n_91,
      \ALUResult_OBUF[12]_inst_i_2\(1) => pcadd2_n_92,
      \ALUResult_OBUF[12]_inst_i_2\(0) => pcadd2_n_93,
      \ALUResult_OBUF[12]_inst_i_2_0\(3) => pcreg_n_60,
      \ALUResult_OBUF[12]_inst_i_2_0\(2) => pcreg_n_61,
      \ALUResult_OBUF[12]_inst_i_2_0\(1) => pcreg_n_62,
      \ALUResult_OBUF[12]_inst_i_2_0\(0) => pcreg_n_63,
      \ALUResult_OBUF[12]_inst_i_2_1\(3) => pcadd2_n_116,
      \ALUResult_OBUF[12]_inst_i_2_1\(2) => pcadd2_n_117,
      \ALUResult_OBUF[12]_inst_i_2_1\(1) => pcadd2_n_118,
      \ALUResult_OBUF[12]_inst_i_2_1\(0) => pcadd2_n_119,
      \ALUResult_OBUF[12]_inst_i_2_2\(3) => pcreg_n_56,
      \ALUResult_OBUF[12]_inst_i_2_2\(2) => pcreg_n_57,
      \ALUResult_OBUF[12]_inst_i_2_2\(1) => pcreg_n_58,
      \ALUResult_OBUF[12]_inst_i_2_2\(0) => pcreg_n_59,
      \ALUResult_OBUF[16]_inst_i_2\(3) => pcadd2_n_94,
      \ALUResult_OBUF[16]_inst_i_2\(2) => pcadd2_n_95,
      \ALUResult_OBUF[16]_inst_i_2\(1) => pcadd2_n_96,
      \ALUResult_OBUF[16]_inst_i_2\(0) => pcadd2_n_97,
      \ALUResult_OBUF[16]_inst_i_2_0\(3) => pcreg_n_68,
      \ALUResult_OBUF[16]_inst_i_2_0\(2) => pcreg_n_69,
      \ALUResult_OBUF[16]_inst_i_2_0\(1) => pcreg_n_70,
      \ALUResult_OBUF[16]_inst_i_2_0\(0) => pcreg_n_71,
      \ALUResult_OBUF[16]_inst_i_2_1\(3) => pcadd2_n_120,
      \ALUResult_OBUF[16]_inst_i_2_1\(2) => pcadd2_n_121,
      \ALUResult_OBUF[16]_inst_i_2_1\(1) => pcadd2_n_122,
      \ALUResult_OBUF[16]_inst_i_2_1\(0) => pcadd2_n_123,
      \ALUResult_OBUF[16]_inst_i_2_2\(3) => pcreg_n_64,
      \ALUResult_OBUF[16]_inst_i_2_2\(2) => pcreg_n_65,
      \ALUResult_OBUF[16]_inst_i_2_2\(1) => pcreg_n_66,
      \ALUResult_OBUF[16]_inst_i_2_2\(0) => pcreg_n_67,
      \ALUResult_OBUF[20]_inst_i_2\(3) => pcadd2_n_98,
      \ALUResult_OBUF[20]_inst_i_2\(2) => pcadd2_n_99,
      \ALUResult_OBUF[20]_inst_i_2\(1) => pcadd2_n_100,
      \ALUResult_OBUF[20]_inst_i_2\(0) => pcadd2_n_101,
      \ALUResult_OBUF[20]_inst_i_2_0\(3) => pcreg_n_284,
      \ALUResult_OBUF[20]_inst_i_2_0\(2) => pcreg_n_285,
      \ALUResult_OBUF[20]_inst_i_2_0\(1) => pcreg_n_286,
      \ALUResult_OBUF[20]_inst_i_2_0\(0) => pcreg_n_287,
      \ALUResult_OBUF[20]_inst_i_2_1\(3) => pcadd2_n_124,
      \ALUResult_OBUF[20]_inst_i_2_1\(2) => pcadd2_n_125,
      \ALUResult_OBUF[20]_inst_i_2_1\(1) => pcadd2_n_126,
      \ALUResult_OBUF[20]_inst_i_2_1\(0) => pcadd2_n_127,
      \ALUResult_OBUF[20]_inst_i_2_2\(3) => pcreg_n_72,
      \ALUResult_OBUF[20]_inst_i_2_2\(2) => pcreg_n_73,
      \ALUResult_OBUF[20]_inst_i_2_2\(1) => pcreg_n_74,
      \ALUResult_OBUF[20]_inst_i_2_2\(0) => pcreg_n_75,
      \ALUResult_OBUF[24]_inst_i_2\(3) => pcadd2_n_102,
      \ALUResult_OBUF[24]_inst_i_2\(2) => pcadd2_n_103,
      \ALUResult_OBUF[24]_inst_i_2\(1) => pcadd2_n_104,
      \ALUResult_OBUF[24]_inst_i_2\(0) => pcadd2_n_105,
      \ALUResult_OBUF[24]_inst_i_2_0\(3) => pcreg_n_89,
      \ALUResult_OBUF[24]_inst_i_2_0\(2) => pcreg_n_90,
      \ALUResult_OBUF[24]_inst_i_2_0\(1) => pcreg_n_91,
      \ALUResult_OBUF[24]_inst_i_2_0\(0) => pcreg_n_92,
      \ALUResult_OBUF[24]_inst_i_2_1\(3) => pcadd2_n_128,
      \ALUResult_OBUF[24]_inst_i_2_1\(2) => pcadd2_n_129,
      \ALUResult_OBUF[24]_inst_i_2_1\(1) => pcadd2_n_130,
      \ALUResult_OBUF[24]_inst_i_2_1\(0) => pcadd2_n_131,
      \ALUResult_OBUF[24]_inst_i_2_2\(3) => pcreg_n_76,
      \ALUResult_OBUF[24]_inst_i_2_2\(2) => pcreg_n_77,
      \ALUResult_OBUF[24]_inst_i_2_2\(1) => pcreg_n_78,
      \ALUResult_OBUF[24]_inst_i_2_2\(0) => pcreg_n_79,
      \ALUResult_OBUF[28]_inst_i_2\(3) => pcreg_n_277,
      \ALUResult_OBUF[28]_inst_i_2\(2) => pcreg_n_278,
      \ALUResult_OBUF[28]_inst_i_2\(1) => pcreg_n_279,
      \ALUResult_OBUF[28]_inst_i_2\(0) => pcadd2_n_106,
      \ALUResult_OBUF[28]_inst_i_2_0\(3) => pcreg_n_32,
      \ALUResult_OBUF[28]_inst_i_2_0\(2) => pcreg_n_33,
      \ALUResult_OBUF[28]_inst_i_2_0\(1) => pcreg_n_34,
      \ALUResult_OBUF[28]_inst_i_2_0\(0) => pcreg_n_35,
      \ALUResult_OBUF[28]_inst_i_2_1\(3) => pcreg_n_272,
      \ALUResult_OBUF[28]_inst_i_2_1\(2) => pcreg_n_273,
      \ALUResult_OBUF[28]_inst_i_2_1\(1) => pcadd2_n_132,
      \ALUResult_OBUF[28]_inst_i_2_1\(0) => pcadd2_n_133,
      \ALUResult_OBUF[28]_inst_i_2_2\(3) => pcreg_n_84,
      \ALUResult_OBUF[28]_inst_i_2_2\(2) => pcreg_n_85,
      \ALUResult_OBUF[28]_inst_i_2_2\(1) => pcreg_n_86,
      \ALUResult_OBUF[28]_inst_i_2_2\(0) => pcreg_n_87,
      \ALUResult_OBUF[4]_inst_i_2\(3) => pcadd2_n_84,
      \ALUResult_OBUF[4]_inst_i_2\(2 downto 1) => SrcA(6 downto 5),
      \ALUResult_OBUF[4]_inst_i_2\(0) => pcadd2_n_85,
      \ALUResult_OBUF[4]_inst_i_2_0\(3) => pcreg_n_44,
      \ALUResult_OBUF[4]_inst_i_2_0\(2) => pcreg_n_45,
      \ALUResult_OBUF[4]_inst_i_2_0\(1) => pcreg_n_46,
      \ALUResult_OBUF[4]_inst_i_2_0\(0) => pcreg_n_47,
      \ALUResult_OBUF[4]_inst_i_2_1\(1) => pcadd2_n_110,
      \ALUResult_OBUF[4]_inst_i_2_1\(0) => pcadd2_n_111,
      \ALUResult_OBUF[4]_inst_i_2_2\(3) => pcreg_n_37,
      \ALUResult_OBUF[4]_inst_i_2_2\(2) => pcreg_n_38,
      \ALUResult_OBUF[4]_inst_i_2_2\(1) => pcreg_n_39,
      \ALUResult_OBUF[4]_inst_i_2_2\(0) => pcreg_n_40,
      \ALUResult_OBUF[8]_inst_i_2\(3) => pcadd2_n_86,
      \ALUResult_OBUF[8]_inst_i_2\(2) => pcadd2_n_87,
      \ALUResult_OBUF[8]_inst_i_2\(1) => pcadd2_n_88,
      \ALUResult_OBUF[8]_inst_i_2\(0) => pcadd2_n_89,
      \ALUResult_OBUF[8]_inst_i_2_0\(3) => pcreg_n_52,
      \ALUResult_OBUF[8]_inst_i_2_0\(2) => pcreg_n_53,
      \ALUResult_OBUF[8]_inst_i_2_0\(1) => pcreg_n_54,
      \ALUResult_OBUF[8]_inst_i_2_0\(0) => pcreg_n_55,
      \ALUResult_OBUF[8]_inst_i_2_1\(3) => pcadd2_n_112,
      \ALUResult_OBUF[8]_inst_i_2_1\(2) => pcadd2_n_113,
      \ALUResult_OBUF[8]_inst_i_2_1\(1) => pcadd2_n_114,
      \ALUResult_OBUF[8]_inst_i_2_1\(0) => pcadd2_n_115,
      \ALUResult_OBUF[8]_inst_i_2_2\(3) => pcreg_n_48,
      \ALUResult_OBUF[8]_inst_i_2_2\(2) => pcreg_n_49,
      \ALUResult_OBUF[8]_inst_i_2_2\(1) => pcreg_n_50,
      \ALUResult_OBUF[8]_inst_i_2_2\(0) => pcreg_n_51,
      CO(0) => i_alu_n_31,
      DI(3) => pcadd2_n_81,
      DI(2) => pcadd2_n_82,
      DI(1) => pcadd2_n_83,
      DI(0) => pcreg_n_276,
      \Result0_carry__6_i_8\(30 downto 7) => p_0_in(31 downto 8),
      \Result0_carry__6_i_8\(6 downto 0) => p_0_in(6 downto 0),
      S(3) => pcreg_n_80,
      S(2) => pcreg_n_81,
      S(1) => pcreg_n_82,
      S(0) => pcreg_n_83,
      SrcA(0) => SrcA(7),
      aD2M4dsP(0) => aD2M4dsP(7),
      \i__carry__6_i_8\(30 downto 7) => p_2_in(31 downto 8),
      \i__carry__6_i_8\(6 downto 0) => p_2_in(6 downto 0),
      \i__carry__6_i_8_0\(0) => i_alu_n_63,
      p_0_in(0) => \^aluresult_obuf\(7),
      \q_reg[0]\ => \^q_reg[7]\,
      \q_reg[0]_0\ => pcreg_n_225,
      \q_reg[0]_1\(0) => pcreg_n_281,
      \q_reg[0]_2\(0) => pcreg_n_282,
      \q_reg[0]_3\ => \^q_reg[5]\,
      \q_reg[7]\ => \q_reg[7]_0\
    );
pcadd2: entity work.adder
     port map (
      \ALUResult_OBUF[4]_inst_i_3\ => \^instr_obuf\(23),
      \ALUResult_OBUF[8]_inst_i_2\ => pcreg_n_42,
      DI(2) => pcadd2_n_81,
      DI(1) => pcadd2_n_82,
      DI(0) => pcadd2_n_83,
      S(0) => pcreg_n_275,
      SrcA(27 downto 0) => SrcA(28 downto 1),
      \WriteData[5]\ => pcreg_n_43,
      d1(30 downto 0) => d1(31 downto 1),
      \q_reg[3]\(1) => pcadd2_n_84,
      \q_reg[3]\(0) => pcadd2_n_85,
      \q_reg[3]_0\(3) => pcadd2_n_86,
      \q_reg[3]_0\(2) => pcadd2_n_87,
      \q_reg[3]_0\(1) => pcadd2_n_88,
      \q_reg[3]_0\(0) => pcadd2_n_89,
      \q_reg[3]_1\(3) => pcadd2_n_90,
      \q_reg[3]_1\(2) => pcadd2_n_91,
      \q_reg[3]_1\(1) => pcadd2_n_92,
      \q_reg[3]_1\(0) => pcadd2_n_93,
      \q_reg[3]_10\(3) => pcadd2_n_120,
      \q_reg[3]_10\(2) => pcadd2_n_121,
      \q_reg[3]_10\(1) => pcadd2_n_122,
      \q_reg[3]_10\(0) => pcadd2_n_123,
      \q_reg[3]_11\(3) => pcadd2_n_124,
      \q_reg[3]_11\(2) => pcadd2_n_125,
      \q_reg[3]_11\(1) => pcadd2_n_126,
      \q_reg[3]_11\(0) => pcadd2_n_127,
      \q_reg[3]_12\(3) => pcadd2_n_128,
      \q_reg[3]_12\(2) => pcadd2_n_129,
      \q_reg[3]_12\(1) => pcadd2_n_130,
      \q_reg[3]_12\(0) => pcadd2_n_131,
      \q_reg[3]_13\(1) => pcadd2_n_132,
      \q_reg[3]_13\(0) => pcadd2_n_133,
      \q_reg[3]_2\(3) => pcadd2_n_94,
      \q_reg[3]_2\(2) => pcadd2_n_95,
      \q_reg[3]_2\(1) => pcadd2_n_96,
      \q_reg[3]_2\(0) => pcadd2_n_97,
      \q_reg[3]_3\(3) => pcadd2_n_98,
      \q_reg[3]_3\(2) => pcadd2_n_99,
      \q_reg[3]_3\(1) => pcadd2_n_100,
      \q_reg[3]_3\(0) => pcadd2_n_101,
      \q_reg[3]_4\(3) => pcadd2_n_102,
      \q_reg[3]_4\(2) => pcadd2_n_103,
      \q_reg[3]_4\(1) => pcadd2_n_104,
      \q_reg[3]_4\(0) => pcadd2_n_105,
      \q_reg[3]_5\(0) => pcadd2_n_106,
      \q_reg[3]_6\(2) => pcadd2_n_107,
      \q_reg[3]_6\(1) => pcadd2_n_108,
      \q_reg[3]_6\(0) => pcadd2_n_109,
      \q_reg[3]_7\(1) => pcadd2_n_110,
      \q_reg[3]_7\(0) => pcadd2_n_111,
      \q_reg[3]_8\(3) => pcadd2_n_112,
      \q_reg[3]_8\(2) => pcadd2_n_113,
      \q_reg[3]_8\(1) => pcadd2_n_114,
      \q_reg[3]_8\(0) => pcadd2_n_115,
      \q_reg[3]_9\(3) => pcadd2_n_116,
      \q_reg[3]_9\(2) => pcadd2_n_117,
      \q_reg[3]_9\(1) => pcadd2_n_118,
      \q_reg[3]_9\(0) => pcadd2_n_119,
      r15(30 downto 0) => r15(31 downto 1),
      rd10(28 downto 0) => rd10(29 downto 1),
      rd20(21) => rd20(27),
      rd20(20 downto 18) => rd20(23 downto 21),
      rd20(17 downto 3) => rd20(19 downto 5),
      rd20(2 downto 0) => rd20(3 downto 1),
      wd(21) => \^wd\(27),
      wd(20 downto 18) => \^wd\(23 downto 21),
      wd(17 downto 3) => \^wd\(19 downto 5),
      wd(2 downto 0) => \^wd\(3 downto 1)
    );
pcreg: entity work.flopr
     port map (
      ADDRA(3 downto 0) => RA2(3 downto 0),
      \ALUResult_OBUF[28]_inst_i_1_0\(27 downto 0) => SrcA(28 downto 1),
      \ALUResult_OBUF[31]_inst_i_1_0\(30 downto 7) => p_0_in(31 downto 8),
      \ALUResult_OBUF[31]_inst_i_1_0\(6 downto 0) => p_0_in(6 downto 0),
      \ALUResult_OBUF[31]_inst_i_1_1\(30 downto 7) => p_2_in(31 downto 8),
      \ALUResult_OBUF[31]_inst_i_1_1\(6 downto 0) => p_2_in(6 downto 0),
      CO(0) => i_alu_n_31,
      DI(0) => pcreg_n_276,
      Instr_OBUF(23 downto 20) => \^instr_obuf\(27 downto 24),
      Instr_OBUF(19 downto 6) => \^instr_obuf\(21 downto 8),
      Instr_OBUF(5 downto 0) => \^instr_obuf\(5 downto 0),
      MemWrite => MemWrite,
      O(0) => O(0),
      PC(30 downto 0) => PC(31 downto 1),
      RA3(2 downto 0) => RA3(3 downto 1),
      RegWrite => RegWrite,
      \Result0_carry__6\(0) => pcreg_n_281,
      \Result0_inferred__0/i__carry__6\(0) => pcreg_n_282,
      Result_OBUF(30 downto 7) => Result_OBUF(31 downto 8),
      Result_OBUF(6 downto 0) => Result_OBUF(6 downto 0),
      S(3) => pcreg_n_80,
      S(2) => pcreg_n_81,
      S(1) => pcreg_n_82,
      S(0) => pcreg_n_83,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      d1(30 downto 0) => d1(31 downto 1),
      en => en,
      mem_reg_r1_0_15_0_5_i_15_0 => mem_reg_r1_0_15_0_5_i_15,
      mem_reg_r1_0_15_0_5_i_15_1 => mem_reg_r1_0_15_0_5_i_15_0,
      p_0_in(0) => \^aluresult_obuf\(7),
      q(0) => q(0),
      \q[0]_i_2__0\(0) => i_alu_n_63,
      \q[0]_i_48_0\ => rf_n_64,
      \q[0]_i_49_0\ => rf_n_71,
      \q_reg[0]_0\ => PC(0),
      \q_reg[0]_1\(0) => pcreg_n_280,
      \q_reg[0]_2\ => \q_reg[0]\,
      \q_reg[2]_0\(0) => pcreg_n_275,
      \q_reg[3]_0\(3) => pcreg_n_32,
      \q_reg[3]_0\(2) => pcreg_n_33,
      \q_reg[3]_0\(1) => pcreg_n_34,
      \q_reg[3]_0\(0) => pcreg_n_35,
      \q_reg[3]_1\ => \^instr_obuf\(23),
      \q_reg[3]_10\(3) => pcreg_n_60,
      \q_reg[3]_10\(2) => pcreg_n_61,
      \q_reg[3]_10\(1) => pcreg_n_62,
      \q_reg[3]_10\(0) => pcreg_n_63,
      \q_reg[3]_11\(3) => pcreg_n_64,
      \q_reg[3]_11\(2) => pcreg_n_65,
      \q_reg[3]_11\(1) => pcreg_n_66,
      \q_reg[3]_11\(0) => pcreg_n_67,
      \q_reg[3]_12\(3) => pcreg_n_68,
      \q_reg[3]_12\(2) => pcreg_n_69,
      \q_reg[3]_12\(1) => pcreg_n_70,
      \q_reg[3]_12\(0) => pcreg_n_71,
      \q_reg[3]_13\(3) => pcreg_n_72,
      \q_reg[3]_13\(2) => pcreg_n_73,
      \q_reg[3]_13\(1) => pcreg_n_74,
      \q_reg[3]_13\(0) => pcreg_n_75,
      \q_reg[3]_14\(3) => pcreg_n_76,
      \q_reg[3]_14\(2) => pcreg_n_77,
      \q_reg[3]_14\(1) => pcreg_n_78,
      \q_reg[3]_14\(0) => pcreg_n_79,
      \q_reg[3]_15\(3) => pcreg_n_84,
      \q_reg[3]_15\(2) => pcreg_n_85,
      \q_reg[3]_15\(1) => pcreg_n_86,
      \q_reg[3]_15\(0) => pcreg_n_87,
      \q_reg[3]_16\(3) => pcreg_n_89,
      \q_reg[3]_16\(2) => pcreg_n_90,
      \q_reg[3]_16\(1) => pcreg_n_91,
      \q_reg[3]_16\(0) => pcreg_n_92,
      \q_reg[3]_17\(3) => pcreg_n_93,
      \q_reg[3]_17\(2) => pcreg_n_94,
      \q_reg[3]_17\(1) => pcreg_n_95,
      \q_reg[3]_17\(0) => pcreg_n_96,
      \q_reg[3]_18\(3 downto 0) => RA1(3 downto 0),
      \q_reg[3]_19\(1) => pcreg_n_272,
      \q_reg[3]_19\(0) => pcreg_n_273,
      \q_reg[3]_2\(3) => pcreg_n_37,
      \q_reg[3]_2\(2) => pcreg_n_38,
      \q_reg[3]_2\(1) => pcreg_n_39,
      \q_reg[3]_2\(0) => pcreg_n_40,
      \q_reg[3]_20\(2) => pcreg_n_277,
      \q_reg[3]_20\(1) => pcreg_n_278,
      \q_reg[3]_20\(0) => pcreg_n_279,
      \q_reg[3]_21\(3) => pcreg_n_284,
      \q_reg[3]_21\(2) => pcreg_n_285,
      \q_reg[3]_21\(1) => pcreg_n_286,
      \q_reg[3]_21\(0) => pcreg_n_287,
      \q_reg[3]_3\(0) => aD2M4dsP(7),
      \q_reg[3]_4\ => pcreg_n_42,
      \q_reg[3]_5\ => pcreg_n_43,
      \q_reg[3]_6\(3) => pcreg_n_44,
      \q_reg[3]_6\(2) => pcreg_n_45,
      \q_reg[3]_6\(1) => pcreg_n_46,
      \q_reg[3]_6\(0) => pcreg_n_47,
      \q_reg[3]_7\(3) => pcreg_n_48,
      \q_reg[3]_7\(2) => pcreg_n_49,
      \q_reg[3]_7\(1) => pcreg_n_50,
      \q_reg[3]_7\(0) => pcreg_n_51,
      \q_reg[3]_8\(3) => pcreg_n_52,
      \q_reg[3]_8\(2) => pcreg_n_53,
      \q_reg[3]_8\(1) => pcreg_n_54,
      \q_reg[3]_8\(0) => pcreg_n_55,
      \q_reg[3]_9\(3) => pcreg_n_56,
      \q_reg[3]_9\(2) => pcreg_n_57,
      \q_reg[3]_9\(1) => pcreg_n_58,
      \q_reg[3]_9\(0) => pcreg_n_59,
      \q_reg[5]_0\ => \^q_reg[5]\,
      \q_reg[6]_0\ => \^instr_obuf\(6),
      \q_reg[6]_1\ => \^aluresult_obuf\(31),
      \q_reg[6]_10\ => \^aluresult_obuf\(14),
      \q_reg[6]_11\ => \^aluresult_obuf\(15),
      \q_reg[6]_12\ => \^aluresult_obuf\(16),
      \q_reg[6]_13\ => \^aluresult_obuf\(17),
      \q_reg[6]_14\ => \^aluresult_obuf\(18),
      \q_reg[6]_15\ => \^aluresult_obuf\(19),
      \q_reg[6]_16\ => \^aluresult_obuf\(20),
      \q_reg[6]_17\ => \^aluresult_obuf\(21),
      \q_reg[6]_18\ => \^aluresult_obuf\(22),
      \q_reg[6]_19\ => \^aluresult_obuf\(23),
      \q_reg[6]_2\ => \^aluresult_obuf\(30),
      \q_reg[6]_20\ => \^aluresult_obuf\(24),
      \q_reg[6]_21\ => \^aluresult_obuf\(25),
      \q_reg[6]_22\ => \^aluresult_obuf\(26),
      \q_reg[6]_23\ => \^aluresult_obuf\(27),
      \q_reg[6]_24\ => \^aluresult_obuf\(29),
      \q_reg[6]_25\ => \^aluresult_obuf\(0),
      \q_reg[6]_26\ => \^aluresult_obuf\(28),
      \q_reg[6]_27\(4 downto 0) => \^aluresult_obuf\(6 downto 2),
      \q_reg[6]_28\ => \^q_reg[6]\,
      \q_reg[6]_29\ => pcreg_n_225,
      \q_reg[6]_3\ => \^aluresult_obuf\(1),
      \q_reg[6]_30\ => \q_reg[6]_0\,
      \q_reg[6]_31\ => \^instr_obuf\(7),
      \q_reg[6]_32\ => \q_reg[6]_1\,
      \q_reg[6]_33\ => pcreg_n_233,
      \q_reg[6]_4\ => \^aluresult_obuf\(9),
      \q_reg[6]_5\ => \^aluresult_obuf\(10),
      \q_reg[6]_6\ => \^aluresult_obuf\(11),
      \q_reg[6]_7\ => \^aluresult_obuf\(8),
      \q_reg[6]_8\ => \^aluresult_obuf\(12),
      \q_reg[6]_9\ => \^aluresult_obuf\(13),
      \q_reg[7]_0\ => \^instr_obuf\(22),
      \q_reg[7]_1\ => \^q_reg[7]\,
      r15(30 downto 0) => r15(31 downto 1),
      rd(31 downto 0) => rd(31 downto 0),
      rd10(31 downto 0) => rd10(31 downto 0),
      rd20(31 downto 0) => rd20(31 downto 0),
      reset => reset,
      wd(3 downto 1) => \^wd\(31 downto 29),
      wd(0) => \^wd\(0),
      wd3(31 downto 0) => wd3(31 downto 0)
    );
rf: entity work.regfile
     port map (
      ADDRA(3 downto 0) => RA2(3 downto 0),
      ADDRD(3 downto 1) => RA3(3 downto 1),
      ADDRD(0) => \^instr_obuf\(8),
      RegWrite => RegWrite,
      \WriteData[20]\ => pcreg_n_43,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \q[1]_i_6\(3 downto 0) => RA1(3 downto 0),
      \q_reg[3]\ => rf_n_64,
      \q_reg[3]_0\ => rf_n_71,
      r15(7) => r15(28),
      r15(6 downto 4) => r15(26 downto 24),
      r15(3) => r15(22),
      r15(2) => r15(20),
      r15(1) => r15(16),
      r15(0) => r15(4),
      rd10(31 downto 0) => rd10(31 downto 0),
      rd20(31 downto 0) => rd20(31 downto 0),
      wd(5) => \^wd\(28),
      wd(4 downto 2) => \^wd\(26 downto 24),
      wd(1) => \^wd\(20),
      wd(0) => \^wd\(4),
      wd3(31 downto 0) => wd3(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity controller is
  port (
    q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[0]\ : out STD_LOGIC;
    \q_reg[0]_0\ : out STD_LOGIC;
    \q_reg[1]\ : out STD_LOGIC;
    ALUResult_OBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    en : in STD_LOGIC;
    \q_reg[0]_1\ : in STD_LOGIC;
    \q_reg[0]_2\ : in STD_LOGIC;
    \q_reg[0]_3\ : in STD_LOGIC;
    \q_reg[0]_4\ : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC;
    ALUFlags : in STD_LOGIC_VECTOR ( 0 to 0 );
    Instr_OBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[0]_5\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[1]_0\ : in STD_LOGIC
  );
end controller;

architecture STRUCTURE of controller is
begin
cl: entity work.condlogic
     port map (
      ALUFlags(0) => ALUFlags(0),
      ALUResult_OBUF(0) => ALUResult_OBUF(0),
      Instr_OBUF(0) => Instr_OBUF(0),
      O(0) => O(0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      en => en,
      q(0) => q(0),
      \q_reg[0]\ => \q_reg[0]\,
      \q_reg[0]_0\ => \q_reg[0]_0\,
      \q_reg[0]_1\ => \q_reg[0]_1\,
      \q_reg[0]_2\ => \q_reg[0]_2\,
      \q_reg[0]_3\ => \q_reg[0]_3\,
      \q_reg[0]_4\ => \q_reg[0]_4\,
      \q_reg[0]_5\ => \q_reg[0]_5\,
      \q_reg[1]\ => \q_reg[1]\,
      \q_reg[1]_0\ => \q_reg[1]_0\,
      reset_IBUF => reset_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity arm is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    PC : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Instr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ALUResult : out STD_LOGIC_VECTOR ( 31 downto 0 );
    WriteData : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Result : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of arm : entity is true;
end arm;

architecture STRUCTURE of arm is
  signal ALUFlags : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ALUResult_OBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Instr_OBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal PC_OBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Result_OBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal WriteData_OBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cl/en\ : STD_LOGIC;
  signal \cl/q\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal cont_n_1 : STD_LOGIC;
  signal cont_n_2 : STD_LOGIC;
  signal cont_n_3 : STD_LOGIC;
  signal dp_n_156 : STD_LOGIC;
  signal dp_n_157 : STD_LOGIC;
  signal dp_n_158 : STD_LOGIC;
  signal dp_n_159 : STD_LOGIC;
  signal dp_n_161 : STD_LOGIC;
  signal dp_n_162 : STD_LOGIC;
  signal dp_n_164 : STD_LOGIC;
  signal reset_IBUF : STD_LOGIC;
begin
\ALUResult_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(0),
      O => ALUResult(0)
    );
\ALUResult_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(10),
      O => ALUResult(10)
    );
\ALUResult_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(11),
      O => ALUResult(11)
    );
\ALUResult_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(12),
      O => ALUResult(12)
    );
\ALUResult_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(13),
      O => ALUResult(13)
    );
\ALUResult_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(14),
      O => ALUResult(14)
    );
\ALUResult_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(15),
      O => ALUResult(15)
    );
\ALUResult_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(16),
      O => ALUResult(16)
    );
\ALUResult_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(17),
      O => ALUResult(17)
    );
\ALUResult_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(18),
      O => ALUResult(18)
    );
\ALUResult_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(19),
      O => ALUResult(19)
    );
\ALUResult_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(1),
      O => ALUResult(1)
    );
\ALUResult_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(20),
      O => ALUResult(20)
    );
\ALUResult_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(21),
      O => ALUResult(21)
    );
\ALUResult_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(22),
      O => ALUResult(22)
    );
\ALUResult_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(23),
      O => ALUResult(23)
    );
\ALUResult_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(24),
      O => ALUResult(24)
    );
\ALUResult_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(25),
      O => ALUResult(25)
    );
\ALUResult_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(26),
      O => ALUResult(26)
    );
\ALUResult_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(27),
      O => ALUResult(27)
    );
\ALUResult_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(28),
      O => ALUResult(28)
    );
\ALUResult_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(29),
      O => ALUResult(29)
    );
\ALUResult_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(2),
      O => ALUResult(2)
    );
\ALUResult_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(30),
      O => ALUResult(30)
    );
\ALUResult_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(31),
      O => ALUResult(31)
    );
\ALUResult_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(3),
      O => ALUResult(3)
    );
\ALUResult_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(4),
      O => ALUResult(4)
    );
\ALUResult_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(5),
      O => ALUResult(5)
    );
\ALUResult_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(6),
      O => ALUResult(6)
    );
\ALUResult_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(7),
      O => ALUResult(7)
    );
\ALUResult_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(8),
      O => ALUResult(8)
    );
\ALUResult_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(9),
      O => ALUResult(9)
    );
\Instr_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Instr_OBUF(0),
      O => Instr(0)
    );
\Instr_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Instr_OBUF(7),
      O => Instr(10)
    );
\Instr_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Instr_OBUF(7),
      O => Instr(11)
    );
\Instr_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Instr_OBUF(12),
      O => Instr(12)
    );
\Instr_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Instr_OBUF(13),
      O => Instr(13)
    );
\Instr_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Instr_OBUF(14),
      O => Instr(14)
    );
\Instr_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Instr_OBUF(15),
      O => Instr(15)
    );
\Instr_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Instr_OBUF(16),
      O => Instr(16)
    );
\Instr_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Instr_OBUF(17),
      O => Instr(17)
    );
\Instr_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Instr_OBUF(18),
      O => Instr(18)
    );
\Instr_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Instr_OBUF(19),
      O => Instr(19)
    );
\Instr_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Instr_OBUF(1),
      O => Instr(1)
    );
\Instr_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Instr_OBUF(20),
      O => Instr(20)
    );
\Instr_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Instr_OBUF(21),
      O => Instr(21)
    );
\Instr_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Instr_OBUF(22),
      O => Instr(22)
    );
\Instr_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Instr_OBUF(23),
      O => Instr(23)
    );
\Instr_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Instr_OBUF(24),
      O => Instr(24)
    );
\Instr_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Instr_OBUF(25),
      O => Instr(25)
    );
\Instr_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Instr_OBUF(26),
      O => Instr(26)
    );
\Instr_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Instr_OBUF(27),
      O => Instr(27)
    );
\Instr_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Instr_OBUF(28),
      O => Instr(28)
    );
\Instr_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Instr_OBUF(29),
      O => Instr(29)
    );
\Instr_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Instr_OBUF(2),
      O => Instr(2)
    );
\Instr_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Instr_OBUF(30),
      O => Instr(30)
    );
\Instr_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Instr_OBUF(31),
      O => Instr(31)
    );
\Instr_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Instr_OBUF(3),
      O => Instr(3)
    );
\Instr_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => Instr(4)
    );
\Instr_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Instr_OBUF(5),
      O => Instr(5)
    );
\Instr_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Instr_OBUF(6),
      O => Instr(6)
    );
\Instr_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Instr_OBUF(7),
      O => Instr(7)
    );
\Instr_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Instr_OBUF(7),
      O => Instr(8)
    );
\Instr_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Instr_OBUF(9),
      O => Instr(9)
    );
\PC_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PC_OBUF(0),
      O => PC(0)
    );
\PC_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PC_OBUF(10),
      O => PC(10)
    );
\PC_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PC_OBUF(11),
      O => PC(11)
    );
\PC_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PC_OBUF(12),
      O => PC(12)
    );
\PC_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PC_OBUF(13),
      O => PC(13)
    );
\PC_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PC_OBUF(14),
      O => PC(14)
    );
\PC_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PC_OBUF(15),
      O => PC(15)
    );
\PC_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PC_OBUF(16),
      O => PC(16)
    );
\PC_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PC_OBUF(17),
      O => PC(17)
    );
\PC_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PC_OBUF(18),
      O => PC(18)
    );
\PC_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PC_OBUF(19),
      O => PC(19)
    );
\PC_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PC_OBUF(1),
      O => PC(1)
    );
\PC_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PC_OBUF(20),
      O => PC(20)
    );
\PC_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PC_OBUF(21),
      O => PC(21)
    );
\PC_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PC_OBUF(22),
      O => PC(22)
    );
\PC_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PC_OBUF(23),
      O => PC(23)
    );
\PC_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PC_OBUF(24),
      O => PC(24)
    );
\PC_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PC_OBUF(25),
      O => PC(25)
    );
\PC_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PC_OBUF(26),
      O => PC(26)
    );
\PC_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PC_OBUF(27),
      O => PC(27)
    );
\PC_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PC_OBUF(28),
      O => PC(28)
    );
\PC_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PC_OBUF(29),
      O => PC(29)
    );
\PC_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PC_OBUF(2),
      O => PC(2)
    );
\PC_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PC_OBUF(30),
      O => PC(30)
    );
\PC_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PC_OBUF(31),
      O => PC(31)
    );
\PC_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PC_OBUF(3),
      O => PC(3)
    );
\PC_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PC_OBUF(4),
      O => PC(4)
    );
\PC_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PC_OBUF(5),
      O => PC(5)
    );
\PC_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PC_OBUF(6),
      O => PC(6)
    );
\PC_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PC_OBUF(7),
      O => PC(7)
    );
\PC_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PC_OBUF(8),
      O => PC(8)
    );
\PC_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PC_OBUF(9),
      O => PC(9)
    );
\Result_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(0),
      O => Result(0)
    );
\Result_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(10),
      O => Result(10)
    );
\Result_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(11),
      O => Result(11)
    );
\Result_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(12),
      O => Result(12)
    );
\Result_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(13),
      O => Result(13)
    );
\Result_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(14),
      O => Result(14)
    );
\Result_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(15),
      O => Result(15)
    );
\Result_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(16),
      O => Result(16)
    );
\Result_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(17),
      O => Result(17)
    );
\Result_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(18),
      O => Result(18)
    );
\Result_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(19),
      O => Result(19)
    );
\Result_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(1),
      O => Result(1)
    );
\Result_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(20),
      O => Result(20)
    );
\Result_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(21),
      O => Result(21)
    );
\Result_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(22),
      O => Result(22)
    );
\Result_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(23),
      O => Result(23)
    );
\Result_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(24),
      O => Result(24)
    );
\Result_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(25),
      O => Result(25)
    );
\Result_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(26),
      O => Result(26)
    );
\Result_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(27),
      O => Result(27)
    );
\Result_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(28),
      O => Result(28)
    );
\Result_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(29),
      O => Result(29)
    );
\Result_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(2),
      O => Result(2)
    );
\Result_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(30),
      O => Result(30)
    );
\Result_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(31),
      O => Result(31)
    );
\Result_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(3),
      O => Result(3)
    );
\Result_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(4),
      O => Result(4)
    );
\Result_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(5),
      O => Result(5)
    );
\Result_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(6),
      O => Result(6)
    );
\Result_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(7),
      O => Result(7)
    );
\Result_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(8),
      O => Result(8)
    );
\Result_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(9),
      O => Result(9)
    );
\WriteData_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => WriteData_OBUF(0),
      O => WriteData(0)
    );
\WriteData_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => WriteData_OBUF(10),
      O => WriteData(10)
    );
\WriteData_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => WriteData_OBUF(11),
      O => WriteData(11)
    );
\WriteData_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => WriteData_OBUF(12),
      O => WriteData(12)
    );
\WriteData_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => WriteData_OBUF(13),
      O => WriteData(13)
    );
\WriteData_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => WriteData_OBUF(14),
      O => WriteData(14)
    );
\WriteData_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => WriteData_OBUF(15),
      O => WriteData(15)
    );
\WriteData_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => WriteData_OBUF(16),
      O => WriteData(16)
    );
\WriteData_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => WriteData_OBUF(17),
      O => WriteData(17)
    );
\WriteData_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => WriteData_OBUF(18),
      O => WriteData(18)
    );
\WriteData_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => WriteData_OBUF(19),
      O => WriteData(19)
    );
\WriteData_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => WriteData_OBUF(1),
      O => WriteData(1)
    );
\WriteData_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => WriteData_OBUF(20),
      O => WriteData(20)
    );
\WriteData_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => WriteData_OBUF(21),
      O => WriteData(21)
    );
\WriteData_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => WriteData_OBUF(22),
      O => WriteData(22)
    );
\WriteData_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => WriteData_OBUF(23),
      O => WriteData(23)
    );
\WriteData_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => WriteData_OBUF(24),
      O => WriteData(24)
    );
\WriteData_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => WriteData_OBUF(25),
      O => WriteData(25)
    );
\WriteData_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => WriteData_OBUF(26),
      O => WriteData(26)
    );
\WriteData_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => WriteData_OBUF(27),
      O => WriteData(27)
    );
\WriteData_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => WriteData_OBUF(28),
      O => WriteData(28)
    );
\WriteData_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => WriteData_OBUF(29),
      O => WriteData(29)
    );
\WriteData_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => WriteData_OBUF(2),
      O => WriteData(2)
    );
\WriteData_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => WriteData_OBUF(30),
      O => WriteData(30)
    );
\WriteData_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => WriteData_OBUF(31),
      O => WriteData(31)
    );
\WriteData_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => WriteData_OBUF(3),
      O => WriteData(3)
    );
\WriteData_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => WriteData_OBUF(4),
      O => WriteData(4)
    );
\WriteData_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => WriteData_OBUF(5),
      O => WriteData(5)
    );
\WriteData_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => WriteData_OBUF(6),
      O => WriteData(6)
    );
\WriteData_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => WriteData_OBUF(7),
      O => WriteData(7)
    );
\WriteData_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => WriteData_OBUF(8),
      O => WriteData(8)
    );
\WriteData_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => WriteData_OBUF(9),
      O => WriteData(9)
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
cont: entity work.controller
     port map (
      ALUFlags(0) => ALUFlags(0),
      ALUResult_OBUF(0) => ALUResult_OBUF(31),
      Instr_OBUF(0) => Instr_OBUF(20),
      O(0) => dp_n_164,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      en => \cl/en\,
      q(0) => \cl/q\(1),
      \q_reg[0]\ => cont_n_1,
      \q_reg[0]_0\ => cont_n_2,
      \q_reg[0]_1\ => dp_n_159,
      \q_reg[0]_2\ => dp_n_162,
      \q_reg[0]_3\ => dp_n_156,
      \q_reg[0]_4\ => dp_n_158,
      \q_reg[0]_5\ => dp_n_157,
      \q_reg[1]\ => cont_n_3,
      \q_reg[1]_0\ => dp_n_161,
      reset_IBUF => reset_IBUF
    );
dp: entity work.datapath
     port map (
      ALUFlags(0) => ALUFlags(0),
      ALUResult_OBUF(31 downto 0) => ALUResult_OBUF(31 downto 0),
      Instr_OBUF(27 downto 8) => Instr_OBUF(31 downto 12),
      Instr_OBUF(7) => Instr_OBUF(9),
      Instr_OBUF(6 downto 4) => Instr_OBUF(7 downto 5),
      Instr_OBUF(3 downto 0) => Instr_OBUF(3 downto 0),
      O(0) => dp_n_164,
      PC(31 downto 0) => PC_OBUF(31 downto 0),
      Result_OBUF(31 downto 0) => Result_OBUF(31 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      en => \cl/en\,
      mem_reg_r1_0_15_0_5_i_15 => cont_n_1,
      mem_reg_r1_0_15_0_5_i_15_0 => cont_n_3,
      q(0) => \cl/q\(1),
      \q_reg[0]\ => cont_n_2,
      \q_reg[5]\ => dp_n_161,
      \q_reg[6]\ => dp_n_156,
      \q_reg[6]_0\ => dp_n_158,
      \q_reg[6]_1\ => dp_n_159,
      \q_reg[7]\ => dp_n_157,
      \q_reg[7]_0\ => dp_n_162,
      reset => reset_IBUF,
      wd(31 downto 0) => WriteData_OBUF(31 downto 0)
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
end STRUCTURE;
