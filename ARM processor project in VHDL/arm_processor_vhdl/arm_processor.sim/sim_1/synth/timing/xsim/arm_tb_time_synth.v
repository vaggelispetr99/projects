// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Mar 22 22:20:00 2022
// Host        : vaggospetr-pc running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/User/arm_processor/arm_processor.sim/sim_1/synth/timing/xsim/arm_tb_time_synth.v
// Design      : arm
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module RAM32M_UNIQ_BASE_
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD75
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD76
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD77
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD79
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD80
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD81
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD82
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD83
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD86
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32X1D_UNIQ_BASE_
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

module RAM32X1D_HD78
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

module RAM32X1D_HD84
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

module RAM32X1D_HD85
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

module RAM64X1S_UNIQ_BASE_
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD44
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD45
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD46
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD47
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD48
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD49
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD50
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD51
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD52
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD53
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD54
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD55
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD56
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD57
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD58
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD59
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD60
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD61
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD62
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD63
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD64
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD65
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD66
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD67
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD68
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD69
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD70
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD71
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD72
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD73
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD74
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module adder
   (r15,
    wd,
    SrcA,
    \q_reg[3] ,
    \q_reg[3]_0 ,
    DI,
    \q_reg[3]_1 ,
    CO,
    \Result0_inferred__0/i__carry__6 ,
    d1,
    \WriteData[28] ,
    rd20,
    \Result0_inferred__0/i__carry__2 ,
    rd10,
    \Result0_inferred__0/i__carry__4 ,
    \q[0]_i_2__1 ,
    \q[0]_i_2__1_0 );
  output [30:0]r15;
  output [5:0]wd;
  output [27:0]SrcA;
  output \q_reg[3] ;
  output [0:0]\q_reg[3]_0 ;
  output [2:0]DI;
  output [2:0]\q_reg[3]_1 ;
  output [0:0]CO;
  output [0:0]\Result0_inferred__0/i__carry__6 ;
  input [30:0]d1;
  input \WriteData[28] ;
  input [5:0]rd20;
  input \Result0_inferred__0/i__carry__2 ;
  input [29:0]rd10;
  input \Result0_inferred__0/i__carry__4 ;
  input [0:0]\q[0]_i_2__1 ;
  input [0:0]\q[0]_i_2__1_0 ;

  wire [0:0]CO;
  wire [2:0]DI;
  wire \Result0_inferred__0/i__carry__2 ;
  wire \Result0_inferred__0/i__carry__4 ;
  wire [0:0]\Result0_inferred__0/i__carry__6 ;
  wire [27:0]SrcA;
  wire \WriteData[28] ;
  wire [30:0]d1;
  wire [0:0]\q[0]_i_2__1 ;
  wire [0:0]\q[0]_i_2__1_0 ;
  wire \q_reg[3] ;
  wire [0:0]\q_reg[3]_0 ;
  wire [2:0]\q_reg[3]_1 ;
  wire [30:0]r15;
  wire [29:0]rd10;
  wire [5:0]rd20;
  wire [5:0]wd;
  wire y0_carry__0_n_0;
  wire y0_carry__0_n_1;
  wire y0_carry__0_n_2;
  wire y0_carry__0_n_3;
  wire y0_carry__1_n_0;
  wire y0_carry__1_n_1;
  wire y0_carry__1_n_2;
  wire y0_carry__1_n_3;
  wire y0_carry__2_n_0;
  wire y0_carry__2_n_1;
  wire y0_carry__2_n_2;
  wire y0_carry__2_n_3;
  wire y0_carry__3_n_0;
  wire y0_carry__3_n_1;
  wire y0_carry__3_n_2;
  wire y0_carry__3_n_3;
  wire y0_carry__4_n_0;
  wire y0_carry__4_n_1;
  wire y0_carry__4_n_2;
  wire y0_carry__4_n_3;
  wire y0_carry__5_n_0;
  wire y0_carry__5_n_1;
  wire y0_carry__5_n_2;
  wire y0_carry__5_n_3;
  wire y0_carry__6_n_2;
  wire y0_carry__6_n_3;
  wire y0_carry_i_2_n_0;
  wire y0_carry_n_0;
  wire y0_carry_n_1;
  wire y0_carry_n_2;
  wire y0_carry_n_3;
  wire [3:1]\NLW_q_reg[0]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_q_reg[0]_i_3_O_UNCONNECTED ;
  wire [3:1]\NLW_q_reg[0]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_q_reg[0]_i_4_O_UNCONNECTED ;
  wire [3:2]NLW_y0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_y0_carry__6_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'h47)) 
    \ALUResult_OBUF[10]_inst_i_6 
       (.I0(r15[9]),
        .I1(\Result0_inferred__0/i__carry__4 ),
        .I2(rd10[9]),
        .O(\q_reg[3] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[1]_inst_i_5 
       (.I0(r15[0]),
        .I1(\Result0_inferred__0/i__carry__2 ),
        .I2(rd10[0]),
        .O(SrcA[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[2]_inst_i_5 
       (.I0(r15[1]),
        .I1(\Result0_inferred__0/i__carry__2 ),
        .I2(rd10[1]),
        .O(SrcA[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[3]_inst_i_5 
       (.I0(r15[2]),
        .I1(\Result0_inferred__0/i__carry__2 ),
        .I2(rd10[2]),
        .O(SrcA[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__0_i_1
       (.I0(r15[6]),
        .I1(\Result0_inferred__0/i__carry__2 ),
        .I2(rd10[6]),
        .O(SrcA[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__0_i_2
       (.I0(r15[5]),
        .I1(\Result0_inferred__0/i__carry__2 ),
        .I2(rd10[5]),
        .O(SrcA[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__0_i_3
       (.I0(r15[4]),
        .I1(\Result0_inferred__0/i__carry__2 ),
        .I2(rd10[4]),
        .O(SrcA[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__0_i_4
       (.I0(r15[3]),
        .I1(\Result0_inferred__0/i__carry__2 ),
        .I2(rd10[3]),
        .O(SrcA[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__1_i_1
       (.I0(r15[10]),
        .I1(\Result0_inferred__0/i__carry__2 ),
        .I2(rd10[10]),
        .O(SrcA[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__1_i_3
       (.I0(r15[8]),
        .I1(\Result0_inferred__0/i__carry__2 ),
        .I2(rd10[8]),
        .O(SrcA[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__1_i_4
       (.I0(r15[7]),
        .I1(\Result0_inferred__0/i__carry__2 ),
        .I2(rd10[7]),
        .O(SrcA[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__2_i_1
       (.I0(r15[14]),
        .I1(\Result0_inferred__0/i__carry__2 ),
        .I2(rd10[14]),
        .O(SrcA[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__2_i_2
       (.I0(r15[13]),
        .I1(\Result0_inferred__0/i__carry__2 ),
        .I2(rd10[13]),
        .O(SrcA[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__2_i_3
       (.I0(r15[12]),
        .I1(\Result0_inferred__0/i__carry__2 ),
        .I2(rd10[12]),
        .O(SrcA[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__2_i_4
       (.I0(r15[11]),
        .I1(\Result0_inferred__0/i__carry__2 ),
        .I2(rd10[11]),
        .O(SrcA[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__3_i_1
       (.I0(r15[18]),
        .I1(\Result0_inferred__0/i__carry__4 ),
        .I2(rd10[18]),
        .O(SrcA[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__3_i_2
       (.I0(r15[17]),
        .I1(\Result0_inferred__0/i__carry__4 ),
        .I2(rd10[17]),
        .O(SrcA[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__3_i_3
       (.I0(r15[16]),
        .I1(\Result0_inferred__0/i__carry__4 ),
        .I2(rd10[16]),
        .O(SrcA[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__3_i_4
       (.I0(r15[15]),
        .I1(\Result0_inferred__0/i__carry__4 ),
        .I2(rd10[15]),
        .O(SrcA[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__4_i_1
       (.I0(r15[22]),
        .I1(\Result0_inferred__0/i__carry__2 ),
        .I2(rd10[21]),
        .O(SrcA[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__4_i_3
       (.I0(r15[20]),
        .I1(\Result0_inferred__0/i__carry__4 ),
        .I2(rd10[20]),
        .O(SrcA[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__4_i_4
       (.I0(r15[19]),
        .I1(\Result0_inferred__0/i__carry__4 ),
        .I2(rd10[19]),
        .O(SrcA[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__5_i_1
       (.I0(r15[26]),
        .I1(\Result0_inferred__0/i__carry__2 ),
        .I2(rd10[25]),
        .O(SrcA[24]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__5_i_2
       (.I0(r15[25]),
        .I1(\Result0_inferred__0/i__carry__2 ),
        .I2(rd10[24]),
        .O(SrcA[23]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__5_i_3
       (.I0(r15[24]),
        .I1(\Result0_inferred__0/i__carry__2 ),
        .I2(rd10[23]),
        .O(SrcA[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__5_i_4
       (.I0(r15[23]),
        .I1(\Result0_inferred__0/i__carry__2 ),
        .I2(rd10[22]),
        .O(SrcA[21]));
  LUT3 #(
    .INIT(8'h47)) 
    Result0_carry__6_i_1
       (.I0(r15[30]),
        .I1(\Result0_inferred__0/i__carry__2 ),
        .I2(rd10[29]),
        .O(\q_reg[3]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__6_i_2
       (.I0(r15[29]),
        .I1(\Result0_inferred__0/i__carry__2 ),
        .I2(rd10[28]),
        .O(SrcA[27]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__6_i_3
       (.I0(r15[28]),
        .I1(\Result0_inferred__0/i__carry__2 ),
        .I2(rd10[27]),
        .O(SrcA[26]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__6_i_4
       (.I0(r15[27]),
        .I1(\Result0_inferred__0/i__carry__2 ),
        .I2(rd10[26]),
        .O(SrcA[25]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry_i_1
       (.I0(r15[2]),
        .I1(\Result0_inferred__0/i__carry__4 ),
        .I2(rd10[2]),
        .O(DI[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry_i_2
       (.I0(r15[1]),
        .I1(\Result0_inferred__0/i__carry__4 ),
        .I2(rd10[1]),
        .O(DI[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry_i_3
       (.I0(r15[0]),
        .I1(\Result0_inferred__0/i__carry__4 ),
        .I2(rd10[0]),
        .O(DI[0]));
  LUT3 #(
    .INIT(8'hE2)) 
    \WriteData_OBUF[22]_inst_i_1 
       (.I0(r15[21]),
        .I1(\WriteData[28] ),
        .I2(rd20[1]),
        .O(wd[1]));
  LUT3 #(
    .INIT(8'hE2)) 
    \WriteData_OBUF[23]_inst_i_1 
       (.I0(r15[22]),
        .I1(\WriteData[28] ),
        .I2(rd20[2]),
        .O(wd[2]));
  LUT3 #(
    .INIT(8'hE2)) 
    \WriteData_OBUF[27]_inst_i_1 
       (.I0(r15[26]),
        .I1(\WriteData[28] ),
        .I2(rd20[3]),
        .O(wd[3]));
  LUT3 #(
    .INIT(8'hE2)) 
    \WriteData_OBUF[28]_inst_i_1 
       (.I0(r15[27]),
        .I1(\WriteData[28] ),
        .I2(rd20[4]),
        .O(wd[4]));
  LUT3 #(
    .INIT(8'hE2)) 
    \WriteData_OBUF[31]_inst_i_1 
       (.I0(r15[30]),
        .I1(\WriteData[28] ),
        .I2(rd20[5]),
        .O(wd[5]));
  LUT3 #(
    .INIT(8'hE2)) 
    \WriteData_OBUF[5]_inst_i_1 
       (.I0(r15[4]),
        .I1(\WriteData[28] ),
        .I2(rd20[0]),
        .O(wd[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_1
       (.I0(r15[2]),
        .I1(\Result0_inferred__0/i__carry__4 ),
        .I2(rd10[2]),
        .O(\q_reg[3]_1 [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_2
       (.I0(r15[1]),
        .I1(\Result0_inferred__0/i__carry__4 ),
        .I2(rd10[1]),
        .O(\q_reg[3]_1 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_3
       (.I0(r15[0]),
        .I1(\Result0_inferred__0/i__carry__4 ),
        .I2(rd10[0]),
        .O(\q_reg[3]_1 [0]));
  CARRY4 \q_reg[0]_i_3 
       (.CI(\q[0]_i_2__1_0 ),
        .CO({\NLW_q_reg[0]_i_3_CO_UNCONNECTED [3:1],\Result0_inferred__0/i__carry__6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_q_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 \q_reg[0]_i_4 
       (.CI(\q[0]_i_2__1 ),
        .CO({\NLW_q_reg[0]_i_4_CO_UNCONNECTED [3:1],CO}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_q_reg[0]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y0_carry
       (.CI(1'b0),
        .CO({y0_carry_n_0,y0_carry_n_1,y0_carry_n_2,y0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,d1[1],1'b0}),
        .O(r15[3:0]),
        .S({d1[3:2],y0_carry_i_2_n_0,d1[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y0_carry__0
       (.CI(y0_carry_n_0),
        .CO({y0_carry__0_n_0,y0_carry__0_n_1,y0_carry__0_n_2,y0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r15[7:4]),
        .S(d1[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y0_carry__1
       (.CI(y0_carry__0_n_0),
        .CO({y0_carry__1_n_0,y0_carry__1_n_1,y0_carry__1_n_2,y0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r15[11:8]),
        .S(d1[11:8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y0_carry__2
       (.CI(y0_carry__1_n_0),
        .CO({y0_carry__2_n_0,y0_carry__2_n_1,y0_carry__2_n_2,y0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r15[15:12]),
        .S(d1[15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y0_carry__3
       (.CI(y0_carry__2_n_0),
        .CO({y0_carry__3_n_0,y0_carry__3_n_1,y0_carry__3_n_2,y0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r15[19:16]),
        .S(d1[19:16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y0_carry__4
       (.CI(y0_carry__3_n_0),
        .CO({y0_carry__4_n_0,y0_carry__4_n_1,y0_carry__4_n_2,y0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r15[23:20]),
        .S(d1[23:20]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y0_carry__5
       (.CI(y0_carry__4_n_0),
        .CO({y0_carry__5_n_0,y0_carry__5_n_1,y0_carry__5_n_2,y0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r15[27:24]),
        .S(d1[27:24]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y0_carry__6
       (.CI(y0_carry__5_n_0),
        .CO({NLW_y0_carry__6_CO_UNCONNECTED[3:2],y0_carry__6_n_2,y0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_y0_carry__6_O_UNCONNECTED[3],r15[30:28]}),
        .S({1'b0,d1[30:28]}));
  LUT1 #(
    .INIT(2'h1)) 
    y0_carry_i_2
       (.I0(d1[1]),
        .O(y0_carry_i_2_n_0));
endmodule

module alu
   (p_0_in,
    CO,
    p_2_in,
    i__carry__6_i_4,
    \q_reg[5] ,
    DI,
    S,
    SrcA,
    \ALUResult_OBUF[4]_inst_i_2 ,
    \ALUResult_OBUF[8]_inst_i_2 ,
    \ALUResult_OBUF[12]_inst_i_2 ,
    \ALUResult_OBUF[16]_inst_i_2 ,
    \ALUResult_OBUF[20]_inst_i_2 ,
    \ALUResult_OBUF[24]_inst_i_2 ,
    \ALUResult_OBUF[28]_inst_i_4 ,
    \ALUResult_OBUF[28]_inst_i_4_0 ,
    \ALUResult_OBUF[0]_inst_i_3 ,
    \ALUResult_OBUF[0]_inst_i_3_0 ,
    \ALUResult_OBUF[4]_inst_i_2_0 ,
    \ALUResult_OBUF[8]_inst_i_2_0 ,
    \ALUResult_OBUF[12]_inst_i_2_0 ,
    \ALUResult_OBUF[16]_inst_i_2_0 ,
    \ALUResult_OBUF[20]_inst_i_2_0 ,
    \ALUResult_OBUF[24]_inst_i_2_0 ,
    \ALUResult_OBUF[28]_inst_i_4_1 ,
    \q_reg[0] ,
    \q_reg[0]_0 );
  output [31:0]p_0_in;
  output [0:0]CO;
  output [31:0]p_2_in;
  output [0:0]i__carry__6_i_4;
  output \q_reg[5] ;
  input [3:0]DI;
  input [3:0]S;
  input [27:0]SrcA;
  input [3:0]\ALUResult_OBUF[4]_inst_i_2 ;
  input [3:0]\ALUResult_OBUF[8]_inst_i_2 ;
  input [3:0]\ALUResult_OBUF[12]_inst_i_2 ;
  input [3:0]\ALUResult_OBUF[16]_inst_i_2 ;
  input [3:0]\ALUResult_OBUF[20]_inst_i_2 ;
  input [3:0]\ALUResult_OBUF[24]_inst_i_2 ;
  input [0:0]\ALUResult_OBUF[28]_inst_i_4 ;
  input [3:0]\ALUResult_OBUF[28]_inst_i_4_0 ;
  input [2:0]\ALUResult_OBUF[0]_inst_i_3 ;
  input [3:0]\ALUResult_OBUF[0]_inst_i_3_0 ;
  input [3:0]\ALUResult_OBUF[4]_inst_i_2_0 ;
  input [3:0]\ALUResult_OBUF[8]_inst_i_2_0 ;
  input [3:0]\ALUResult_OBUF[12]_inst_i_2_0 ;
  input [3:0]\ALUResult_OBUF[16]_inst_i_2_0 ;
  input [3:0]\ALUResult_OBUF[20]_inst_i_2_0 ;
  input [3:0]\ALUResult_OBUF[24]_inst_i_2_0 ;
  input [3:0]\ALUResult_OBUF[28]_inst_i_4_1 ;
  input \q_reg[0] ;
  input \q_reg[0]_0 ;

  wire [2:0]\ALUResult_OBUF[0]_inst_i_3 ;
  wire [3:0]\ALUResult_OBUF[0]_inst_i_3_0 ;
  wire [3:0]\ALUResult_OBUF[12]_inst_i_2 ;
  wire [3:0]\ALUResult_OBUF[12]_inst_i_2_0 ;
  wire [3:0]\ALUResult_OBUF[16]_inst_i_2 ;
  wire [3:0]\ALUResult_OBUF[16]_inst_i_2_0 ;
  wire [3:0]\ALUResult_OBUF[20]_inst_i_2 ;
  wire [3:0]\ALUResult_OBUF[20]_inst_i_2_0 ;
  wire [3:0]\ALUResult_OBUF[24]_inst_i_2 ;
  wire [3:0]\ALUResult_OBUF[24]_inst_i_2_0 ;
  wire [0:0]\ALUResult_OBUF[28]_inst_i_4 ;
  wire [3:0]\ALUResult_OBUF[28]_inst_i_4_0 ;
  wire [3:0]\ALUResult_OBUF[28]_inst_i_4_1 ;
  wire [3:0]\ALUResult_OBUF[4]_inst_i_2 ;
  wire [3:0]\ALUResult_OBUF[4]_inst_i_2_0 ;
  wire [3:0]\ALUResult_OBUF[8]_inst_i_2 ;
  wire [3:0]\ALUResult_OBUF[8]_inst_i_2_0 ;
  wire [0:0]CO;
  wire [3:0]DI;
  wire Result0_carry__0_n_0;
  wire Result0_carry__0_n_1;
  wire Result0_carry__0_n_2;
  wire Result0_carry__0_n_3;
  wire Result0_carry__1_n_0;
  wire Result0_carry__1_n_1;
  wire Result0_carry__1_n_2;
  wire Result0_carry__1_n_3;
  wire Result0_carry__2_n_0;
  wire Result0_carry__2_n_1;
  wire Result0_carry__2_n_2;
  wire Result0_carry__2_n_3;
  wire Result0_carry__3_n_0;
  wire Result0_carry__3_n_1;
  wire Result0_carry__3_n_2;
  wire Result0_carry__3_n_3;
  wire Result0_carry__4_n_0;
  wire Result0_carry__4_n_1;
  wire Result0_carry__4_n_2;
  wire Result0_carry__4_n_3;
  wire Result0_carry__5_n_0;
  wire Result0_carry__5_n_1;
  wire Result0_carry__5_n_2;
  wire Result0_carry__5_n_3;
  wire Result0_carry__6_n_1;
  wire Result0_carry__6_n_2;
  wire Result0_carry__6_n_3;
  wire Result0_carry_n_0;
  wire Result0_carry_n_1;
  wire Result0_carry_n_2;
  wire Result0_carry_n_3;
  wire \Result0_inferred__0/i__carry__0_n_0 ;
  wire \Result0_inferred__0/i__carry__0_n_1 ;
  wire \Result0_inferred__0/i__carry__0_n_2 ;
  wire \Result0_inferred__0/i__carry__0_n_3 ;
  wire \Result0_inferred__0/i__carry__1_n_0 ;
  wire \Result0_inferred__0/i__carry__1_n_1 ;
  wire \Result0_inferred__0/i__carry__1_n_2 ;
  wire \Result0_inferred__0/i__carry__1_n_3 ;
  wire \Result0_inferred__0/i__carry__2_n_0 ;
  wire \Result0_inferred__0/i__carry__2_n_1 ;
  wire \Result0_inferred__0/i__carry__2_n_2 ;
  wire \Result0_inferred__0/i__carry__2_n_3 ;
  wire \Result0_inferred__0/i__carry__3_n_0 ;
  wire \Result0_inferred__0/i__carry__3_n_1 ;
  wire \Result0_inferred__0/i__carry__3_n_2 ;
  wire \Result0_inferred__0/i__carry__3_n_3 ;
  wire \Result0_inferred__0/i__carry__4_n_0 ;
  wire \Result0_inferred__0/i__carry__4_n_1 ;
  wire \Result0_inferred__0/i__carry__4_n_2 ;
  wire \Result0_inferred__0/i__carry__4_n_3 ;
  wire \Result0_inferred__0/i__carry__5_n_0 ;
  wire \Result0_inferred__0/i__carry__5_n_1 ;
  wire \Result0_inferred__0/i__carry__5_n_2 ;
  wire \Result0_inferred__0/i__carry__5_n_3 ;
  wire \Result0_inferred__0/i__carry__6_n_1 ;
  wire \Result0_inferred__0/i__carry__6_n_2 ;
  wire \Result0_inferred__0/i__carry__6_n_3 ;
  wire \Result0_inferred__0/i__carry_n_0 ;
  wire \Result0_inferred__0/i__carry_n_1 ;
  wire \Result0_inferred__0/i__carry_n_2 ;
  wire \Result0_inferred__0/i__carry_n_3 ;
  wire [3:0]S;
  wire [27:0]SrcA;
  wire [0:0]i__carry__6_i_4;
  wire [31:0]p_0_in;
  wire [31:0]p_2_in;
  wire \q[0]_i_11_n_0 ;
  wire \q[0]_i_12_n_0 ;
  wire \q[0]_i_13_n_0 ;
  wire \q[0]_i_14_n_0 ;
  wire \q[0]_i_29_n_0 ;
  wire \q[0]_i_30_n_0 ;
  wire \q[0]_i_31_n_0 ;
  wire \q[0]_i_32_n_0 ;
  wire \q[0]_i_33_n_0 ;
  wire \q[0]_i_34_n_0 ;
  wire \q[0]_i_35_n_0 ;
  wire \q[0]_i_36_n_0 ;
  wire \q[0]_i_62_n_0 ;
  wire \q[0]_i_63_n_0 ;
  wire \q[0]_i_64_n_0 ;
  wire \q[0]_i_65_n_0 ;
  wire \q_reg[0] ;
  wire \q_reg[0]_0 ;
  wire \q_reg[5] ;

  CARRY4 Result0_carry
       (.CI(1'b0),
        .CO({Result0_carry_n_0,Result0_carry_n_1,Result0_carry_n_2,Result0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(p_0_in[3:0]),
        .S(S));
  CARRY4 Result0_carry__0
       (.CI(Result0_carry_n_0),
        .CO({Result0_carry__0_n_0,Result0_carry__0_n_1,Result0_carry__0_n_2,Result0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[4:1]),
        .O(p_0_in[7:4]),
        .S(\ALUResult_OBUF[4]_inst_i_2 ));
  CARRY4 Result0_carry__1
       (.CI(Result0_carry__0_n_0),
        .CO({Result0_carry__1_n_0,Result0_carry__1_n_1,Result0_carry__1_n_2,Result0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[8:5]),
        .O(p_0_in[11:8]),
        .S(\ALUResult_OBUF[8]_inst_i_2 ));
  CARRY4 Result0_carry__2
       (.CI(Result0_carry__1_n_0),
        .CO({Result0_carry__2_n_0,Result0_carry__2_n_1,Result0_carry__2_n_2,Result0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[12:9]),
        .O(p_0_in[15:12]),
        .S(\ALUResult_OBUF[12]_inst_i_2 ));
  CARRY4 Result0_carry__3
       (.CI(Result0_carry__2_n_0),
        .CO({Result0_carry__3_n_0,Result0_carry__3_n_1,Result0_carry__3_n_2,Result0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[16:13]),
        .O(p_0_in[19:16]),
        .S(\ALUResult_OBUF[16]_inst_i_2 ));
  CARRY4 Result0_carry__4
       (.CI(Result0_carry__3_n_0),
        .CO({Result0_carry__4_n_0,Result0_carry__4_n_1,Result0_carry__4_n_2,Result0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[20:17]),
        .O(p_0_in[23:20]),
        .S(\ALUResult_OBUF[20]_inst_i_2 ));
  CARRY4 Result0_carry__5
       (.CI(Result0_carry__4_n_0),
        .CO({Result0_carry__5_n_0,Result0_carry__5_n_1,Result0_carry__5_n_2,Result0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[24:21]),
        .O(p_0_in[27:24]),
        .S(\ALUResult_OBUF[24]_inst_i_2 ));
  CARRY4 Result0_carry__6
       (.CI(Result0_carry__5_n_0),
        .CO({CO,Result0_carry__6_n_1,Result0_carry__6_n_2,Result0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({\ALUResult_OBUF[28]_inst_i_4 ,SrcA[27:25]}),
        .O(p_0_in[31:28]),
        .S(\ALUResult_OBUF[28]_inst_i_4_0 ));
  CARRY4 \Result0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\Result0_inferred__0/i__carry_n_0 ,\Result0_inferred__0/i__carry_n_1 ,\Result0_inferred__0/i__carry_n_2 ,\Result0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({\ALUResult_OBUF[0]_inst_i_3 ,SrcA[0]}),
        .O(p_2_in[3:0]),
        .S(\ALUResult_OBUF[0]_inst_i_3_0 ));
  CARRY4 \Result0_inferred__0/i__carry__0 
       (.CI(\Result0_inferred__0/i__carry_n_0 ),
        .CO({\Result0_inferred__0/i__carry__0_n_0 ,\Result0_inferred__0/i__carry__0_n_1 ,\Result0_inferred__0/i__carry__0_n_2 ,\Result0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(SrcA[4:1]),
        .O(p_2_in[7:4]),
        .S(\ALUResult_OBUF[4]_inst_i_2_0 ));
  CARRY4 \Result0_inferred__0/i__carry__1 
       (.CI(\Result0_inferred__0/i__carry__0_n_0 ),
        .CO({\Result0_inferred__0/i__carry__1_n_0 ,\Result0_inferred__0/i__carry__1_n_1 ,\Result0_inferred__0/i__carry__1_n_2 ,\Result0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(SrcA[8:5]),
        .O(p_2_in[11:8]),
        .S(\ALUResult_OBUF[8]_inst_i_2_0 ));
  CARRY4 \Result0_inferred__0/i__carry__2 
       (.CI(\Result0_inferred__0/i__carry__1_n_0 ),
        .CO({\Result0_inferred__0/i__carry__2_n_0 ,\Result0_inferred__0/i__carry__2_n_1 ,\Result0_inferred__0/i__carry__2_n_2 ,\Result0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(SrcA[12:9]),
        .O(p_2_in[15:12]),
        .S(\ALUResult_OBUF[12]_inst_i_2_0 ));
  CARRY4 \Result0_inferred__0/i__carry__3 
       (.CI(\Result0_inferred__0/i__carry__2_n_0 ),
        .CO({\Result0_inferred__0/i__carry__3_n_0 ,\Result0_inferred__0/i__carry__3_n_1 ,\Result0_inferred__0/i__carry__3_n_2 ,\Result0_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI(SrcA[16:13]),
        .O(p_2_in[19:16]),
        .S(\ALUResult_OBUF[16]_inst_i_2_0 ));
  CARRY4 \Result0_inferred__0/i__carry__4 
       (.CI(\Result0_inferred__0/i__carry__3_n_0 ),
        .CO({\Result0_inferred__0/i__carry__4_n_0 ,\Result0_inferred__0/i__carry__4_n_1 ,\Result0_inferred__0/i__carry__4_n_2 ,\Result0_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI(SrcA[20:17]),
        .O(p_2_in[23:20]),
        .S(\ALUResult_OBUF[20]_inst_i_2_0 ));
  CARRY4 \Result0_inferred__0/i__carry__5 
       (.CI(\Result0_inferred__0/i__carry__4_n_0 ),
        .CO({\Result0_inferred__0/i__carry__5_n_0 ,\Result0_inferred__0/i__carry__5_n_1 ,\Result0_inferred__0/i__carry__5_n_2 ,\Result0_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI(SrcA[24:21]),
        .O(p_2_in[27:24]),
        .S(\ALUResult_OBUF[24]_inst_i_2_0 ));
  CARRY4 \Result0_inferred__0/i__carry__6 
       (.CI(\Result0_inferred__0/i__carry__5_n_0 ),
        .CO({i__carry__6_i_4,\Result0_inferred__0/i__carry__6_n_1 ,\Result0_inferred__0/i__carry__6_n_2 ,\Result0_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({\ALUResult_OBUF[28]_inst_i_4 ,SrcA[27:25]}),
        .O(p_2_in[31:28]),
        .S(\ALUResult_OBUF[28]_inst_i_4_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \q[0]_i_11 
       (.I0(\q[0]_i_29_n_0 ),
        .I1(p_2_in[2]),
        .I2(p_2_in[14]),
        .I3(p_2_in[15]),
        .I4(p_2_in[31]),
        .I5(\q[0]_i_30_n_0 ),
        .O(\q[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \q[0]_i_12 
       (.I0(\q[0]_i_31_n_0 ),
        .I1(p_2_in[12]),
        .I2(p_2_in[16]),
        .I3(p_2_in[9]),
        .I4(p_2_in[26]),
        .I5(\q[0]_i_32_n_0 ),
        .O(\q[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \q[0]_i_13 
       (.I0(\q[0]_i_33_n_0 ),
        .I1(p_0_in[19]),
        .I2(p_0_in[21]),
        .I3(p_0_in[24]),
        .I4(p_0_in[29]),
        .I5(\q[0]_i_34_n_0 ),
        .O(\q[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \q[0]_i_14 
       (.I0(\q[0]_i_35_n_0 ),
        .I1(p_0_in[4]),
        .I2(p_0_in[8]),
        .I3(p_0_in[10]),
        .I4(p_0_in[27]),
        .I5(\q[0]_i_36_n_0 ),
        .O(\q[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[0]_i_29 
       (.I0(p_2_in[18]),
        .I1(p_2_in[21]),
        .I2(p_2_in[4]),
        .I3(p_2_in[20]),
        .O(\q[0]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \q[0]_i_30 
       (.I0(p_2_in[23]),
        .I1(p_2_in[7]),
        .I2(p_2_in[17]),
        .I3(p_2_in[8]),
        .I4(\q[0]_i_62_n_0 ),
        .O(\q[0]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[0]_i_31 
       (.I0(p_2_in[3]),
        .I1(p_2_in[28]),
        .I2(p_2_in[5]),
        .I3(p_2_in[10]),
        .O(\q[0]_i_31_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \q[0]_i_32 
       (.I0(p_2_in[0]),
        .I1(p_2_in[30]),
        .I2(p_2_in[25]),
        .I3(p_2_in[1]),
        .I4(\q[0]_i_63_n_0 ),
        .O(\q[0]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[0]_i_33 
       (.I0(p_0_in[1]),
        .I1(p_0_in[28]),
        .I2(p_0_in[11]),
        .I3(p_0_in[14]),
        .O(\q[0]_i_33_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \q[0]_i_34 
       (.I0(p_0_in[0]),
        .I1(p_0_in[17]),
        .I2(p_0_in[5]),
        .I3(p_0_in[3]),
        .I4(\q[0]_i_64_n_0 ),
        .O(\q[0]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[0]_i_35 
       (.I0(p_0_in[15]),
        .I1(p_0_in[26]),
        .I2(p_0_in[20]),
        .I3(p_0_in[22]),
        .O(\q[0]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \q[0]_i_36 
       (.I0(p_0_in[9]),
        .I1(p_0_in[2]),
        .I2(p_0_in[31]),
        .I3(p_0_in[23]),
        .I4(\q[0]_i_65_n_0 ),
        .O(\q[0]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h5545004555455545)) 
    \q[0]_i_4 
       (.I0(\q_reg[0] ),
        .I1(\q[0]_i_11_n_0 ),
        .I2(\q[0]_i_12_n_0 ),
        .I3(\q_reg[0]_0 ),
        .I4(\q[0]_i_13_n_0 ),
        .I5(\q[0]_i_14_n_0 ),
        .O(\q_reg[5] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[0]_i_62 
       (.I0(p_2_in[11]),
        .I1(p_2_in[19]),
        .I2(p_2_in[6]),
        .I3(p_2_in[13]),
        .O(\q[0]_i_62_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[0]_i_63 
       (.I0(p_2_in[22]),
        .I1(p_2_in[24]),
        .I2(p_2_in[27]),
        .I3(p_2_in[29]),
        .O(\q[0]_i_63_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[0]_i_64 
       (.I0(p_0_in[6]),
        .I1(p_0_in[13]),
        .I2(p_0_in[12]),
        .I3(p_0_in[25]),
        .O(\q[0]_i_64_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[0]_i_65 
       (.I0(p_0_in[7]),
        .I1(p_0_in[30]),
        .I2(p_0_in[16]),
        .I3(p_0_in[18]),
        .O(\q[0]_i_65_n_0 ));
endmodule

(* NotValidForBitStream *)
module arm
   (clk,
    reset,
    PC,
    Instr,
    ALUResult,
    WriteData,
    Result);
  input clk;
  input reset;
  output [31:0]PC;
  output [31:0]Instr;
  output [31:0]ALUResult;
  output [31:0]WriteData;
  output [31:0]Result;

  wire [31:0]ALUResult;
  wire [31:0]ALUResult_OBUF;
  wire [31:0]Instr;
  wire [31:0]Instr_OBUF;
  wire [31:0]PC;
  wire [31:0]PC_OBUF;
  wire [31:0]Result;
  wire [31:0]Result_OBUF;
  wire [31:0]WriteData;
  wire [31:0]WriteData_OBUF;
  wire \cl/en ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire cont_n_0;
  wire cont_n_1;
  wire cont_n_2;
  wire dp_n_156;
  wire dp_n_157;
  wire dp_n_158;
  wire dp_n_159;
  wire dp_n_160;
  wire reset;
  wire reset_IBUF;

initial begin
 $sdf_annotate("arm_tb_time_synth.sdf",,,,"tool_control");
end
  OBUF \ALUResult_OBUF[0]_inst 
       (.I(ALUResult_OBUF[0]),
        .O(ALUResult[0]));
  OBUF \ALUResult_OBUF[10]_inst 
       (.I(ALUResult_OBUF[10]),
        .O(ALUResult[10]));
  OBUF \ALUResult_OBUF[11]_inst 
       (.I(ALUResult_OBUF[11]),
        .O(ALUResult[11]));
  OBUF \ALUResult_OBUF[12]_inst 
       (.I(ALUResult_OBUF[12]),
        .O(ALUResult[12]));
  OBUF \ALUResult_OBUF[13]_inst 
       (.I(ALUResult_OBUF[13]),
        .O(ALUResult[13]));
  OBUF \ALUResult_OBUF[14]_inst 
       (.I(ALUResult_OBUF[14]),
        .O(ALUResult[14]));
  OBUF \ALUResult_OBUF[15]_inst 
       (.I(ALUResult_OBUF[15]),
        .O(ALUResult[15]));
  OBUF \ALUResult_OBUF[16]_inst 
       (.I(ALUResult_OBUF[16]),
        .O(ALUResult[16]));
  OBUF \ALUResult_OBUF[17]_inst 
       (.I(ALUResult_OBUF[17]),
        .O(ALUResult[17]));
  OBUF \ALUResult_OBUF[18]_inst 
       (.I(ALUResult_OBUF[18]),
        .O(ALUResult[18]));
  OBUF \ALUResult_OBUF[19]_inst 
       (.I(ALUResult_OBUF[19]),
        .O(ALUResult[19]));
  OBUF \ALUResult_OBUF[1]_inst 
       (.I(ALUResult_OBUF[1]),
        .O(ALUResult[1]));
  OBUF \ALUResult_OBUF[20]_inst 
       (.I(ALUResult_OBUF[20]),
        .O(ALUResult[20]));
  OBUF \ALUResult_OBUF[21]_inst 
       (.I(ALUResult_OBUF[21]),
        .O(ALUResult[21]));
  OBUF \ALUResult_OBUF[22]_inst 
       (.I(ALUResult_OBUF[22]),
        .O(ALUResult[22]));
  OBUF \ALUResult_OBUF[23]_inst 
       (.I(ALUResult_OBUF[23]),
        .O(ALUResult[23]));
  OBUF \ALUResult_OBUF[24]_inst 
       (.I(ALUResult_OBUF[24]),
        .O(ALUResult[24]));
  OBUF \ALUResult_OBUF[25]_inst 
       (.I(ALUResult_OBUF[25]),
        .O(ALUResult[25]));
  OBUF \ALUResult_OBUF[26]_inst 
       (.I(ALUResult_OBUF[26]),
        .O(ALUResult[26]));
  OBUF \ALUResult_OBUF[27]_inst 
       (.I(ALUResult_OBUF[27]),
        .O(ALUResult[27]));
  OBUF \ALUResult_OBUF[28]_inst 
       (.I(ALUResult_OBUF[28]),
        .O(ALUResult[28]));
  OBUF \ALUResult_OBUF[29]_inst 
       (.I(ALUResult_OBUF[29]),
        .O(ALUResult[29]));
  OBUF \ALUResult_OBUF[2]_inst 
       (.I(ALUResult_OBUF[2]),
        .O(ALUResult[2]));
  OBUF \ALUResult_OBUF[30]_inst 
       (.I(ALUResult_OBUF[30]),
        .O(ALUResult[30]));
  OBUF \ALUResult_OBUF[31]_inst 
       (.I(ALUResult_OBUF[31]),
        .O(ALUResult[31]));
  OBUF \ALUResult_OBUF[3]_inst 
       (.I(ALUResult_OBUF[3]),
        .O(ALUResult[3]));
  OBUF \ALUResult_OBUF[4]_inst 
       (.I(ALUResult_OBUF[4]),
        .O(ALUResult[4]));
  OBUF \ALUResult_OBUF[5]_inst 
       (.I(ALUResult_OBUF[5]),
        .O(ALUResult[5]));
  OBUF \ALUResult_OBUF[6]_inst 
       (.I(ALUResult_OBUF[6]),
        .O(ALUResult[6]));
  OBUF \ALUResult_OBUF[7]_inst 
       (.I(ALUResult_OBUF[7]),
        .O(ALUResult[7]));
  OBUF \ALUResult_OBUF[8]_inst 
       (.I(ALUResult_OBUF[8]),
        .O(ALUResult[8]));
  OBUF \ALUResult_OBUF[9]_inst 
       (.I(ALUResult_OBUF[9]),
        .O(ALUResult[9]));
  OBUF \Instr_OBUF[0]_inst 
       (.I(Instr_OBUF[0]),
        .O(Instr[0]));
  OBUF \Instr_OBUF[10]_inst 
       (.I(Instr_OBUF[7]),
        .O(Instr[10]));
  OBUF \Instr_OBUF[11]_inst 
       (.I(Instr_OBUF[7]),
        .O(Instr[11]));
  OBUF \Instr_OBUF[12]_inst 
       (.I(Instr_OBUF[12]),
        .O(Instr[12]));
  OBUF \Instr_OBUF[13]_inst 
       (.I(Instr_OBUF[13]),
        .O(Instr[13]));
  OBUF \Instr_OBUF[14]_inst 
       (.I(Instr_OBUF[14]),
        .O(Instr[14]));
  OBUF \Instr_OBUF[15]_inst 
       (.I(Instr_OBUF[15]),
        .O(Instr[15]));
  OBUF \Instr_OBUF[16]_inst 
       (.I(Instr_OBUF[16]),
        .O(Instr[16]));
  OBUF \Instr_OBUF[17]_inst 
       (.I(Instr_OBUF[17]),
        .O(Instr[17]));
  OBUF \Instr_OBUF[18]_inst 
       (.I(Instr_OBUF[18]),
        .O(Instr[18]));
  OBUF \Instr_OBUF[19]_inst 
       (.I(Instr_OBUF[19]),
        .O(Instr[19]));
  OBUF \Instr_OBUF[1]_inst 
       (.I(Instr_OBUF[1]),
        .O(Instr[1]));
  OBUF \Instr_OBUF[20]_inst 
       (.I(Instr_OBUF[20]),
        .O(Instr[20]));
  OBUF \Instr_OBUF[21]_inst 
       (.I(Instr_OBUF[21]),
        .O(Instr[21]));
  OBUF \Instr_OBUF[22]_inst 
       (.I(Instr_OBUF[22]),
        .O(Instr[22]));
  OBUF \Instr_OBUF[23]_inst 
       (.I(Instr_OBUF[23]),
        .O(Instr[23]));
  OBUF \Instr_OBUF[24]_inst 
       (.I(Instr_OBUF[24]),
        .O(Instr[24]));
  OBUF \Instr_OBUF[25]_inst 
       (.I(Instr_OBUF[25]),
        .O(Instr[25]));
  OBUF \Instr_OBUF[26]_inst 
       (.I(Instr_OBUF[26]),
        .O(Instr[26]));
  OBUF \Instr_OBUF[27]_inst 
       (.I(Instr_OBUF[7]),
        .O(Instr[27]));
  OBUF \Instr_OBUF[28]_inst 
       (.I(Instr_OBUF[28]),
        .O(Instr[28]));
  OBUF \Instr_OBUF[29]_inst 
       (.I(Instr_OBUF[29]),
        .O(Instr[29]));
  OBUF \Instr_OBUF[2]_inst 
       (.I(Instr_OBUF[2]),
        .O(Instr[2]));
  OBUF \Instr_OBUF[30]_inst 
       (.I(Instr_OBUF[30]),
        .O(Instr[30]));
  OBUF \Instr_OBUF[31]_inst 
       (.I(Instr_OBUF[31]),
        .O(Instr[31]));
  OBUF \Instr_OBUF[3]_inst 
       (.I(Instr_OBUF[3]),
        .O(Instr[3]));
  OBUF \Instr_OBUF[4]_inst 
       (.I(1'b0),
        .O(Instr[4]));
  OBUF \Instr_OBUF[5]_inst 
       (.I(Instr_OBUF[5]),
        .O(Instr[5]));
  OBUF \Instr_OBUF[6]_inst 
       (.I(Instr_OBUF[6]),
        .O(Instr[6]));
  OBUF \Instr_OBUF[7]_inst 
       (.I(Instr_OBUF[7]),
        .O(Instr[7]));
  OBUF \Instr_OBUF[8]_inst 
       (.I(Instr_OBUF[7]),
        .O(Instr[8]));
  OBUF \Instr_OBUF[9]_inst 
       (.I(Instr_OBUF[9]),
        .O(Instr[9]));
  OBUF \PC_OBUF[0]_inst 
       (.I(PC_OBUF[0]),
        .O(PC[0]));
  OBUF \PC_OBUF[10]_inst 
       (.I(PC_OBUF[10]),
        .O(PC[10]));
  OBUF \PC_OBUF[11]_inst 
       (.I(PC_OBUF[11]),
        .O(PC[11]));
  OBUF \PC_OBUF[12]_inst 
       (.I(PC_OBUF[12]),
        .O(PC[12]));
  OBUF \PC_OBUF[13]_inst 
       (.I(PC_OBUF[13]),
        .O(PC[13]));
  OBUF \PC_OBUF[14]_inst 
       (.I(PC_OBUF[14]),
        .O(PC[14]));
  OBUF \PC_OBUF[15]_inst 
       (.I(PC_OBUF[15]),
        .O(PC[15]));
  OBUF \PC_OBUF[16]_inst 
       (.I(PC_OBUF[16]),
        .O(PC[16]));
  OBUF \PC_OBUF[17]_inst 
       (.I(PC_OBUF[17]),
        .O(PC[17]));
  OBUF \PC_OBUF[18]_inst 
       (.I(PC_OBUF[18]),
        .O(PC[18]));
  OBUF \PC_OBUF[19]_inst 
       (.I(PC_OBUF[19]),
        .O(PC[19]));
  OBUF \PC_OBUF[1]_inst 
       (.I(PC_OBUF[1]),
        .O(PC[1]));
  OBUF \PC_OBUF[20]_inst 
       (.I(PC_OBUF[20]),
        .O(PC[20]));
  OBUF \PC_OBUF[21]_inst 
       (.I(PC_OBUF[21]),
        .O(PC[21]));
  OBUF \PC_OBUF[22]_inst 
       (.I(PC_OBUF[22]),
        .O(PC[22]));
  OBUF \PC_OBUF[23]_inst 
       (.I(PC_OBUF[23]),
        .O(PC[23]));
  OBUF \PC_OBUF[24]_inst 
       (.I(PC_OBUF[24]),
        .O(PC[24]));
  OBUF \PC_OBUF[25]_inst 
       (.I(PC_OBUF[25]),
        .O(PC[25]));
  OBUF \PC_OBUF[26]_inst 
       (.I(PC_OBUF[26]),
        .O(PC[26]));
  OBUF \PC_OBUF[27]_inst 
       (.I(PC_OBUF[27]),
        .O(PC[27]));
  OBUF \PC_OBUF[28]_inst 
       (.I(PC_OBUF[28]),
        .O(PC[28]));
  OBUF \PC_OBUF[29]_inst 
       (.I(PC_OBUF[29]),
        .O(PC[29]));
  OBUF \PC_OBUF[2]_inst 
       (.I(PC_OBUF[2]),
        .O(PC[2]));
  OBUF \PC_OBUF[30]_inst 
       (.I(PC_OBUF[30]),
        .O(PC[30]));
  OBUF \PC_OBUF[31]_inst 
       (.I(PC_OBUF[31]),
        .O(PC[31]));
  OBUF \PC_OBUF[3]_inst 
       (.I(PC_OBUF[3]),
        .O(PC[3]));
  OBUF \PC_OBUF[4]_inst 
       (.I(PC_OBUF[4]),
        .O(PC[4]));
  OBUF \PC_OBUF[5]_inst 
       (.I(PC_OBUF[5]),
        .O(PC[5]));
  OBUF \PC_OBUF[6]_inst 
       (.I(PC_OBUF[6]),
        .O(PC[6]));
  OBUF \PC_OBUF[7]_inst 
       (.I(PC_OBUF[7]),
        .O(PC[7]));
  OBUF \PC_OBUF[8]_inst 
       (.I(PC_OBUF[8]),
        .O(PC[8]));
  OBUF \PC_OBUF[9]_inst 
       (.I(PC_OBUF[9]),
        .O(PC[9]));
  OBUF \Result_OBUF[0]_inst 
       (.I(Result_OBUF[0]),
        .O(Result[0]));
  OBUF \Result_OBUF[10]_inst 
       (.I(Result_OBUF[10]),
        .O(Result[10]));
  OBUF \Result_OBUF[11]_inst 
       (.I(Result_OBUF[11]),
        .O(Result[11]));
  OBUF \Result_OBUF[12]_inst 
       (.I(Result_OBUF[12]),
        .O(Result[12]));
  OBUF \Result_OBUF[13]_inst 
       (.I(Result_OBUF[13]),
        .O(Result[13]));
  OBUF \Result_OBUF[14]_inst 
       (.I(Result_OBUF[14]),
        .O(Result[14]));
  OBUF \Result_OBUF[15]_inst 
       (.I(Result_OBUF[15]),
        .O(Result[15]));
  OBUF \Result_OBUF[16]_inst 
       (.I(Result_OBUF[16]),
        .O(Result[16]));
  OBUF \Result_OBUF[17]_inst 
       (.I(Result_OBUF[17]),
        .O(Result[17]));
  OBUF \Result_OBUF[18]_inst 
       (.I(Result_OBUF[18]),
        .O(Result[18]));
  OBUF \Result_OBUF[19]_inst 
       (.I(Result_OBUF[19]),
        .O(Result[19]));
  OBUF \Result_OBUF[1]_inst 
       (.I(Result_OBUF[1]),
        .O(Result[1]));
  OBUF \Result_OBUF[20]_inst 
       (.I(Result_OBUF[20]),
        .O(Result[20]));
  OBUF \Result_OBUF[21]_inst 
       (.I(Result_OBUF[21]),
        .O(Result[21]));
  OBUF \Result_OBUF[22]_inst 
       (.I(Result_OBUF[22]),
        .O(Result[22]));
  OBUF \Result_OBUF[23]_inst 
       (.I(Result_OBUF[23]),
        .O(Result[23]));
  OBUF \Result_OBUF[24]_inst 
       (.I(Result_OBUF[24]),
        .O(Result[24]));
  OBUF \Result_OBUF[25]_inst 
       (.I(Result_OBUF[25]),
        .O(Result[25]));
  OBUF \Result_OBUF[26]_inst 
       (.I(Result_OBUF[26]),
        .O(Result[26]));
  OBUF \Result_OBUF[27]_inst 
       (.I(Result_OBUF[27]),
        .O(Result[27]));
  OBUF \Result_OBUF[28]_inst 
       (.I(Result_OBUF[28]),
        .O(Result[28]));
  OBUF \Result_OBUF[29]_inst 
       (.I(Result_OBUF[29]),
        .O(Result[29]));
  OBUF \Result_OBUF[2]_inst 
       (.I(Result_OBUF[2]),
        .O(Result[2]));
  OBUF \Result_OBUF[30]_inst 
       (.I(Result_OBUF[30]),
        .O(Result[30]));
  OBUF \Result_OBUF[31]_inst 
       (.I(Result_OBUF[31]),
        .O(Result[31]));
  OBUF \Result_OBUF[3]_inst 
       (.I(Result_OBUF[3]),
        .O(Result[3]));
  OBUF \Result_OBUF[4]_inst 
       (.I(Result_OBUF[4]),
        .O(Result[4]));
  OBUF \Result_OBUF[5]_inst 
       (.I(Result_OBUF[5]),
        .O(Result[5]));
  OBUF \Result_OBUF[6]_inst 
       (.I(Result_OBUF[6]),
        .O(Result[6]));
  OBUF \Result_OBUF[7]_inst 
       (.I(Result_OBUF[7]),
        .O(Result[7]));
  OBUF \Result_OBUF[8]_inst 
       (.I(Result_OBUF[8]),
        .O(Result[8]));
  OBUF \Result_OBUF[9]_inst 
       (.I(Result_OBUF[9]),
        .O(Result[9]));
  OBUF \WriteData_OBUF[0]_inst 
       (.I(WriteData_OBUF[0]),
        .O(WriteData[0]));
  OBUF \WriteData_OBUF[10]_inst 
       (.I(WriteData_OBUF[10]),
        .O(WriteData[10]));
  OBUF \WriteData_OBUF[11]_inst 
       (.I(WriteData_OBUF[11]),
        .O(WriteData[11]));
  OBUF \WriteData_OBUF[12]_inst 
       (.I(WriteData_OBUF[12]),
        .O(WriteData[12]));
  OBUF \WriteData_OBUF[13]_inst 
       (.I(WriteData_OBUF[13]),
        .O(WriteData[13]));
  OBUF \WriteData_OBUF[14]_inst 
       (.I(WriteData_OBUF[14]),
        .O(WriteData[14]));
  OBUF \WriteData_OBUF[15]_inst 
       (.I(WriteData_OBUF[15]),
        .O(WriteData[15]));
  OBUF \WriteData_OBUF[16]_inst 
       (.I(WriteData_OBUF[16]),
        .O(WriteData[16]));
  OBUF \WriteData_OBUF[17]_inst 
       (.I(WriteData_OBUF[17]),
        .O(WriteData[17]));
  OBUF \WriteData_OBUF[18]_inst 
       (.I(WriteData_OBUF[18]),
        .O(WriteData[18]));
  OBUF \WriteData_OBUF[19]_inst 
       (.I(WriteData_OBUF[19]),
        .O(WriteData[19]));
  OBUF \WriteData_OBUF[1]_inst 
       (.I(WriteData_OBUF[1]),
        .O(WriteData[1]));
  OBUF \WriteData_OBUF[20]_inst 
       (.I(WriteData_OBUF[20]),
        .O(WriteData[20]));
  OBUF \WriteData_OBUF[21]_inst 
       (.I(WriteData_OBUF[21]),
        .O(WriteData[21]));
  OBUF \WriteData_OBUF[22]_inst 
       (.I(WriteData_OBUF[22]),
        .O(WriteData[22]));
  OBUF \WriteData_OBUF[23]_inst 
       (.I(WriteData_OBUF[23]),
        .O(WriteData[23]));
  OBUF \WriteData_OBUF[24]_inst 
       (.I(WriteData_OBUF[24]),
        .O(WriteData[24]));
  OBUF \WriteData_OBUF[25]_inst 
       (.I(WriteData_OBUF[25]),
        .O(WriteData[25]));
  OBUF \WriteData_OBUF[26]_inst 
       (.I(WriteData_OBUF[26]),
        .O(WriteData[26]));
  OBUF \WriteData_OBUF[27]_inst 
       (.I(WriteData_OBUF[27]),
        .O(WriteData[27]));
  OBUF \WriteData_OBUF[28]_inst 
       (.I(WriteData_OBUF[28]),
        .O(WriteData[28]));
  OBUF \WriteData_OBUF[29]_inst 
       (.I(WriteData_OBUF[29]),
        .O(WriteData[29]));
  OBUF \WriteData_OBUF[2]_inst 
       (.I(WriteData_OBUF[2]),
        .O(WriteData[2]));
  OBUF \WriteData_OBUF[30]_inst 
       (.I(WriteData_OBUF[30]),
        .O(WriteData[30]));
  OBUF \WriteData_OBUF[31]_inst 
       (.I(WriteData_OBUF[31]),
        .O(WriteData[31]));
  OBUF \WriteData_OBUF[3]_inst 
       (.I(WriteData_OBUF[3]),
        .O(WriteData[3]));
  OBUF \WriteData_OBUF[4]_inst 
       (.I(WriteData_OBUF[4]),
        .O(WriteData[4]));
  OBUF \WriteData_OBUF[5]_inst 
       (.I(WriteData_OBUF[5]),
        .O(WriteData[5]));
  OBUF \WriteData_OBUF[6]_inst 
       (.I(WriteData_OBUF[6]),
        .O(WriteData[6]));
  OBUF \WriteData_OBUF[7]_inst 
       (.I(WriteData_OBUF[7]),
        .O(WriteData[7]));
  OBUF \WriteData_OBUF[8]_inst 
       (.I(WriteData_OBUF[8]),
        .O(WriteData[8]));
  OBUF \WriteData_OBUF[9]_inst 
       (.I(WriteData_OBUF[9]),
        .O(WriteData[9]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  controller cont
       (.ALUResult_OBUF(ALUResult_OBUF[31]),
        .Instr_OBUF(Instr_OBUF[29:28]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .en(\cl/en ),
        .\q_reg[0] (cont_n_0),
        .\q_reg[0]_0 (cont_n_1),
        .\q_reg[0]_1 (cont_n_2),
        .\q_reg[0]_2 (dp_n_158),
        .\q_reg[0]_3 (dp_n_157),
        .\q_reg[0]_4 (dp_n_159),
        .\q_reg[0]_5 (dp_n_160),
        .\q_reg[0]_6 (dp_n_156),
        .reset_IBUF(reset_IBUF));
  datapath dp
       (.ALUResult_OBUF(ALUResult_OBUF),
        .Instr_OBUF({Instr_OBUF[31:28],Instr_OBUF[26:12],Instr_OBUF[9],Instr_OBUF[7:5],Instr_OBUF[3:0]}),
        .PC_OBUF(PC_OBUF),
        .Result_OBUF(Result_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .en(\cl/en ),
        .\q[1]_i_2 (cont_n_1),
        .\q[1]_i_2_0 (cont_n_2),
        .\q_reg[0] (dp_n_158),
        .\q_reg[0]_0 (cont_n_0),
        .\q_reg[2] (dp_n_157),
        .\q_reg[2]_0 (dp_n_159),
        .\q_reg[3] (dp_n_156),
        .\q_reg[5] (dp_n_160),
        .reset_IBUF(reset_IBUF),
        .wd(WriteData_OBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
endmodule

module condlogic
   (\q_reg[0] ,
    \q_reg[0]_0 ,
    \q_reg[0]_1 ,
    \q_reg[0]_2 ,
    clk_IBUF_BUFG,
    reset_IBUF,
    Instr_OBUF,
    ALUResult_OBUF,
    en,
    \q_reg[0]_3 ,
    \q_reg[0]_4 ,
    \q_reg[0]_5 ,
    \q_reg[0]_6 );
  output \q_reg[0] ;
  output \q_reg[0]_0 ;
  output \q_reg[0]_1 ;
  input \q_reg[0]_2 ;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input [1:0]Instr_OBUF;
  input [0:0]ALUResult_OBUF;
  input en;
  input \q_reg[0]_3 ;
  input \q_reg[0]_4 ;
  input \q_reg[0]_5 ;
  input \q_reg[0]_6 ;

  wire [0:0]ALUResult_OBUF;
  wire [1:0]Instr_OBUF;
  wire clk_IBUF_BUFG;
  wire en;
  wire [1:1]q;
  wire \q_reg[0] ;
  wire \q_reg[0]_0 ;
  wire \q_reg[0]_1 ;
  wire \q_reg[0]_2 ;
  wire \q_reg[0]_3 ;
  wire \q_reg[0]_4 ;
  wire \q_reg[0]_5 ;
  wire \q_reg[0]_6 ;
  wire reset_IBUF;

  flopenr flagreg0
       (.Instr_OBUF(Instr_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .q(q),
        .\q_reg[0]_0 (\q_reg[0] ),
        .\q_reg[0]_1 (\q_reg[0]_0 ),
        .\q_reg[0]_2 (\q_reg[0]_2 ),
        .reset_IBUF(reset_IBUF));
  flopenr_0 flagreg1
       (.ALUResult_OBUF(ALUResult_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .en(en),
        .q(q),
        .\q_reg[0]_0 (\q_reg[0]_1 ),
        .\q_reg[0]_1 (\q_reg[0]_3 ),
        .\q_reg[0]_2 (\q_reg[0]_4 ),
        .\q_reg[0]_3 (\q_reg[0]_5 ),
        .\q_reg[0]_4 (\q_reg[0]_6 ),
        .reset_IBUF(reset_IBUF));
endmodule

module controller
   (\q_reg[0] ,
    \q_reg[0]_0 ,
    \q_reg[0]_1 ,
    \q_reg[0]_2 ,
    clk_IBUF_BUFG,
    reset_IBUF,
    Instr_OBUF,
    ALUResult_OBUF,
    en,
    \q_reg[0]_3 ,
    \q_reg[0]_4 ,
    \q_reg[0]_5 ,
    \q_reg[0]_6 );
  output \q_reg[0] ;
  output \q_reg[0]_0 ;
  output \q_reg[0]_1 ;
  input \q_reg[0]_2 ;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input [1:0]Instr_OBUF;
  input [0:0]ALUResult_OBUF;
  input en;
  input \q_reg[0]_3 ;
  input \q_reg[0]_4 ;
  input \q_reg[0]_5 ;
  input \q_reg[0]_6 ;

  wire [0:0]ALUResult_OBUF;
  wire [1:0]Instr_OBUF;
  wire clk_IBUF_BUFG;
  wire en;
  wire \q_reg[0] ;
  wire \q_reg[0]_0 ;
  wire \q_reg[0]_1 ;
  wire \q_reg[0]_2 ;
  wire \q_reg[0]_3 ;
  wire \q_reg[0]_4 ;
  wire \q_reg[0]_5 ;
  wire \q_reg[0]_6 ;
  wire reset_IBUF;

  condlogic cl
       (.ALUResult_OBUF(ALUResult_OBUF),
        .Instr_OBUF(Instr_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .en(en),
        .\q_reg[0] (\q_reg[0] ),
        .\q_reg[0]_0 (\q_reg[0]_0 ),
        .\q_reg[0]_1 (\q_reg[0]_1 ),
        .\q_reg[0]_2 (\q_reg[0]_2 ),
        .\q_reg[0]_3 (\q_reg[0]_3 ),
        .\q_reg[0]_4 (\q_reg[0]_4 ),
        .\q_reg[0]_5 (\q_reg[0]_5 ),
        .\q_reg[0]_6 (\q_reg[0]_6 ),
        .reset_IBUF(reset_IBUF));
endmodule

module datapath
   (PC_OBUF,
    Result_OBUF,
    Instr_OBUF,
    ALUResult_OBUF,
    en,
    wd,
    \q_reg[3] ,
    \q_reg[2] ,
    \q_reg[0] ,
    \q_reg[2]_0 ,
    \q_reg[5] ,
    clk_IBUF_BUFG,
    reset_IBUF,
    \q[1]_i_2 ,
    \q[1]_i_2_0 ,
    \q_reg[0]_0 );
  output [31:0]PC_OBUF;
  output [31:0]Result_OBUF;
  output [26:0]Instr_OBUF;
  output [31:0]ALUResult_OBUF;
  output en;
  output [31:0]wd;
  output \q_reg[3] ;
  output \q_reg[2] ;
  output \q_reg[0] ;
  output \q_reg[2]_0 ;
  output \q_reg[5] ;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input \q[1]_i_2 ;
  input \q[1]_i_2_0 ;
  input \q_reg[0]_0 ;

  wire [31:0]ALUResult_OBUF;
  wire [26:0]Instr_OBUF;
  wire MemWrite;
  wire [31:0]PC_OBUF;
  wire [3:0]RA2;
  wire RegWrite;
  wire [31:0]Result_OBUF;
  wire [30:0]SrcA;
  wire clk_IBUF_BUFG;
  wire [31:1]d1;
  wire en;
  wire i_alu_n_32;
  wire i_alu_n_65;
  wire [31:0]p_0_in;
  wire [31:0]p_2_in;
  wire pcadd2_n_65;
  wire pcadd2_n_66;
  wire pcadd2_n_67;
  wire pcadd2_n_68;
  wire pcadd2_n_69;
  wire pcadd2_n_70;
  wire pcadd2_n_71;
  wire pcadd2_n_72;
  wire pcadd2_n_73;
  wire pcadd2_n_74;
  wire pcreg_n_127;
  wire pcreg_n_128;
  wire pcreg_n_130;
  wire pcreg_n_131;
  wire pcreg_n_132;
  wire pcreg_n_133;
  wire pcreg_n_138;
  wire pcreg_n_170;
  wire pcreg_n_171;
  wire pcreg_n_172;
  wire pcreg_n_173;
  wire pcreg_n_174;
  wire pcreg_n_175;
  wire pcreg_n_176;
  wire pcreg_n_177;
  wire pcreg_n_178;
  wire pcreg_n_179;
  wire pcreg_n_180;
  wire pcreg_n_181;
  wire pcreg_n_182;
  wire pcreg_n_183;
  wire pcreg_n_184;
  wire pcreg_n_185;
  wire pcreg_n_186;
  wire pcreg_n_187;
  wire pcreg_n_188;
  wire pcreg_n_189;
  wire pcreg_n_190;
  wire pcreg_n_191;
  wire pcreg_n_192;
  wire pcreg_n_193;
  wire pcreg_n_194;
  wire pcreg_n_195;
  wire pcreg_n_196;
  wire pcreg_n_197;
  wire pcreg_n_198;
  wire pcreg_n_199;
  wire pcreg_n_200;
  wire pcreg_n_201;
  wire pcreg_n_202;
  wire pcreg_n_203;
  wire pcreg_n_204;
  wire pcreg_n_205;
  wire pcreg_n_206;
  wire pcreg_n_207;
  wire pcreg_n_208;
  wire pcreg_n_209;
  wire pcreg_n_212;
  wire pcreg_n_213;
  wire pcreg_n_214;
  wire pcreg_n_215;
  wire pcreg_n_216;
  wire pcreg_n_217;
  wire pcreg_n_218;
  wire pcreg_n_219;
  wire pcreg_n_220;
  wire pcreg_n_221;
  wire pcreg_n_222;
  wire pcreg_n_223;
  wire pcreg_n_224;
  wire pcreg_n_225;
  wire pcreg_n_226;
  wire pcreg_n_227;
  wire pcreg_n_228;
  wire pcreg_n_229;
  wire pcreg_n_230;
  wire pcreg_n_231;
  wire pcreg_n_232;
  wire pcreg_n_233;
  wire pcreg_n_234;
  wire pcreg_n_235;
  wire pcreg_n_64;
  wire pcreg_n_95;
  wire \q[1]_i_2 ;
  wire \q[1]_i_2_0 ;
  wire \q_reg[0] ;
  wire \q_reg[0]_0 ;
  wire \q_reg[2] ;
  wire \q_reg[2]_0 ;
  wire \q_reg[3] ;
  wire \q_reg[5] ;
  wire [31:1]r15;
  wire [31:0]rd;
  wire [31:0]rd10;
  wire [31:0]rd20;
  wire reset_IBUF;
  wire [31:0]wd;

  dmem d_mem
       (.ALUResult_OBUF({ALUResult_OBUF[31],ALUResult_OBUF[7:2]}),
        .MemWrite(MemWrite),
        .\Result[30] (Instr_OBUF[22]),
        .\Result[30]_0 (pcreg_n_132),
        .\Result[30]_1 (pcreg_n_133),
        .Result_OBUF(Result_OBUF[31:30]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rd(rd),
        .wd(wd));
  alu i_alu
       (.\ALUResult_OBUF[0]_inst_i_3 ({pcadd2_n_70,pcadd2_n_71,pcadd2_n_72}),
        .\ALUResult_OBUF[0]_inst_i_3_0 ({pcreg_n_198,pcreg_n_199,pcreg_n_200,pcreg_n_201}),
        .\ALUResult_OBUF[12]_inst_i_2 ({pcreg_n_178,pcreg_n_179,pcreg_n_180,pcreg_n_181}),
        .\ALUResult_OBUF[12]_inst_i_2_0 ({pcreg_n_220,pcreg_n_221,pcreg_n_222,pcreg_n_223}),
        .\ALUResult_OBUF[16]_inst_i_2 ({pcreg_n_182,pcreg_n_183,pcreg_n_184,pcreg_n_185}),
        .\ALUResult_OBUF[16]_inst_i_2_0 ({pcreg_n_224,pcreg_n_225,pcreg_n_226,pcreg_n_227}),
        .\ALUResult_OBUF[20]_inst_i_2 ({pcreg_n_186,pcreg_n_187,pcreg_n_188,pcreg_n_189}),
        .\ALUResult_OBUF[20]_inst_i_2_0 ({pcreg_n_232,pcreg_n_233,pcreg_n_234,pcreg_n_235}),
        .\ALUResult_OBUF[24]_inst_i_2 ({pcreg_n_190,pcreg_n_191,pcreg_n_192,pcreg_n_193}),
        .\ALUResult_OBUF[24]_inst_i_2_0 ({pcreg_n_228,pcreg_n_229,pcreg_n_230,pcreg_n_231}),
        .\ALUResult_OBUF[28]_inst_i_4 (pcadd2_n_66),
        .\ALUResult_OBUF[28]_inst_i_4_0 ({pcreg_n_194,pcreg_n_195,pcreg_n_196,pcreg_n_197}),
        .\ALUResult_OBUF[28]_inst_i_4_1 ({pcreg_n_206,pcreg_n_207,pcreg_n_208,pcreg_n_209}),
        .\ALUResult_OBUF[4]_inst_i_2 ({pcreg_n_216,pcreg_n_217,pcreg_n_218,pcreg_n_219}),
        .\ALUResult_OBUF[4]_inst_i_2_0 ({pcreg_n_212,pcreg_n_213,pcreg_n_214,pcreg_n_215}),
        .\ALUResult_OBUF[8]_inst_i_2 ({pcreg_n_174,pcreg_n_175,pcreg_n_176,pcreg_n_177}),
        .\ALUResult_OBUF[8]_inst_i_2_0 ({pcreg_n_202,pcreg_n_203,pcreg_n_204,pcreg_n_205}),
        .CO(i_alu_n_32),
        .DI({pcadd2_n_67,pcadd2_n_68,pcadd2_n_69,pcreg_n_138}),
        .S({pcreg_n_170,pcreg_n_171,pcreg_n_172,pcreg_n_173}),
        .SrcA({SrcA[30:4],SrcA[0]}),
        .i__carry__6_i_4(i_alu_n_65),
        .p_0_in(p_0_in),
        .p_2_in(p_2_in),
        .\q_reg[0] (pcreg_n_127),
        .\q_reg[0]_0 (pcreg_n_64),
        .\q_reg[5] (\q_reg[5] ));
  adder pcadd2
       (.CO(pcadd2_n_73),
        .DI({pcadd2_n_67,pcadd2_n_68,pcadd2_n_69}),
        .\Result0_inferred__0/i__carry__2 (pcreg_n_131),
        .\Result0_inferred__0/i__carry__4 (pcreg_n_128),
        .\Result0_inferred__0/i__carry__6 (pcadd2_n_74),
        .SrcA({SrcA[30:23],SrcA[21:11],SrcA[9:1]}),
        .\WriteData[28] (pcreg_n_130),
        .d1(d1),
        .\q[0]_i_2__1 (i_alu_n_32),
        .\q[0]_i_2__1_0 (i_alu_n_65),
        .\q_reg[3] (pcadd2_n_65),
        .\q_reg[3]_0 (pcadd2_n_66),
        .\q_reg[3]_1 ({pcadd2_n_70,pcadd2_n_71,pcadd2_n_72}),
        .r15(r15),
        .rd10({rd10[31:23],rd10[21:1]}),
        .rd20({rd20[31],rd20[28:27],rd20[23:22],rd20[5]}),
        .wd({wd[31],wd[28:27],wd[23:22],wd[5]}));
  flopr pcreg
       (.ADDRA({RA2[3:2],pcreg_n_95,RA2[0]}),
        .ADDRD(Instr_OBUF[11:8]),
        .ALUResult_OBUF(ALUResult_OBUF),
        .\ALUResult_OBUF[10]_inst_i_1_0 (pcadd2_n_65),
        .\ALUResult_OBUF[31]_inst_i_1_0 (pcadd2_n_66),
        .CO(pcadd2_n_73),
        .DI(pcreg_n_138),
        .Instr_OBUF({Instr_OBUF[26:12],Instr_OBUF[7:0]}),
        .MemWrite(MemWrite),
        .PC_OBUF(PC_OBUF[31:1]),
        .RegWrite(RegWrite),
        .Result_OBUF(Result_OBUF[29:0]),
        .S({pcreg_n_170,pcreg_n_171,pcreg_n_172,pcreg_n_173}),
        .SrcA({SrcA[30:23],SrcA[21:20],SrcA[18:16],SrcA[14:11],SrcA[9:5],SrcA[3:1]}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .d1(d1),
        .en(en),
        .p_0_in(p_0_in),
        .p_2_in(p_2_in),
        .\q[1]_i_2_0 (\q[1]_i_2 ),
        .\q[1]_i_2_1 (\q[1]_i_2_0 ),
        .\q_reg[0]_0 (PC_OBUF[0]),
        .\q_reg[0]_1 (wd[0]),
        .\q_reg[0]_2 (SrcA[0]),
        .\q_reg[0]_3 (\q_reg[0] ),
        .\q_reg[0]_4 (\q_reg[0]_0 ),
        .\q_reg[0]_5 (pcadd2_n_74),
        .\q_reg[2]_0 (pcreg_n_64),
        .\q_reg[2]_1 (pcreg_n_130),
        .\q_reg[2]_2 (pcreg_n_132),
        .\q_reg[2]_3 (pcreg_n_133),
        .\q_reg[2]_4 ({pcreg_n_182,pcreg_n_183,pcreg_n_184,pcreg_n_185}),
        .\q_reg[2]_5 (\q_reg[2] ),
        .\q_reg[2]_6 ({pcreg_n_216,pcreg_n_217,pcreg_n_218,pcreg_n_219}),
        .\q_reg[2]_7 (\q_reg[2]_0 ),
        .\q_reg[3]_0 (pcreg_n_128),
        .\q_reg[3]_1 (\q_reg[3] ),
        .\q_reg[3]_10 ({pcreg_n_232,pcreg_n_233,pcreg_n_234,pcreg_n_235}),
        .\q_reg[3]_2 (pcreg_n_131),
        .\q_reg[3]_3 ({pcreg_n_194,pcreg_n_195,pcreg_n_196,pcreg_n_197}),
        .\q_reg[3]_4 ({pcreg_n_198,pcreg_n_199,pcreg_n_200,pcreg_n_201}),
        .\q_reg[3]_5 ({pcreg_n_202,pcreg_n_203,pcreg_n_204,pcreg_n_205}),
        .\q_reg[3]_6 ({pcreg_n_212,pcreg_n_213,pcreg_n_214,pcreg_n_215}),
        .\q_reg[3]_7 ({pcreg_n_220,pcreg_n_221,pcreg_n_222,pcreg_n_223}),
        .\q_reg[3]_8 ({pcreg_n_224,pcreg_n_225,pcreg_n_226,pcreg_n_227}),
        .\q_reg[3]_9 ({pcreg_n_228,pcreg_n_229,pcreg_n_230,pcreg_n_231}),
        .\q_reg[5]_0 (pcreg_n_127),
        .\q_reg[7]_0 ({pcreg_n_174,pcreg_n_175,pcreg_n_176,pcreg_n_177}),
        .\q_reg[7]_1 ({pcreg_n_178,pcreg_n_179,pcreg_n_180,pcreg_n_181}),
        .\q_reg[7]_2 ({pcreg_n_186,pcreg_n_187,pcreg_n_188,pcreg_n_189}),
        .\q_reg[7]_3 ({pcreg_n_190,pcreg_n_191,pcreg_n_192,pcreg_n_193}),
        .\q_reg[7]_4 ({pcreg_n_206,pcreg_n_207,pcreg_n_208,pcreg_n_209}),
        .r15(r15),
        .rd(rd),
        .rd10(rd10),
        .rd20(rd20),
        .reset_IBUF(reset_IBUF),
        .wd({wd[19],wd[14]}));
  regfile rf
       (.ADDRA({RA2[3:2],pcreg_n_95,RA2[0]}),
        .ADDRD(Instr_OBUF[11:8]),
        .Instr_OBUF(Instr_OBUF[15:12]),
        .RegWrite(RegWrite),
        .\Result0_inferred__0/i__carry__1 (pcreg_n_131),
        .\Result0_inferred__0/i__carry__4 (pcreg_n_128),
        .Result_OBUF(Result_OBUF),
        .SrcA({SrcA[22],SrcA[10]}),
        .\WriteData[6] (pcreg_n_130),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .r15({r15[30:29],r15[26:24],r15[22:6],r15[4:1]}),
        .rd10(rd10),
        .rd20(rd20),
        .wd({wd[30:29],wd[26:24],wd[21:6],wd[4:1]}));
endmodule

module dmem
   (Result_OBUF,
    rd,
    \Result[30] ,
    ALUResult_OBUF,
    \Result[30]_0 ,
    \Result[30]_1 ,
    clk_IBUF_BUFG,
    wd,
    MemWrite);
  output [1:0]Result_OBUF;
  output [31:0]rd;
  input \Result[30] ;
  input [6:0]ALUResult_OBUF;
  input \Result[30]_0 ;
  input \Result[30]_1 ;
  input clk_IBUF_BUFG;
  input [31:0]wd;
  input MemWrite;

  wire [6:0]ALUResult_OBUF;
  wire MemWrite;
  wire \Result[30] ;
  wire \Result[30]_0 ;
  wire \Result[30]_1 ;
  wire [1:0]Result_OBUF;
  wire clk_IBUF_BUFG;
  wire [31:0]rd;
  wire [31:0]wd;

  LUT4 #(
    .INIT(16'hBBB8)) 
    \Result_OBUF[30]_inst_i_1 
       (.I0(rd[30]),
        .I1(\Result[30] ),
        .I2(\Result[30]_0 ),
        .I3(\Result[30]_1 ),
        .O(Result_OBUF[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[31]_inst_i_1 
       (.I0(rd[31]),
        .I1(\Result[30] ),
        .I2(ALUResult_OBUF[6]),
        .O(Result_OBUF[1]));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "dp/d_mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM64X1S_UNIQ_BASE_ mem_reg_0_63_0_0
       (.A0(ALUResult_OBUF[0]),
        .A1(ALUResult_OBUF[1]),
        .A2(ALUResult_OBUF[2]),
        .A3(ALUResult_OBUF[3]),
        .A4(ALUResult_OBUF[4]),
        .A5(ALUResult_OBUF[5]),
        .D(wd[0]),
        .O(rd[0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(MemWrite));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "dp/d_mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM64X1S_HD44 mem_reg_0_63_10_10
       (.A0(ALUResult_OBUF[0]),
        .A1(ALUResult_OBUF[1]),
        .A2(ALUResult_OBUF[2]),
        .A3(ALUResult_OBUF[3]),
        .A4(ALUResult_OBUF[4]),
        .A5(ALUResult_OBUF[5]),
        .D(wd[10]),
        .O(rd[10]),
        .WCLK(clk_IBUF_BUFG),
        .WE(MemWrite));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "dp/d_mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM64X1S_HD45 mem_reg_0_63_11_11
       (.A0(ALUResult_OBUF[0]),
        .A1(ALUResult_OBUF[1]),
        .A2(ALUResult_OBUF[2]),
        .A3(ALUResult_OBUF[3]),
        .A4(ALUResult_OBUF[4]),
        .A5(ALUResult_OBUF[5]),
        .D(wd[11]),
        .O(rd[11]),
        .WCLK(clk_IBUF_BUFG),
        .WE(MemWrite));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "dp/d_mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1S_HD46 mem_reg_0_63_12_12
       (.A0(ALUResult_OBUF[0]),
        .A1(ALUResult_OBUF[1]),
        .A2(ALUResult_OBUF[2]),
        .A3(ALUResult_OBUF[3]),
        .A4(ALUResult_OBUF[4]),
        .A5(ALUResult_OBUF[5]),
        .D(wd[12]),
        .O(rd[12]),
        .WCLK(clk_IBUF_BUFG),
        .WE(MemWrite));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "dp/d_mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM64X1S_HD47 mem_reg_0_63_13_13
       (.A0(ALUResult_OBUF[0]),
        .A1(ALUResult_OBUF[1]),
        .A2(ALUResult_OBUF[2]),
        .A3(ALUResult_OBUF[3]),
        .A4(ALUResult_OBUF[4]),
        .A5(ALUResult_OBUF[5]),
        .D(wd[13]),
        .O(rd[13]),
        .WCLK(clk_IBUF_BUFG),
        .WE(MemWrite));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "dp/d_mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM64X1S_HD48 mem_reg_0_63_14_14
       (.A0(ALUResult_OBUF[0]),
        .A1(ALUResult_OBUF[1]),
        .A2(ALUResult_OBUF[2]),
        .A3(ALUResult_OBUF[3]),
        .A4(ALUResult_OBUF[4]),
        .A5(ALUResult_OBUF[5]),
        .D(wd[14]),
        .O(rd[14]),
        .WCLK(clk_IBUF_BUFG),
        .WE(MemWrite));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "dp/d_mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM64X1S_HD49 mem_reg_0_63_15_15
       (.A0(ALUResult_OBUF[0]),
        .A1(ALUResult_OBUF[1]),
        .A2(ALUResult_OBUF[2]),
        .A3(ALUResult_OBUF[3]),
        .A4(ALUResult_OBUF[4]),
        .A5(ALUResult_OBUF[5]),
        .D(wd[15]),
        .O(rd[15]),
        .WCLK(clk_IBUF_BUFG),
        .WE(MemWrite));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "dp/d_mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAM64X1S_HD50 mem_reg_0_63_16_16
       (.A0(ALUResult_OBUF[0]),
        .A1(ALUResult_OBUF[1]),
        .A2(ALUResult_OBUF[2]),
        .A3(ALUResult_OBUF[3]),
        .A4(ALUResult_OBUF[4]),
        .A5(ALUResult_OBUF[5]),
        .D(wd[16]),
        .O(rd[16]),
        .WCLK(clk_IBUF_BUFG),
        .WE(MemWrite));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "dp/d_mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAM64X1S_HD51 mem_reg_0_63_17_17
       (.A0(ALUResult_OBUF[0]),
        .A1(ALUResult_OBUF[1]),
        .A2(ALUResult_OBUF[2]),
        .A3(ALUResult_OBUF[3]),
        .A4(ALUResult_OBUF[4]),
        .A5(ALUResult_OBUF[5]),
        .D(wd[17]),
        .O(rd[17]),
        .WCLK(clk_IBUF_BUFG),
        .WE(MemWrite));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "dp/d_mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAM64X1S_HD52 mem_reg_0_63_18_18
       (.A0(ALUResult_OBUF[0]),
        .A1(ALUResult_OBUF[1]),
        .A2(ALUResult_OBUF[2]),
        .A3(ALUResult_OBUF[3]),
        .A4(ALUResult_OBUF[4]),
        .A5(ALUResult_OBUF[5]),
        .D(wd[18]),
        .O(rd[18]),
        .WCLK(clk_IBUF_BUFG),
        .WE(MemWrite));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "dp/d_mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAM64X1S_HD53 mem_reg_0_63_19_19
       (.A0(ALUResult_OBUF[0]),
        .A1(ALUResult_OBUF[1]),
        .A2(ALUResult_OBUF[2]),
        .A3(ALUResult_OBUF[3]),
        .A4(ALUResult_OBUF[4]),
        .A5(ALUResult_OBUF[5]),
        .D(wd[19]),
        .O(rd[19]),
        .WCLK(clk_IBUF_BUFG),
        .WE(MemWrite));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "dp/d_mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM64X1S_HD54 mem_reg_0_63_1_1
       (.A0(ALUResult_OBUF[0]),
        .A1(ALUResult_OBUF[1]),
        .A2(ALUResult_OBUF[2]),
        .A3(ALUResult_OBUF[3]),
        .A4(ALUResult_OBUF[4]),
        .A5(ALUResult_OBUF[5]),
        .D(wd[1]),
        .O(rd[1]),
        .WCLK(clk_IBUF_BUFG),
        .WE(MemWrite));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "dp/d_mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAM64X1S_HD55 mem_reg_0_63_20_20
       (.A0(ALUResult_OBUF[0]),
        .A1(ALUResult_OBUF[1]),
        .A2(ALUResult_OBUF[2]),
        .A3(ALUResult_OBUF[3]),
        .A4(ALUResult_OBUF[4]),
        .A5(ALUResult_OBUF[5]),
        .D(wd[20]),
        .O(rd[20]),
        .WCLK(clk_IBUF_BUFG),
        .WE(MemWrite));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "dp/d_mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAM64X1S_HD56 mem_reg_0_63_21_21
       (.A0(ALUResult_OBUF[0]),
        .A1(ALUResult_OBUF[1]),
        .A2(ALUResult_OBUF[2]),
        .A3(ALUResult_OBUF[3]),
        .A4(ALUResult_OBUF[4]),
        .A5(ALUResult_OBUF[5]),
        .D(wd[21]),
        .O(rd[21]),
        .WCLK(clk_IBUF_BUFG),
        .WE(MemWrite));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "dp/d_mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAM64X1S_HD57 mem_reg_0_63_22_22
       (.A0(ALUResult_OBUF[0]),
        .A1(ALUResult_OBUF[1]),
        .A2(ALUResult_OBUF[2]),
        .A3(ALUResult_OBUF[3]),
        .A4(ALUResult_OBUF[4]),
        .A5(ALUResult_OBUF[5]),
        .D(wd[22]),
        .O(rd[22]),
        .WCLK(clk_IBUF_BUFG),
        .WE(MemWrite));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "dp/d_mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAM64X1S_HD58 mem_reg_0_63_23_23
       (.A0(ALUResult_OBUF[0]),
        .A1(ALUResult_OBUF[1]),
        .A2(ALUResult_OBUF[2]),
        .A3(ALUResult_OBUF[3]),
        .A4(ALUResult_OBUF[4]),
        .A5(ALUResult_OBUF[5]),
        .D(wd[23]),
        .O(rd[23]),
        .WCLK(clk_IBUF_BUFG),
        .WE(MemWrite));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "dp/d_mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAM64X1S_HD59 mem_reg_0_63_24_24
       (.A0(ALUResult_OBUF[0]),
        .A1(ALUResult_OBUF[1]),
        .A2(ALUResult_OBUF[2]),
        .A3(ALUResult_OBUF[3]),
        .A4(ALUResult_OBUF[4]),
        .A5(ALUResult_OBUF[5]),
        .D(wd[24]),
        .O(rd[24]),
        .WCLK(clk_IBUF_BUFG),
        .WE(MemWrite));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "dp/d_mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAM64X1S_HD60 mem_reg_0_63_25_25
       (.A0(ALUResult_OBUF[0]),
        .A1(ALUResult_OBUF[1]),
        .A2(ALUResult_OBUF[2]),
        .A3(ALUResult_OBUF[3]),
        .A4(ALUResult_OBUF[4]),
        .A5(ALUResult_OBUF[5]),
        .D(wd[25]),
        .O(rd[25]),
        .WCLK(clk_IBUF_BUFG),
        .WE(MemWrite));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "dp/d_mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAM64X1S_HD61 mem_reg_0_63_26_26
       (.A0(ALUResult_OBUF[0]),
        .A1(ALUResult_OBUF[1]),
        .A2(ALUResult_OBUF[2]),
        .A3(ALUResult_OBUF[3]),
        .A4(ALUResult_OBUF[4]),
        .A5(ALUResult_OBUF[5]),
        .D(wd[26]),
        .O(rd[26]),
        .WCLK(clk_IBUF_BUFG),
        .WE(MemWrite));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "dp/d_mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAM64X1S_HD62 mem_reg_0_63_27_27
       (.A0(ALUResult_OBUF[0]),
        .A1(ALUResult_OBUF[1]),
        .A2(ALUResult_OBUF[2]),
        .A3(ALUResult_OBUF[3]),
        .A4(ALUResult_OBUF[4]),
        .A5(ALUResult_OBUF[5]),
        .D(wd[27]),
        .O(rd[27]),
        .WCLK(clk_IBUF_BUFG),
        .WE(MemWrite));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "dp/d_mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAM64X1S_HD63 mem_reg_0_63_28_28
       (.A0(ALUResult_OBUF[0]),
        .A1(ALUResult_OBUF[1]),
        .A2(ALUResult_OBUF[2]),
        .A3(ALUResult_OBUF[3]),
        .A4(ALUResult_OBUF[4]),
        .A5(ALUResult_OBUF[5]),
        .D(wd[28]),
        .O(rd[28]),
        .WCLK(clk_IBUF_BUFG),
        .WE(MemWrite));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "dp/d_mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAM64X1S_HD64 mem_reg_0_63_29_29
       (.A0(ALUResult_OBUF[0]),
        .A1(ALUResult_OBUF[1]),
        .A2(ALUResult_OBUF[2]),
        .A3(ALUResult_OBUF[3]),
        .A4(ALUResult_OBUF[4]),
        .A5(ALUResult_OBUF[5]),
        .D(wd[29]),
        .O(rd[29]),
        .WCLK(clk_IBUF_BUFG),
        .WE(MemWrite));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "dp/d_mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM64X1S_HD65 mem_reg_0_63_2_2
       (.A0(ALUResult_OBUF[0]),
        .A1(ALUResult_OBUF[1]),
        .A2(ALUResult_OBUF[2]),
        .A3(ALUResult_OBUF[3]),
        .A4(ALUResult_OBUF[4]),
        .A5(ALUResult_OBUF[5]),
        .D(wd[2]),
        .O(rd[2]),
        .WCLK(clk_IBUF_BUFG),
        .WE(MemWrite));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "dp/d_mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM64X1S_HD66 mem_reg_0_63_30_30
       (.A0(ALUResult_OBUF[0]),
        .A1(ALUResult_OBUF[1]),
        .A2(ALUResult_OBUF[2]),
        .A3(ALUResult_OBUF[3]),
        .A4(ALUResult_OBUF[4]),
        .A5(ALUResult_OBUF[5]),
        .D(wd[30]),
        .O(rd[30]),
        .WCLK(clk_IBUF_BUFG),
        .WE(MemWrite));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "dp/d_mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM64X1S_HD67 mem_reg_0_63_31_31
       (.A0(ALUResult_OBUF[0]),
        .A1(ALUResult_OBUF[1]),
        .A2(ALUResult_OBUF[2]),
        .A3(ALUResult_OBUF[3]),
        .A4(ALUResult_OBUF[4]),
        .A5(ALUResult_OBUF[5]),
        .D(wd[31]),
        .O(rd[31]),
        .WCLK(clk_IBUF_BUFG),
        .WE(MemWrite));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "dp/d_mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM64X1S_HD68 mem_reg_0_63_3_3
       (.A0(ALUResult_OBUF[0]),
        .A1(ALUResult_OBUF[1]),
        .A2(ALUResult_OBUF[2]),
        .A3(ALUResult_OBUF[3]),
        .A4(ALUResult_OBUF[4]),
        .A5(ALUResult_OBUF[5]),
        .D(wd[3]),
        .O(rd[3]),
        .WCLK(clk_IBUF_BUFG),
        .WE(MemWrite));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "dp/d_mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM64X1S_HD69 mem_reg_0_63_4_4
       (.A0(ALUResult_OBUF[0]),
        .A1(ALUResult_OBUF[1]),
        .A2(ALUResult_OBUF[2]),
        .A3(ALUResult_OBUF[3]),
        .A4(ALUResult_OBUF[4]),
        .A5(ALUResult_OBUF[5]),
        .D(wd[4]),
        .O(rd[4]),
        .WCLK(clk_IBUF_BUFG),
        .WE(MemWrite));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "dp/d_mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM64X1S_HD70 mem_reg_0_63_5_5
       (.A0(ALUResult_OBUF[0]),
        .A1(ALUResult_OBUF[1]),
        .A2(ALUResult_OBUF[2]),
        .A3(ALUResult_OBUF[3]),
        .A4(ALUResult_OBUF[4]),
        .A5(ALUResult_OBUF[5]),
        .D(wd[5]),
        .O(rd[5]),
        .WCLK(clk_IBUF_BUFG),
        .WE(MemWrite));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "dp/d_mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1S_HD71 mem_reg_0_63_6_6
       (.A0(ALUResult_OBUF[0]),
        .A1(ALUResult_OBUF[1]),
        .A2(ALUResult_OBUF[2]),
        .A3(ALUResult_OBUF[3]),
        .A4(ALUResult_OBUF[4]),
        .A5(ALUResult_OBUF[5]),
        .D(wd[6]),
        .O(rd[6]),
        .WCLK(clk_IBUF_BUFG),
        .WE(MemWrite));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "dp/d_mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1S_HD72 mem_reg_0_63_7_7
       (.A0(ALUResult_OBUF[0]),
        .A1(ALUResult_OBUF[1]),
        .A2(ALUResult_OBUF[2]),
        .A3(ALUResult_OBUF[3]),
        .A4(ALUResult_OBUF[4]),
        .A5(ALUResult_OBUF[5]),
        .D(wd[7]),
        .O(rd[7]),
        .WCLK(clk_IBUF_BUFG),
        .WE(MemWrite));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "dp/d_mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM64X1S_HD73 mem_reg_0_63_8_8
       (.A0(ALUResult_OBUF[0]),
        .A1(ALUResult_OBUF[1]),
        .A2(ALUResult_OBUF[2]),
        .A3(ALUResult_OBUF[3]),
        .A4(ALUResult_OBUF[4]),
        .A5(ALUResult_OBUF[5]),
        .D(wd[8]),
        .O(rd[8]),
        .WCLK(clk_IBUF_BUFG),
        .WE(MemWrite));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "dp/d_mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM64X1S_HD74 mem_reg_0_63_9_9
       (.A0(ALUResult_OBUF[0]),
        .A1(ALUResult_OBUF[1]),
        .A2(ALUResult_OBUF[2]),
        .A3(ALUResult_OBUF[3]),
        .A4(ALUResult_OBUF[4]),
        .A5(ALUResult_OBUF[5]),
        .D(wd[9]),
        .O(rd[9]),
        .WCLK(clk_IBUF_BUFG),
        .WE(MemWrite));
endmodule

module flopenr
   (\q_reg[0]_0 ,
    \q_reg[0]_1 ,
    \q_reg[0]_2 ,
    clk_IBUF_BUFG,
    reset_IBUF,
    Instr_OBUF,
    q);
  output \q_reg[0]_0 ;
  output \q_reg[0]_1 ;
  input \q_reg[0]_2 ;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input [1:0]Instr_OBUF;
  input [0:0]q;

  wire [1:0]Instr_OBUF;
  wire clk_IBUF_BUFG;
  wire [0:0]q;
  wire \q_reg[0]_0 ;
  wire \q_reg[0]_1 ;
  wire \q_reg[0]_2 ;
  wire reset_IBUF;

  LUT4 #(
    .INIT(16'h8BB8)) 
    mem_reg_r1_0_15_0_5_i_4
       (.I0(\q_reg[0]_0 ),
        .I1(Instr_OBUF[1]),
        .I2(q),
        .I3(Instr_OBUF[0]),
        .O(\q_reg[0]_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[0]_2 ),
        .Q(\q_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "flopenr" *) 
module flopenr_0
   (q,
    \q_reg[0]_0 ,
    ALUResult_OBUF,
    en,
    \q_reg[0]_1 ,
    \q_reg[0]_2 ,
    \q_reg[0]_3 ,
    \q_reg[0]_4 ,
    clk_IBUF_BUFG,
    reset_IBUF);
  output [0:0]q;
  output \q_reg[0]_0 ;
  input [0:0]ALUResult_OBUF;
  input en;
  input \q_reg[0]_1 ;
  input \q_reg[0]_2 ;
  input \q_reg[0]_3 ;
  input \q_reg[0]_4 ;
  input clk_IBUF_BUFG;
  input reset_IBUF;

  wire [0:0]ALUResult_OBUF;
  wire clk_IBUF_BUFG;
  wire en;
  wire [0:0]q;
  wire \q[0]_i_1_n_0 ;
  wire \q[1]_i_1_n_0 ;
  wire \q_reg[0]_0 ;
  wire \q_reg[0]_1 ;
  wire \q_reg[0]_2 ;
  wire \q_reg[0]_3 ;
  wire \q_reg[0]_4 ;
  wire reset_IBUF;

  LUT6 #(
    .INIT(64'h000EFFFF000E0000)) 
    \q[0]_i_1 
       (.I0(\q_reg[0]_1 ),
        .I1(\q_reg[0]_2 ),
        .I2(\q_reg[0]_3 ),
        .I3(\q_reg[0]_4 ),
        .I4(en),
        .I5(\q_reg[0]_0 ),
        .O(\q[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[1]_i_1 
       (.I0(ALUResult_OBUF),
        .I1(en),
        .I2(q),
        .O(\q[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q[0]_i_1_n_0 ),
        .Q(\q_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q[1]_i_1_n_0 ),
        .Q(q));
endmodule

module flopr
   (\q_reg[0]_0 ,
    PC_OBUF,
    ALUResult_OBUF,
    \q_reg[2]_0 ,
    ADDRD,
    en,
    Instr_OBUF,
    ADDRA,
    Result_OBUF,
    \q_reg[5]_0 ,
    \q_reg[3]_0 ,
    \q_reg[3]_1 ,
    \q_reg[2]_1 ,
    \q_reg[3]_2 ,
    \q_reg[2]_2 ,
    \q_reg[2]_3 ,
    \q_reg[0]_1 ,
    MemWrite,
    RegWrite,
    \q_reg[0]_2 ,
    DI,
    d1,
    S,
    \q_reg[7]_0 ,
    \q_reg[7]_1 ,
    \q_reg[2]_4 ,
    \q_reg[7]_2 ,
    \q_reg[7]_3 ,
    \q_reg[3]_3 ,
    \q_reg[3]_4 ,
    \q_reg[3]_5 ,
    \q_reg[7]_4 ,
    \q_reg[2]_5 ,
    \q_reg[0]_3 ,
    \q_reg[3]_6 ,
    \q_reg[2]_6 ,
    \q_reg[3]_7 ,
    \q_reg[3]_8 ,
    \q_reg[3]_9 ,
    \q_reg[3]_10 ,
    \q_reg[2]_7 ,
    clk_IBUF_BUFG,
    reset_IBUF,
    \ALUResult_OBUF[31]_inst_i_1_0 ,
    SrcA,
    rd,
    p_2_in,
    p_0_in,
    rd10,
    r15,
    \ALUResult_OBUF[10]_inst_i_1_0 ,
    rd20,
    wd,
    \q[1]_i_2_0 ,
    \q[1]_i_2_1 ,
    \q_reg[0]_4 ,
    \q_reg[0]_5 ,
    CO);
  output \q_reg[0]_0 ;
  output [30:0]PC_OBUF;
  output [31:0]ALUResult_OBUF;
  output \q_reg[2]_0 ;
  output [3:0]ADDRD;
  output en;
  output [22:0]Instr_OBUF;
  output [3:0]ADDRA;
  output [29:0]Result_OBUF;
  output \q_reg[5]_0 ;
  output \q_reg[3]_0 ;
  output \q_reg[3]_1 ;
  output \q_reg[2]_1 ;
  output \q_reg[3]_2 ;
  output \q_reg[2]_2 ;
  output \q_reg[2]_3 ;
  output [0:0]\q_reg[0]_1 ;
  output MemWrite;
  output RegWrite;
  output [0:0]\q_reg[0]_2 ;
  output [0:0]DI;
  output [30:0]d1;
  output [3:0]S;
  output [3:0]\q_reg[7]_0 ;
  output [3:0]\q_reg[7]_1 ;
  output [3:0]\q_reg[2]_4 ;
  output [3:0]\q_reg[7]_2 ;
  output [3:0]\q_reg[7]_3 ;
  output [3:0]\q_reg[3]_3 ;
  output [3:0]\q_reg[3]_4 ;
  output [3:0]\q_reg[3]_5 ;
  output [3:0]\q_reg[7]_4 ;
  output \q_reg[2]_5 ;
  output \q_reg[0]_3 ;
  output [3:0]\q_reg[3]_6 ;
  output [3:0]\q_reg[2]_6 ;
  output [3:0]\q_reg[3]_7 ;
  output [3:0]\q_reg[3]_8 ;
  output [3:0]\q_reg[3]_9 ;
  output [3:0]\q_reg[3]_10 ;
  output \q_reg[2]_7 ;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input [0:0]\ALUResult_OBUF[31]_inst_i_1_0 ;
  input [24:0]SrcA;
  input [31:0]rd;
  input [31:0]p_2_in;
  input [31:0]p_0_in;
  input [31:0]rd10;
  input [30:0]r15;
  input \ALUResult_OBUF[10]_inst_i_1_0 ;
  input [31:0]rd20;
  input [1:0]wd;
  input \q[1]_i_2_0 ;
  input \q[1]_i_2_1 ;
  input \q_reg[0]_4 ;
  input [0:0]\q_reg[0]_5 ;
  input [0:0]CO;

  wire [3:0]ADDRA;
  wire [3:0]ADDRD;
  wire [31:0]ALUResult_OBUF;
  wire \ALUResult_OBUF[0]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[0]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[0]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[0]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[10]_inst_i_1_0 ;
  wire \ALUResult_OBUF[10]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[10]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[10]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[10]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[11]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[11]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[11]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[11]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[11]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[12]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[12]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[12]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[12]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[12]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[13]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[13]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[13]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[13]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[13]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[14]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[14]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[14]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[14]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[15]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[15]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[15]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[15]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[15]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[16]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[16]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[16]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[16]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[17]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[17]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[17]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[18]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[18]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[18]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[19]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[19]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[19]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[19]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[19]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[1]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[1]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[1]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[20]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[20]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[20]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[20]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[20]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[21]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[21]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[21]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[21]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[21]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[22]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[22]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[22]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[22]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[22]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[22]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[23]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[23]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[23]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[23]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[24]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[24]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[24]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[24]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[24]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[25]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[25]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[25]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[25]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[25]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[25]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[26]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[26]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[26]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[26]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[26]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[27]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[27]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[27]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[28]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[28]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[28]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[28]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[29]_inst_i_10_n_0 ;
  wire \ALUResult_OBUF[29]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[29]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[29]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[29]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[29]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[29]_inst_i_8_n_0 ;
  wire \ALUResult_OBUF[29]_inst_i_9_n_0 ;
  wire \ALUResult_OBUF[2]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[2]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[2]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[30]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[30]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[30]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[30]_inst_i_8_n_0 ;
  wire \ALUResult_OBUF[31]_inst_i_10_n_0 ;
  wire \ALUResult_OBUF[31]_inst_i_11_n_0 ;
  wire \ALUResult_OBUF[31]_inst_i_12_n_0 ;
  wire \ALUResult_OBUF[31]_inst_i_13_n_0 ;
  wire [0:0]\ALUResult_OBUF[31]_inst_i_1_0 ;
  wire \ALUResult_OBUF[31]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[31]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[31]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[31]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[31]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[31]_inst_i_8_n_0 ;
  wire \ALUResult_OBUF[31]_inst_i_9_n_0 ;
  wire \ALUResult_OBUF[3]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[3]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[3]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[4]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[4]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[4]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[4]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[5]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[5]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[5]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[6]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[6]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[6]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[7]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[7]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[7]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[7]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[8]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[8]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[8]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[8]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[9]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[9]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[9]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[9]_inst_i_5_n_0 ;
  wire [0:0]CO;
  wire [0:0]DI;
  wire [22:0]Instr_OBUF;
  wire MemWrite;
  wire [30:0]PC_OBUF;
  wire RegWrite;
  wire Result0_carry__0_i_9_n_0;
  wire Result0_carry_i_15_n_0;
  wire [29:0]Result_OBUF;
  wire [3:0]S;
  wire [24:0]SrcA;
  wire [30:2]SrcB;
  wire clk_IBUF_BUFG;
  wire [30:0]d1;
  wire en;
  wire [5:0]\i_alu/aD2M4dsP ;
  wire mem_reg_r1_0_15_0_5_i_2_n_0;
  wire mem_reg_r1_0_15_0_5_i_3_n_0;
  wire [31:0]p_0_in;
  wire [31:0]p_2_in;
  wire \q[0]_i_10_n_0 ;
  wire \q[0]_i_15_n_0 ;
  wire \q[0]_i_16_n_0 ;
  wire \q[0]_i_17_n_0 ;
  wire \q[0]_i_18_n_0 ;
  wire \q[0]_i_19_n_0 ;
  wire \q[0]_i_1__0_n_0 ;
  wire \q[0]_i_20_n_0 ;
  wire \q[0]_i_21_n_0 ;
  wire \q[0]_i_22_n_0 ;
  wire \q[0]_i_23_n_0 ;
  wire \q[0]_i_24_n_0 ;
  wire \q[0]_i_25_n_0 ;
  wire \q[0]_i_26_n_0 ;
  wire \q[0]_i_27_n_0 ;
  wire \q[0]_i_28_n_0 ;
  wire \q[0]_i_2__0_n_0 ;
  wire \q[0]_i_2__1_n_0 ;
  wire \q[0]_i_37_n_0 ;
  wire \q[0]_i_38_n_0 ;
  wire \q[0]_i_39_n_0 ;
  wire \q[0]_i_40_n_0 ;
  wire \q[0]_i_41_n_0 ;
  wire \q[0]_i_42_n_0 ;
  wire \q[0]_i_43_n_0 ;
  wire \q[0]_i_44_n_0 ;
  wire \q[0]_i_45_n_0 ;
  wire \q[0]_i_46_n_0 ;
  wire \q[0]_i_47_n_0 ;
  wire \q[0]_i_48_n_0 ;
  wire \q[0]_i_49_n_0 ;
  wire \q[0]_i_50_n_0 ;
  wire \q[0]_i_51_n_0 ;
  wire \q[0]_i_52_n_0 ;
  wire \q[0]_i_53_n_0 ;
  wire \q[0]_i_54_n_0 ;
  wire \q[0]_i_55_n_0 ;
  wire \q[0]_i_56_n_0 ;
  wire \q[0]_i_57_n_0 ;
  wire \q[0]_i_58_n_0 ;
  wire \q[0]_i_59_n_0 ;
  wire \q[0]_i_60_n_0 ;
  wire \q[0]_i_61_n_0 ;
  wire \q[0]_i_66_n_0 ;
  wire \q[0]_i_67_n_0 ;
  wire \q[0]_i_68_n_0 ;
  wire \q[0]_i_69_n_0 ;
  wire \q[0]_i_6_n_0 ;
  wire \q[0]_i_70_n_0 ;
  wire \q[0]_i_71_n_0 ;
  wire \q[0]_i_72_n_0 ;
  wire \q[0]_i_73_n_0 ;
  wire \q[0]_i_7_n_0 ;
  wire \q[0]_i_8_n_0 ;
  wire \q[0]_i_9_n_0 ;
  wire \q[13]_i_2_n_0 ;
  wire \q[13]_i_3_n_0 ;
  wire \q[13]_i_4_n_0 ;
  wire \q[13]_i_5_n_0 ;
  wire \q[17]_i_2_n_0 ;
  wire \q[17]_i_3_n_0 ;
  wire \q[17]_i_4_n_0 ;
  wire \q[17]_i_5_n_0 ;
  wire \q[1]_i_2_0 ;
  wire \q[1]_i_2_1 ;
  wire \q[1]_i_2__0_n_0 ;
  wire \q[1]_i_3_n_0 ;
  wire \q[1]_i_4_n_0 ;
  wire \q[1]_i_5_n_0 ;
  wire \q[21]_i_2_n_0 ;
  wire \q[21]_i_3_n_0 ;
  wire \q[21]_i_4_n_0 ;
  wire \q[21]_i_5_n_0 ;
  wire \q[25]_i_2_n_0 ;
  wire \q[25]_i_3_n_0 ;
  wire \q[25]_i_4_n_0 ;
  wire \q[25]_i_5_n_0 ;
  wire \q[29]_i_2_n_0 ;
  wire \q[29]_i_3_n_0 ;
  wire \q[29]_i_4_n_0 ;
  wire \q[5]_i_2_n_0 ;
  wire \q[5]_i_3_n_0 ;
  wire \q[5]_i_4_n_0 ;
  wire \q[5]_i_5_n_0 ;
  wire \q[9]_i_2_n_0 ;
  wire \q[9]_i_3_n_0 ;
  wire \q[9]_i_4_n_0 ;
  wire \q[9]_i_5_n_0 ;
  wire \q_reg[0]_0 ;
  wire [0:0]\q_reg[0]_1 ;
  wire [0:0]\q_reg[0]_2 ;
  wire \q_reg[0]_3 ;
  wire \q_reg[0]_4 ;
  wire [0:0]\q_reg[0]_5 ;
  wire \q_reg[13]_i_1_n_0 ;
  wire \q_reg[13]_i_1_n_1 ;
  wire \q_reg[13]_i_1_n_2 ;
  wire \q_reg[13]_i_1_n_3 ;
  wire \q_reg[13]_i_1_n_4 ;
  wire \q_reg[13]_i_1_n_5 ;
  wire \q_reg[13]_i_1_n_6 ;
  wire \q_reg[13]_i_1_n_7 ;
  wire \q_reg[17]_i_1_n_0 ;
  wire \q_reg[17]_i_1_n_1 ;
  wire \q_reg[17]_i_1_n_2 ;
  wire \q_reg[17]_i_1_n_3 ;
  wire \q_reg[17]_i_1_n_4 ;
  wire \q_reg[17]_i_1_n_5 ;
  wire \q_reg[17]_i_1_n_6 ;
  wire \q_reg[17]_i_1_n_7 ;
  wire \q_reg[1]_i_1_n_0 ;
  wire \q_reg[1]_i_1_n_1 ;
  wire \q_reg[1]_i_1_n_2 ;
  wire \q_reg[1]_i_1_n_3 ;
  wire \q_reg[1]_i_1_n_4 ;
  wire \q_reg[1]_i_1_n_5 ;
  wire \q_reg[1]_i_1_n_6 ;
  wire \q_reg[1]_i_1_n_7 ;
  wire \q_reg[21]_i_1_n_0 ;
  wire \q_reg[21]_i_1_n_1 ;
  wire \q_reg[21]_i_1_n_2 ;
  wire \q_reg[21]_i_1_n_3 ;
  wire \q_reg[21]_i_1_n_4 ;
  wire \q_reg[21]_i_1_n_5 ;
  wire \q_reg[21]_i_1_n_6 ;
  wire \q_reg[21]_i_1_n_7 ;
  wire \q_reg[25]_i_1_n_0 ;
  wire \q_reg[25]_i_1_n_1 ;
  wire \q_reg[25]_i_1_n_2 ;
  wire \q_reg[25]_i_1_n_3 ;
  wire \q_reg[25]_i_1_n_4 ;
  wire \q_reg[25]_i_1_n_5 ;
  wire \q_reg[25]_i_1_n_6 ;
  wire \q_reg[25]_i_1_n_7 ;
  wire \q_reg[29]_i_1_n_2 ;
  wire \q_reg[29]_i_1_n_3 ;
  wire \q_reg[29]_i_1_n_5 ;
  wire \q_reg[29]_i_1_n_6 ;
  wire \q_reg[29]_i_1_n_7 ;
  wire \q_reg[2]_0 ;
  wire \q_reg[2]_1 ;
  wire \q_reg[2]_2 ;
  wire \q_reg[2]_3 ;
  wire [3:0]\q_reg[2]_4 ;
  wire \q_reg[2]_5 ;
  wire [3:0]\q_reg[2]_6 ;
  wire \q_reg[2]_7 ;
  wire \q_reg[3]_0 ;
  wire \q_reg[3]_1 ;
  wire [3:0]\q_reg[3]_10 ;
  wire \q_reg[3]_2 ;
  wire [3:0]\q_reg[3]_3 ;
  wire [3:0]\q_reg[3]_4 ;
  wire [3:0]\q_reg[3]_5 ;
  wire [3:0]\q_reg[3]_6 ;
  wire [3:0]\q_reg[3]_7 ;
  wire [3:0]\q_reg[3]_8 ;
  wire [3:0]\q_reg[3]_9 ;
  wire \q_reg[5]_0 ;
  wire \q_reg[5]_i_1_n_0 ;
  wire \q_reg[5]_i_1_n_1 ;
  wire \q_reg[5]_i_1_n_2 ;
  wire \q_reg[5]_i_1_n_3 ;
  wire \q_reg[5]_i_1_n_4 ;
  wire \q_reg[5]_i_1_n_5 ;
  wire \q_reg[5]_i_1_n_6 ;
  wire \q_reg[5]_i_1_n_7 ;
  wire [3:0]\q_reg[7]_0 ;
  wire [3:0]\q_reg[7]_1 ;
  wire [3:0]\q_reg[7]_2 ;
  wire [3:0]\q_reg[7]_3 ;
  wire [3:0]\q_reg[7]_4 ;
  wire \q_reg[9]_i_1_n_0 ;
  wire \q_reg[9]_i_1_n_1 ;
  wire \q_reg[9]_i_1_n_2 ;
  wire \q_reg[9]_i_1_n_3 ;
  wire \q_reg[9]_i_1_n_4 ;
  wire \q_reg[9]_i_1_n_5 ;
  wire \q_reg[9]_i_1_n_6 ;
  wire \q_reg[9]_i_1_n_7 ;
  wire [30:0]r15;
  wire [31:0]rd;
  wire [31:0]rd10;
  wire [31:0]rd20;
  wire reset_IBUF;
  wire [1:0]wd;
  wire y0_carry__0_i_1_n_0;
  wire y0_carry__0_i_1_n_1;
  wire y0_carry__0_i_1_n_2;
  wire y0_carry__0_i_1_n_3;
  wire y0_carry__1_i_1_n_0;
  wire y0_carry__1_i_1_n_1;
  wire y0_carry__1_i_1_n_2;
  wire y0_carry__1_i_1_n_3;
  wire y0_carry__2_i_1_n_0;
  wire y0_carry__2_i_1_n_1;
  wire y0_carry__2_i_1_n_2;
  wire y0_carry__2_i_1_n_3;
  wire y0_carry__3_i_1_n_0;
  wire y0_carry__3_i_1_n_1;
  wire y0_carry__3_i_1_n_2;
  wire y0_carry__3_i_1_n_3;
  wire y0_carry__4_i_1_n_0;
  wire y0_carry__4_i_1_n_1;
  wire y0_carry__4_i_1_n_2;
  wire y0_carry__4_i_1_n_3;
  wire y0_carry__5_i_1_n_0;
  wire y0_carry__5_i_1_n_1;
  wire y0_carry__5_i_1_n_2;
  wire y0_carry__5_i_1_n_3;
  wire y0_carry__6_i_1_n_2;
  wire y0_carry__6_i_1_n_3;
  wire y0_carry_i_1_n_0;
  wire y0_carry_i_1_n_1;
  wire y0_carry_i_1_n_2;
  wire y0_carry_i_1_n_3;
  wire y0_carry_i_3_n_0;
  wire [3:2]\NLW_q_reg[29]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_q_reg[29]_i_1_O_UNCONNECTED ;
  wire [3:2]NLW_y0_carry__6_i_1_CO_UNCONNECTED;
  wire [3:3]NLW_y0_carry__6_i_1_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFFFE760000)) 
    \ALUResult_OBUF[0]_inst_i_1 
       (.I0(\q_reg[2]_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I2(\ALUResult_OBUF[0]_inst_i_2_n_0 ),
        .I3(SrcB[27]),
        .I4(\ALUResult_OBUF[31]_inst_i_3_n_0 ),
        .I5(\ALUResult_OBUF[0]_inst_i_3_n_0 ),
        .O(ALUResult_OBUF[0]));
  LUT4 #(
    .INIT(16'h0151)) 
    \ALUResult_OBUF[0]_inst_i_2 
       (.I0(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I1(\i_alu/aD2M4dsP [0]),
        .I2(Instr_OBUF[7]),
        .I3(\ALUResult_OBUF[0]_inst_i_4_n_0 ),
        .O(\ALUResult_OBUF[0]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBBBAABAA)) 
    \ALUResult_OBUF[0]_inst_i_3 
       (.I0(\ALUResult_OBUF[0]_inst_i_5_n_0 ),
        .I1(\q_reg[5]_0 ),
        .I2(\q_reg[2]_0 ),
        .I3(p_2_in[0]),
        .I4(p_0_in[0]),
        .O(\ALUResult_OBUF[0]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h45444555)) 
    \ALUResult_OBUF[0]_inst_i_4 
       (.I0(\q_reg[3]_2 ),
        .I1(Result0_carry__0_i_9_n_0),
        .I2(rd20[4]),
        .I3(\q_reg[2]_1 ),
        .I4(r15[3]),
        .O(\ALUResult_OBUF[0]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4C4C4C0404044C04)) 
    \ALUResult_OBUF[0]_inst_i_5 
       (.I0(\q_reg[2]_0 ),
        .I1(\ALUResult_OBUF[30]_inst_i_7_n_0 ),
        .I2(\i_alu/aD2M4dsP [0]),
        .I3(rd10[0]),
        .I4(\q_reg[3]_2 ),
        .I5(\q_reg[0]_0 ),
        .O(\ALUResult_OBUF[0]_inst_i_5_n_0 ));
  MUXF7 \ALUResult_OBUF[10]_inst_i_1 
       (.I0(\ALUResult_OBUF[10]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[10]_inst_i_3_n_0 ),
        .O(ALUResult_OBUF[10]),
        .S(\ALUResult_OBUF[31]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBBB888B8)) 
    \ALUResult_OBUF[10]_inst_i_2 
       (.I0(\ALUResult_OBUF[10]_inst_i_4_n_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I2(p_2_in[10]),
        .I3(\q_reg[2]_0 ),
        .I4(p_0_in[10]),
        .O(\ALUResult_OBUF[10]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hC977C922)) 
    \ALUResult_OBUF[10]_inst_i_3 
       (.I0(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I1(SrcB[10]),
        .I2(\ALUResult_OBUF[10]_inst_i_1_0 ),
        .I3(\q_reg[2]_0 ),
        .I4(\ALUResult_OBUF[10]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[10]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB800FFF0)) 
    \ALUResult_OBUF[10]_inst_i_4 
       (.I0(r15[9]),
        .I1(\q_reg[3]_0 ),
        .I2(rd10[10]),
        .I3(SrcB[10]),
        .I4(\q_reg[2]_0 ),
        .O(\ALUResult_OBUF[10]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAAAAFEAE)) 
    \ALUResult_OBUF[10]_inst_i_5 
       (.I0(\q_reg[3]_0 ),
        .I1(r15[9]),
        .I2(\q_reg[2]_1 ),
        .I3(rd20[10]),
        .I4(Result0_carry__0_i_9_n_0),
        .O(SrcB[10]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult_OBUF[10]_inst_i_7 
       (.I0(SrcB[6]),
        .I1(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I2(SrcB[14]),
        .I3(Instr_OBUF[7]),
        .I4(\ALUResult_OBUF[14]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[10]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h76547654FFFF0000)) 
    \ALUResult_OBUF[11]_inst_i_1 
       (.I0(\q_reg[2]_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I2(\ALUResult_OBUF[11]_inst_i_2_n_0 ),
        .I3(\ALUResult_OBUF[11]_inst_i_3_n_0 ),
        .I4(\ALUResult_OBUF[11]_inst_i_4_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_3_n_0 ),
        .O(ALUResult_OBUF[11]));
  LUT6 #(
    .INIT(64'h7777474777444747)) 
    \ALUResult_OBUF[11]_inst_i_2 
       (.I0(\ALUResult_OBUF[11]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I2(\ALUResult_OBUF[11]_inst_i_6_n_0 ),
        .I3(\ALUResult_OBUF[19]_inst_i_6_n_0 ),
        .I4(Instr_OBUF[7]),
        .I5(\q_reg[3]_0 ),
        .O(\ALUResult_OBUF[11]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000BA45FFFFBF40)) 
    \ALUResult_OBUF[11]_inst_i_3 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(rd20[11]),
        .I2(\q_reg[2]_1 ),
        .I3(rd10[11]),
        .I4(\q_reg[3]_0 ),
        .I5(r15[10]),
        .O(\ALUResult_OBUF[11]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F80EFEF8F80E0E0)) 
    \ALUResult_OBUF[11]_inst_i_4 
       (.I0(SrcA[8]),
        .I1(\ALUResult_OBUF[15]_inst_i_5_n_0 ),
        .I2(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I3(p_0_in[11]),
        .I4(\q_reg[2]_0 ),
        .I5(p_2_in[11]),
        .O(\ALUResult_OBUF[11]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h45444555)) 
    \ALUResult_OBUF[11]_inst_i_5 
       (.I0(\q_reg[3]_0 ),
        .I1(Result0_carry__0_i_9_n_0),
        .I2(rd20[7]),
        .I3(\q_reg[2]_1 ),
        .I4(r15[6]),
        .O(\ALUResult_OBUF[11]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hBABF)) 
    \ALUResult_OBUF[11]_inst_i_6 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(rd20[11]),
        .I2(\q_reg[2]_1 ),
        .I3(r15[10]),
        .O(\ALUResult_OBUF[11]_inst_i_6_n_0 ));
  MUXF7 \ALUResult_OBUF[12]_inst_i_1 
       (.I0(\ALUResult_OBUF[12]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[12]_inst_i_3_n_0 ),
        .O(ALUResult_OBUF[12]),
        .S(\ALUResult_OBUF[31]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBBB888B8)) 
    \ALUResult_OBUF[12]_inst_i_2 
       (.I0(\ALUResult_OBUF[12]_inst_i_4_n_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I2(p_2_in[12]),
        .I3(\q_reg[2]_0 ),
        .I4(p_0_in[12]),
        .O(\ALUResult_OBUF[12]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF00F4C8C)) 
    \ALUResult_OBUF[12]_inst_i_3 
       (.I0(SrcA[9]),
        .I1(\ALUResult_OBUF[12]_inst_i_5_n_0 ),
        .I2(\q_reg[2]_0 ),
        .I3(SrcB[12]),
        .I4(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[12]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB800FFF0)) 
    \ALUResult_OBUF[12]_inst_i_4 
       (.I0(r15[11]),
        .I1(\q_reg[3]_2 ),
        .I2(rd10[12]),
        .I3(SrcB[12]),
        .I4(\q_reg[2]_0 ),
        .O(\ALUResult_OBUF[12]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF000E0E)) 
    \ALUResult_OBUF[12]_inst_i_5 
       (.I0(\ALUResult_OBUF[16]_inst_i_6_n_0 ),
        .I1(Instr_OBUF[7]),
        .I2(\ALUResult_OBUF[12]_inst_i_7_n_0 ),
        .I3(SrcB[8]),
        .I4(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I5(\q_reg[2]_0 ),
        .O(\ALUResult_OBUF[12]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hBABBBAAA)) 
    \ALUResult_OBUF[12]_inst_i_6 
       (.I0(\q_reg[3]_2 ),
        .I1(Result0_carry__0_i_9_n_0),
        .I2(rd20[12]),
        .I3(\q_reg[2]_1 ),
        .I4(r15[11]),
        .O(SrcB[12]));
  LUT6 #(
    .INIT(64'h4044404040444444)) 
    \ALUResult_OBUF[12]_inst_i_7 
       (.I0(\q_reg[3]_2 ),
        .I1(Instr_OBUF[7]),
        .I2(Result0_carry__0_i_9_n_0),
        .I3(rd20[16]),
        .I4(\q_reg[2]_1 ),
        .I5(r15[15]),
        .O(\ALUResult_OBUF[12]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0F0FFC0CAAAAAAAA)) 
    \ALUResult_OBUF[13]_inst_i_1 
       (.I0(\ALUResult_OBUF[13]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[13]_inst_i_3_n_0 ),
        .I2(\q_reg[2]_0 ),
        .I3(\ALUResult_OBUF[13]_inst_i_4_n_0 ),
        .I4(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_3_n_0 ),
        .O(ALUResult_OBUF[13]));
  LUT6 #(
    .INIT(64'h8F80EFEF8F80E0E0)) 
    \ALUResult_OBUF[13]_inst_i_2 
       (.I0(SrcB[13]),
        .I1(SrcA[10]),
        .I2(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I3(p_0_in[13]),
        .I4(\q_reg[2]_0 ),
        .I5(p_2_in[13]),
        .O(\ALUResult_OBUF[13]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBB8B8BB88B8B8)) 
    \ALUResult_OBUF[13]_inst_i_3 
       (.I0(\ALUResult_OBUF[13]_inst_i_6_n_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I2(\ALUResult_OBUF[13]_inst_i_7_n_0 ),
        .I3(\ALUResult_OBUF[21]_inst_i_6_n_0 ),
        .I4(Instr_OBUF[7]),
        .I5(\q_reg[3]_0 ),
        .O(\ALUResult_OBUF[13]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000BA45FFFFBF40)) 
    \ALUResult_OBUF[13]_inst_i_4 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(rd20[13]),
        .I2(\q_reg[2]_1 ),
        .I3(rd10[13]),
        .I4(\q_reg[3]_0 ),
        .I5(r15[12]),
        .O(\ALUResult_OBUF[13]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hAAAAFEAE)) 
    \ALUResult_OBUF[13]_inst_i_5 
       (.I0(\q_reg[3]_0 ),
        .I1(r15[12]),
        .I2(\q_reg[2]_1 ),
        .I3(rd20[13]),
        .I4(Result0_carry__0_i_9_n_0),
        .O(SrcB[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \ALUResult_OBUF[13]_inst_i_6 
       (.I0(r15[8]),
        .I1(\q_reg[2]_1 ),
        .I2(rd20[9]),
        .I3(Result0_carry__0_i_9_n_0),
        .O(\ALUResult_OBUF[13]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h4540)) 
    \ALUResult_OBUF[13]_inst_i_7 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(rd20[13]),
        .I2(\q_reg[2]_1 ),
        .I3(r15[12]),
        .O(\ALUResult_OBUF[13]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h76547654FFFF0000)) 
    \ALUResult_OBUF[14]_inst_i_1 
       (.I0(\q_reg[2]_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I2(\ALUResult_OBUF[14]_inst_i_2_n_0 ),
        .I3(\ALUResult_OBUF[14]_inst_i_3_n_0 ),
        .I4(\ALUResult_OBUF[14]_inst_i_4_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_3_n_0 ),
        .O(ALUResult_OBUF[14]));
  LUT6 #(
    .INIT(64'h2F200F0F2F200000)) 
    \ALUResult_OBUF[14]_inst_i_2 
       (.I0(\ALUResult_OBUF[14]_inst_i_5_n_0 ),
        .I1(\q_reg[3]_2 ),
        .I2(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I3(SrcB[18]),
        .I4(Instr_OBUF[7]),
        .I5(SrcB[14]),
        .O(\ALUResult_OBUF[14]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000F20DFFFFF708)) 
    \ALUResult_OBUF[14]_inst_i_3 
       (.I0(\q_reg[2]_1 ),
        .I1(rd20[14]),
        .I2(Result0_carry__0_i_9_n_0),
        .I3(rd10[14]),
        .I4(\q_reg[3]_2 ),
        .I5(r15[13]),
        .O(\ALUResult_OBUF[14]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F80EFEF8F80E0E0)) 
    \ALUResult_OBUF[14]_inst_i_4 
       (.I0(SrcB[14]),
        .I1(SrcA[11]),
        .I2(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I3(p_0_in[14]),
        .I4(\q_reg[2]_0 ),
        .I5(p_2_in[14]),
        .O(\ALUResult_OBUF[14]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4540)) 
    \ALUResult_OBUF[14]_inst_i_5 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(rd20[10]),
        .I2(\q_reg[2]_1 ),
        .I3(r15[9]),
        .O(\ALUResult_OBUF[14]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBAAA)) 
    \ALUResult_OBUF[14]_inst_i_6 
       (.I0(\q_reg[3]_2 ),
        .I1(Result0_carry__0_i_9_n_0),
        .I2(rd20[14]),
        .I3(\q_reg[2]_1 ),
        .I4(r15[13]),
        .O(SrcB[14]));
  LUT6 #(
    .INIT(64'h000000007F7D7775)) 
    \ALUResult_OBUF[15]_inst_i_1 
       (.I0(\ALUResult_OBUF[31]_inst_i_3_n_0 ),
        .I1(\q_reg[2]_0 ),
        .I2(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I3(\ALUResult_OBUF[15]_inst_i_2_n_0 ),
        .I4(\ALUResult_OBUF[15]_inst_i_3_n_0 ),
        .I5(\ALUResult_OBUF[15]_inst_i_4_n_0 ),
        .O(ALUResult_OBUF[15]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult_OBUF[15]_inst_i_2 
       (.I0(\ALUResult_OBUF[15]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I2(SrcB[19]),
        .I3(Instr_OBUF[7]),
        .I4(SrcB[15]),
        .O(\ALUResult_OBUF[15]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000BA45FFFFBF40)) 
    \ALUResult_OBUF[15]_inst_i_3 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(rd20[15]),
        .I2(\q_reg[2]_1 ),
        .I3(rd10[15]),
        .I4(\q_reg[3]_0 ),
        .I5(r15[14]),
        .O(\ALUResult_OBUF[15]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAABAABBB)) 
    \ALUResult_OBUF[15]_inst_i_4 
       (.I0(\ALUResult_OBUF[15]_inst_i_7_n_0 ),
        .I1(\q_reg[5]_0 ),
        .I2(\q_reg[2]_0 ),
        .I3(p_0_in[15]),
        .I4(p_2_in[15]),
        .O(\ALUResult_OBUF[15]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hAAAAFEAE)) 
    \ALUResult_OBUF[15]_inst_i_5 
       (.I0(\q_reg[3]_0 ),
        .I1(r15[10]),
        .I2(\q_reg[2]_1 ),
        .I3(rd20[11]),
        .I4(Result0_carry__0_i_9_n_0),
        .O(\ALUResult_OBUF[15]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hAAAAFEAE)) 
    \ALUResult_OBUF[15]_inst_i_6 
       (.I0(\q_reg[3]_0 ),
        .I1(r15[14]),
        .I2(\q_reg[2]_1 ),
        .I3(rd20[15]),
        .I4(Result0_carry__0_i_9_n_0),
        .O(SrcB[15]));
  LUT6 #(
    .INIT(64'h0808088C8C8C088C)) 
    \ALUResult_OBUF[15]_inst_i_7 
       (.I0(\q_reg[2]_0 ),
        .I1(\ALUResult_OBUF[30]_inst_i_7_n_0 ),
        .I2(SrcB[15]),
        .I3(rd10[15]),
        .I4(\q_reg[3]_0 ),
        .I5(r15[14]),
        .O(\ALUResult_OBUF[15]_inst_i_7_n_0 ));
  MUXF7 \ALUResult_OBUF[16]_inst_i_1 
       (.I0(\ALUResult_OBUF[16]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[16]_inst_i_3_n_0 ),
        .O(ALUResult_OBUF[16]),
        .S(\ALUResult_OBUF[31]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F8FEFE08080EFE0)) 
    \ALUResult_OBUF[16]_inst_i_2 
       (.I0(SrcB[16]),
        .I1(SrcA[12]),
        .I2(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I3(p_2_in[16]),
        .I4(\q_reg[2]_0 ),
        .I5(p_0_in[16]),
        .O(\ALUResult_OBUF[16]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h9C779C22)) 
    \ALUResult_OBUF[16]_inst_i_3 
       (.I0(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I1(SrcB[16]),
        .I2(SrcA[12]),
        .I3(\q_reg[2]_0 ),
        .I4(\ALUResult_OBUF[16]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[16]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hBABBBAAA)) 
    \ALUResult_OBUF[16]_inst_i_4 
       (.I0(\q_reg[3]_0 ),
        .I1(Result0_carry__0_i_9_n_0),
        .I2(rd20[16]),
        .I3(\q_reg[2]_1 ),
        .I4(r15[15]),
        .O(SrcB[16]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult_OBUF[16]_inst_i_5 
       (.I0(\ALUResult_OBUF[16]_inst_i_6_n_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I2(SrcB[20]),
        .I3(Instr_OBUF[7]),
        .I4(SrcB[16]),
        .O(\ALUResult_OBUF[16]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \ALUResult_OBUF[16]_inst_i_6 
       (.I0(r15[11]),
        .I1(\q_reg[2]_1 ),
        .I2(rd20[12]),
        .I3(Result0_carry__0_i_9_n_0),
        .O(\ALUResult_OBUF[16]_inst_i_6_n_0 ));
  MUXF7 \ALUResult_OBUF[17]_inst_i_1 
       (.I0(\ALUResult_OBUF[17]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[17]_inst_i_3_n_0 ),
        .O(ALUResult_OBUF[17]),
        .S(\ALUResult_OBUF[31]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F80EFEF8F80E0E0)) 
    \ALUResult_OBUF[17]_inst_i_2 
       (.I0(SrcB[17]),
        .I1(SrcA[13]),
        .I2(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I3(p_0_in[17]),
        .I4(\q_reg[2]_0 ),
        .I5(p_2_in[17]),
        .O(\ALUResult_OBUF[17]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h9C779C22)) 
    \ALUResult_OBUF[17]_inst_i_3 
       (.I0(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I1(SrcB[17]),
        .I2(SrcA[13]),
        .I3(\q_reg[2]_0 ),
        .I4(\ALUResult_OBUF[17]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[17]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hAAAAFEAE)) 
    \ALUResult_OBUF[17]_inst_i_4 
       (.I0(\q_reg[3]_0 ),
        .I1(r15[16]),
        .I2(\q_reg[2]_1 ),
        .I3(rd20[17]),
        .I4(Result0_carry__0_i_9_n_0),
        .O(SrcB[17]));
  LUT6 #(
    .INIT(64'hBBBBB8B8BB88B8B8)) 
    \ALUResult_OBUF[17]_inst_i_5 
       (.I0(\ALUResult_OBUF[13]_inst_i_7_n_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I2(\ALUResult_OBUF[21]_inst_i_6_n_0 ),
        .I3(\ALUResult_OBUF[25]_inst_i_6_n_0 ),
        .I4(Instr_OBUF[7]),
        .I5(\q_reg[3]_0 ),
        .O(\ALUResult_OBUF[17]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F0FFC0CAAAAAAAA)) 
    \ALUResult_OBUF[18]_inst_i_1 
       (.I0(\ALUResult_OBUF[18]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[18]_inst_i_3_n_0 ),
        .I2(\q_reg[2]_0 ),
        .I3(\ALUResult_OBUF[18]_inst_i_4_n_0 ),
        .I4(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_3_n_0 ),
        .O(ALUResult_OBUF[18]));
  LUT6 #(
    .INIT(64'h8F80EFEF8F80E0E0)) 
    \ALUResult_OBUF[18]_inst_i_2 
       (.I0(SrcB[18]),
        .I1(SrcA[14]),
        .I2(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I3(p_0_in[18]),
        .I4(\q_reg[2]_0 ),
        .I5(p_2_in[18]),
        .O(\ALUResult_OBUF[18]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \ALUResult_OBUF[18]_inst_i_3 
       (.I0(wd[0]),
        .I1(Result0_carry__0_i_9_n_0),
        .I2(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I3(SrcB[22]),
        .I4(Instr_OBUF[7]),
        .I5(\ALUResult_OBUF[22]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[18]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000BA45FFFFBF40)) 
    \ALUResult_OBUF[18]_inst_i_4 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(rd20[18]),
        .I2(\q_reg[2]_1 ),
        .I3(rd10[18]),
        .I4(\q_reg[3]_0 ),
        .I5(r15[17]),
        .O(\ALUResult_OBUF[18]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hAAAAFEAE)) 
    \ALUResult_OBUF[18]_inst_i_5 
       (.I0(\q_reg[3]_0 ),
        .I1(r15[17]),
        .I2(\q_reg[2]_1 ),
        .I3(rd20[18]),
        .I4(Result0_carry__0_i_9_n_0),
        .O(SrcB[18]));
  LUT6 #(
    .INIT(64'h0F0FFC0CAAAAAAAA)) 
    \ALUResult_OBUF[19]_inst_i_1 
       (.I0(\ALUResult_OBUF[19]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[19]_inst_i_3_n_0 ),
        .I2(\q_reg[2]_0 ),
        .I3(\ALUResult_OBUF[19]_inst_i_4_n_0 ),
        .I4(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_3_n_0 ),
        .O(ALUResult_OBUF[19]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult_OBUF[19]_inst_i_2 
       (.I0(\ALUResult_OBUF[19]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I2(p_0_in[19]),
        .I3(\q_reg[2]_0 ),
        .I4(p_2_in[19]),
        .O(\ALUResult_OBUF[19]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult_OBUF[19]_inst_i_3 
       (.I0(\ALUResult_OBUF[19]_inst_i_6_n_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I2(SrcB[23]),
        .I3(Instr_OBUF[7]),
        .I4(SrcB[19]),
        .O(\ALUResult_OBUF[19]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000F20DFFFFF708)) 
    \ALUResult_OBUF[19]_inst_i_4 
       (.I0(\q_reg[2]_1 ),
        .I1(rd20[19]),
        .I2(Result0_carry__0_i_9_n_0),
        .I3(rd10[19]),
        .I4(\q_reg[3]_2 ),
        .I5(r15[18]),
        .O(\ALUResult_OBUF[19]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF755D500)) 
    \ALUResult_OBUF[19]_inst_i_5 
       (.I0(\q_reg[2]_0 ),
        .I1(\q_reg[3]_0 ),
        .I2(r15[18]),
        .I3(SrcB[19]),
        .I4(rd10[19]),
        .O(\ALUResult_OBUF[19]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h4540)) 
    \ALUResult_OBUF[19]_inst_i_6 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(rd20[15]),
        .I2(\q_reg[2]_1 ),
        .I3(r15[14]),
        .O(\ALUResult_OBUF[19]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBAAA)) 
    \ALUResult_OBUF[19]_inst_i_7 
       (.I0(\q_reg[3]_0 ),
        .I1(Result0_carry__0_i_9_n_0),
        .I2(rd20[19]),
        .I3(\q_reg[2]_1 ),
        .I4(r15[18]),
        .O(SrcB[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFFBBBAAABA)) 
    \ALUResult_OBUF[1]_inst_i_1 
       (.I0(\ALUResult_OBUF[1]_inst_i_2_n_0 ),
        .I1(\q_reg[5]_0 ),
        .I2(p_2_in[1]),
        .I3(\q_reg[2]_0 ),
        .I4(p_0_in[1]),
        .I5(\ALUResult_OBUF[1]_inst_i_3_n_0 ),
        .O(ALUResult_OBUF[1]));
  LUT6 #(
    .INIT(64'h0A0AA0A0A20202A2)) 
    \ALUResult_OBUF[1]_inst_i_2 
       (.I0(\ALUResult_OBUF[31]_inst_i_3_n_0 ),
        .I1(\ALUResult_OBUF[1]_inst_i_4_n_0 ),
        .I2(\q_reg[2]_0 ),
        .I3(SrcA[0]),
        .I4(\i_alu/aD2M4dsP [1]),
        .I5(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4C4C4C0404044C04)) 
    \ALUResult_OBUF[1]_inst_i_3 
       (.I0(\q_reg[2]_0 ),
        .I1(\ALUResult_OBUF[30]_inst_i_7_n_0 ),
        .I2(\i_alu/aD2M4dsP [1]),
        .I3(rd10[1]),
        .I4(\q_reg[3]_2 ),
        .I5(r15[0]),
        .O(\ALUResult_OBUF[1]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFEFFAEA)) 
    \ALUResult_OBUF[1]_inst_i_4 
       (.I0(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I1(\q_reg[3]_2 ),
        .I2(Instr_OBUF[7]),
        .I3(\i_alu/aD2M4dsP [5]),
        .I4(\i_alu/aD2M4dsP [1]),
        .O(\ALUResult_OBUF[1]_inst_i_4_n_0 ));
  MUXF7 \ALUResult_OBUF[20]_inst_i_1 
       (.I0(\ALUResult_OBUF[20]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[20]_inst_i_3_n_0 ),
        .O(ALUResult_OBUF[20]),
        .S(\ALUResult_OBUF[31]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBBB888B8)) 
    \ALUResult_OBUF[20]_inst_i_2 
       (.I0(\ALUResult_OBUF[20]_inst_i_4_n_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I2(p_2_in[20]),
        .I3(\q_reg[2]_0 ),
        .I4(p_0_in[20]),
        .O(\ALUResult_OBUF[20]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h9C779C22)) 
    \ALUResult_OBUF[20]_inst_i_3 
       (.I0(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I1(SrcB[20]),
        .I2(SrcA[15]),
        .I3(\q_reg[2]_0 ),
        .I4(\ALUResult_OBUF[20]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[20]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB800FFF0)) 
    \ALUResult_OBUF[20]_inst_i_4 
       (.I0(r15[19]),
        .I1(\q_reg[3]_0 ),
        .I2(rd10[20]),
        .I3(SrcB[20]),
        .I4(\q_reg[2]_0 ),
        .O(\ALUResult_OBUF[20]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hBABBBAAA)) 
    \ALUResult_OBUF[20]_inst_i_5 
       (.I0(\q_reg[3]_0 ),
        .I1(Result0_carry__0_i_9_n_0),
        .I2(rd20[20]),
        .I3(\q_reg[2]_1 ),
        .I4(r15[19]),
        .O(SrcB[20]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult_OBUF[20]_inst_i_6 
       (.I0(\ALUResult_OBUF[20]_inst_i_7_n_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I2(SrcB[24]),
        .I3(Instr_OBUF[7]),
        .I4(\ALUResult_OBUF[24]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[20]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \ALUResult_OBUF[20]_inst_i_7 
       (.I0(r15[15]),
        .I1(\q_reg[2]_1 ),
        .I2(rd20[16]),
        .I3(Result0_carry__0_i_9_n_0),
        .O(\ALUResult_OBUF[20]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0F0FFC0CAAAAAAAA)) 
    \ALUResult_OBUF[21]_inst_i_1 
       (.I0(\ALUResult_OBUF[21]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[21]_inst_i_3_n_0 ),
        .I2(\q_reg[2]_0 ),
        .I3(\ALUResult_OBUF[21]_inst_i_4_n_0 ),
        .I4(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_3_n_0 ),
        .O(ALUResult_OBUF[21]));
  LUT6 #(
    .INIT(64'h2F20BFBF2F20B0B0)) 
    \ALUResult_OBUF[21]_inst_i_2 
       (.I0(SrcA[16]),
        .I1(\ALUResult_OBUF[21]_inst_i_5_n_0 ),
        .I2(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I3(p_0_in[21]),
        .I4(\q_reg[2]_0 ),
        .I5(p_2_in[21]),
        .O(\ALUResult_OBUF[21]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBB8B8BB88B8B8)) 
    \ALUResult_OBUF[21]_inst_i_3 
       (.I0(\ALUResult_OBUF[21]_inst_i_6_n_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I2(\ALUResult_OBUF[25]_inst_i_6_n_0 ),
        .I3(\ALUResult_OBUF[25]_inst_i_7_n_0 ),
        .I4(Instr_OBUF[7]),
        .I5(\q_reg[3]_0 ),
        .O(\ALUResult_OBUF[21]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000F20DFFFFF708)) 
    \ALUResult_OBUF[21]_inst_i_4 
       (.I0(\q_reg[2]_1 ),
        .I1(rd20[21]),
        .I2(Result0_carry__0_i_9_n_0),
        .I3(rd10[21]),
        .I4(\q_reg[3]_2 ),
        .I5(r15[20]),
        .O(\ALUResult_OBUF[21]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h45444555)) 
    \ALUResult_OBUF[21]_inst_i_5 
       (.I0(\q_reg[3]_0 ),
        .I1(Result0_carry__0_i_9_n_0),
        .I2(rd20[21]),
        .I3(\q_reg[2]_1 ),
        .I4(r15[20]),
        .O(\ALUResult_OBUF[21]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h4540)) 
    \ALUResult_OBUF[21]_inst_i_6 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(rd20[17]),
        .I2(\q_reg[2]_1 ),
        .I3(r15[16]),
        .O(\ALUResult_OBUF[21]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A0AA808AAAAAAAA)) 
    \ALUResult_OBUF[22]_inst_i_1 
       (.I0(\ALUResult_OBUF[22]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[22]_inst_i_3_n_0 ),
        .I2(\q_reg[2]_0 ),
        .I3(\ALUResult_OBUF[22]_inst_i_4_n_0 ),
        .I4(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_3_n_0 ),
        .O(ALUResult_OBUF[22]));
  LUT6 #(
    .INIT(64'hEFEFEFECECECEFEC)) 
    \ALUResult_OBUF[22]_inst_i_2 
       (.I0(\ALUResult_OBUF[22]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[22]_inst_i_6_n_0 ),
        .I2(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I3(p_2_in[22]),
        .I4(\q_reg[2]_0 ),
        .I5(p_0_in[22]),
        .O(\ALUResult_OBUF[22]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult_OBUF[22]_inst_i_3 
       (.I0(\ALUResult_OBUF[22]_inst_i_7_n_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I2(SrcB[26]),
        .I3(Instr_OBUF[7]),
        .I4(SrcB[22]),
        .O(\ALUResult_OBUF[22]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00FFAEBF00FF5140)) 
    \ALUResult_OBUF[22]_inst_i_4 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(\q_reg[2]_1 ),
        .I2(rd20[22]),
        .I3(r15[21]),
        .I4(\q_reg[3]_0 ),
        .I5(rd10[22]),
        .O(\ALUResult_OBUF[22]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF005140FF000000)) 
    \ALUResult_OBUF[22]_inst_i_5 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(\q_reg[2]_1 ),
        .I2(rd20[22]),
        .I3(r15[21]),
        .I4(\q_reg[3]_2 ),
        .I5(rd10[22]),
        .O(\ALUResult_OBUF[22]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFEAAAA)) 
    \ALUResult_OBUF[22]_inst_i_6 
       (.I0(\ALUResult_OBUF[31]_inst_i_3_n_0 ),
        .I1(\ALUResult_OBUF[26]_inst_i_7_n_0 ),
        .I2(\q_reg[3]_2 ),
        .I3(rd10[22]),
        .I4(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I5(\q_reg[2]_0 ),
        .O(\ALUResult_OBUF[22]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h4540)) 
    \ALUResult_OBUF[22]_inst_i_7 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(rd20[18]),
        .I2(\q_reg[2]_1 ),
        .I3(r15[17]),
        .O(\ALUResult_OBUF[22]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hAAAAEFEA)) 
    \ALUResult_OBUF[22]_inst_i_8 
       (.I0(\q_reg[3]_2 ),
        .I1(rd20[22]),
        .I2(\q_reg[2]_1 ),
        .I3(r15[21]),
        .I4(Result0_carry__0_i_9_n_0),
        .O(SrcB[22]));
  LUT6 #(
    .INIT(64'h0F0FFC0CAAAAAAAA)) 
    \ALUResult_OBUF[23]_inst_i_1 
       (.I0(\ALUResult_OBUF[23]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[23]_inst_i_3_n_0 ),
        .I2(\q_reg[2]_0 ),
        .I3(\ALUResult_OBUF[23]_inst_i_4_n_0 ),
        .I4(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_3_n_0 ),
        .O(ALUResult_OBUF[23]));
  LUT6 #(
    .INIT(64'h8F80EFEF8F80E0E0)) 
    \ALUResult_OBUF[23]_inst_i_2 
       (.I0(SrcB[23]),
        .I1(SrcA[17]),
        .I2(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I3(p_0_in[23]),
        .I4(\q_reg[2]_0 ),
        .I5(p_2_in[23]),
        .O(\ALUResult_OBUF[23]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \ALUResult_OBUF[23]_inst_i_3 
       (.I0(wd[1]),
        .I1(Result0_carry__0_i_9_n_0),
        .I2(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I3(SrcB[27]),
        .I4(Instr_OBUF[7]),
        .I5(\ALUResult_OBUF[23]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[23]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000AE51FFFFBF40)) 
    \ALUResult_OBUF[23]_inst_i_4 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(\q_reg[2]_1 ),
        .I2(rd20[23]),
        .I3(rd10[23]),
        .I4(\q_reg[3]_2 ),
        .I5(r15[22]),
        .O(\ALUResult_OBUF[23]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hAAAAEFEA)) 
    \ALUResult_OBUF[23]_inst_i_5 
       (.I0(\q_reg[3]_0 ),
        .I1(rd20[23]),
        .I2(\q_reg[2]_1 ),
        .I3(r15[22]),
        .I4(Result0_carry__0_i_9_n_0),
        .O(SrcB[23]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h5404)) 
    \ALUResult_OBUF[23]_inst_i_6 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(r15[22]),
        .I2(\q_reg[2]_1 ),
        .I3(rd20[23]),
        .O(\ALUResult_OBUF[23]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0F0FFC0CAAAAAAAA)) 
    \ALUResult_OBUF[24]_inst_i_1 
       (.I0(\ALUResult_OBUF[24]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[24]_inst_i_3_n_0 ),
        .I2(\q_reg[2]_0 ),
        .I3(\ALUResult_OBUF[24]_inst_i_4_n_0 ),
        .I4(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_3_n_0 ),
        .O(ALUResult_OBUF[24]));
  LUT6 #(
    .INIT(64'h8F80EFEF8F80E0E0)) 
    \ALUResult_OBUF[24]_inst_i_2 
       (.I0(SrcB[24]),
        .I1(SrcA[18]),
        .I2(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I3(p_0_in[24]),
        .I4(\q_reg[2]_0 ),
        .I5(p_2_in[24]),
        .O(\ALUResult_OBUF[24]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult_OBUF[24]_inst_i_3 
       (.I0(\ALUResult_OBUF[24]_inst_i_6_n_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I2(SrcB[28]),
        .I3(Instr_OBUF[7]),
        .I4(\ALUResult_OBUF[24]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[24]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000BA45FFFFBF40)) 
    \ALUResult_OBUF[24]_inst_i_4 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(rd20[24]),
        .I2(\q_reg[2]_1 ),
        .I3(rd10[24]),
        .I4(\q_reg[3]_2 ),
        .I5(r15[23]),
        .O(\ALUResult_OBUF[24]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hAAAAFEAE)) 
    \ALUResult_OBUF[24]_inst_i_5 
       (.I0(\q_reg[3]_2 ),
        .I1(r15[23]),
        .I2(\q_reg[2]_1 ),
        .I3(rd20[24]),
        .I4(Result0_carry__0_i_9_n_0),
        .O(SrcB[24]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \ALUResult_OBUF[24]_inst_i_6 
       (.I0(r15[19]),
        .I1(\q_reg[2]_1 ),
        .I2(rd20[20]),
        .I3(Result0_carry__0_i_9_n_0),
        .O(\ALUResult_OBUF[24]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4540)) 
    \ALUResult_OBUF[24]_inst_i_7 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(rd20[24]),
        .I2(\q_reg[2]_1 ),
        .I3(r15[23]),
        .O(\ALUResult_OBUF[24]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0F0FFC0CAAAAAAAA)) 
    \ALUResult_OBUF[25]_inst_i_1 
       (.I0(\ALUResult_OBUF[25]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[25]_inst_i_3_n_0 ),
        .I2(\q_reg[2]_0 ),
        .I3(\ALUResult_OBUF[25]_inst_i_4_n_0 ),
        .I4(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_3_n_0 ),
        .O(ALUResult_OBUF[25]));
  LUT6 #(
    .INIT(64'h2F20BFBF2F20B0B0)) 
    \ALUResult_OBUF[25]_inst_i_2 
       (.I0(SrcA[19]),
        .I1(\ALUResult_OBUF[25]_inst_i_5_n_0 ),
        .I2(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I3(p_0_in[25]),
        .I4(\q_reg[2]_0 ),
        .I5(p_2_in[25]),
        .O(\ALUResult_OBUF[25]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult_OBUF[25]_inst_i_3 
       (.I0(\ALUResult_OBUF[25]_inst_i_6_n_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I2(SrcB[29]),
        .I3(Instr_OBUF[7]),
        .I4(\ALUResult_OBUF[25]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[25]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000BA45FFFFBF40)) 
    \ALUResult_OBUF[25]_inst_i_4 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(rd20[25]),
        .I2(\q_reg[2]_1 ),
        .I3(rd10[25]),
        .I4(\q_reg[3]_2 ),
        .I5(r15[24]),
        .O(\ALUResult_OBUF[25]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h55550151)) 
    \ALUResult_OBUF[25]_inst_i_5 
       (.I0(\q_reg[3]_2 ),
        .I1(r15[24]),
        .I2(\q_reg[2]_1 ),
        .I3(rd20[25]),
        .I4(Result0_carry__0_i_9_n_0),
        .O(\ALUResult_OBUF[25]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \ALUResult_OBUF[25]_inst_i_6 
       (.I0(r15[20]),
        .I1(\q_reg[2]_1 ),
        .I2(rd20[21]),
        .I3(Result0_carry__0_i_9_n_0),
        .O(\ALUResult_OBUF[25]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h4540)) 
    \ALUResult_OBUF[25]_inst_i_7 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(rd20[25]),
        .I2(\q_reg[2]_1 ),
        .I3(r15[24]),
        .O(\ALUResult_OBUF[25]_inst_i_7_n_0 ));
  MUXF7 \ALUResult_OBUF[26]_inst_i_1 
       (.I0(\ALUResult_OBUF[26]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[26]_inst_i_3_n_0 ),
        .O(ALUResult_OBUF[26]),
        .S(\ALUResult_OBUF[31]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBBB888B8)) 
    \ALUResult_OBUF[26]_inst_i_2 
       (.I0(\ALUResult_OBUF[26]_inst_i_4_n_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I2(p_2_in[26]),
        .I3(\q_reg[2]_0 ),
        .I4(p_0_in[26]),
        .O(\ALUResult_OBUF[26]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h9C779C22)) 
    \ALUResult_OBUF[26]_inst_i_3 
       (.I0(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I1(SrcB[26]),
        .I2(SrcA[20]),
        .I3(\q_reg[2]_0 ),
        .I4(\ALUResult_OBUF[26]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[26]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB800FFF0)) 
    \ALUResult_OBUF[26]_inst_i_4 
       (.I0(r15[25]),
        .I1(\q_reg[3]_2 ),
        .I2(rd10[26]),
        .I3(SrcB[26]),
        .I4(\q_reg[2]_0 ),
        .O(\ALUResult_OBUF[26]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBAAA)) 
    \ALUResult_OBUF[26]_inst_i_5 
       (.I0(\q_reg[3]_2 ),
        .I1(Result0_carry__0_i_9_n_0),
        .I2(rd20[26]),
        .I3(\q_reg[2]_1 ),
        .I4(r15[25]),
        .O(SrcB[26]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult_OBUF[26]_inst_i_6 
       (.I0(\ALUResult_OBUF[26]_inst_i_7_n_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I2(SrcB[30]),
        .I3(Instr_OBUF[7]),
        .I4(SrcB[26]),
        .O(\ALUResult_OBUF[26]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h5404)) 
    \ALUResult_OBUF[26]_inst_i_7 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(r15[21]),
        .I2(\q_reg[2]_1 ),
        .I3(rd20[22]),
        .O(\ALUResult_OBUF[26]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCFFF5555C0F05555)) 
    \ALUResult_OBUF[27]_inst_i_1 
       (.I0(\ALUResult_OBUF[27]_inst_i_2_n_0 ),
        .I1(SrcB[27]),
        .I2(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I3(\q_reg[2]_0 ),
        .I4(\ALUResult_OBUF[31]_inst_i_3_n_0 ),
        .I5(\ALUResult_OBUF[27]_inst_i_4_n_0 ),
        .O(ALUResult_OBUF[27]));
  LUT6 #(
    .INIT(64'h707F1010707F1F1F)) 
    \ALUResult_OBUF[27]_inst_i_2 
       (.I0(SrcB[27]),
        .I1(SrcA[21]),
        .I2(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I3(p_0_in[27]),
        .I4(\q_reg[2]_0 ),
        .I5(p_2_in[27]),
        .O(\ALUResult_OBUF[27]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hAAAAEFEA)) 
    \ALUResult_OBUF[27]_inst_i_3 
       (.I0(\q_reg[3]_2 ),
        .I1(rd20[27]),
        .I2(\q_reg[2]_1 ),
        .I3(r15[26]),
        .I4(Result0_carry__0_i_9_n_0),
        .O(SrcB[27]));
  LUT6 #(
    .INIT(64'h56A6FFFF56A60000)) 
    \ALUResult_OBUF[27]_inst_i_4 
       (.I0(SrcB[27]),
        .I1(rd10[27]),
        .I2(\q_reg[3]_2 ),
        .I3(r15[26]),
        .I4(\q_reg[2]_0 ),
        .I5(\ALUResult_OBUF[27]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[27]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \ALUResult_OBUF[27]_inst_i_5 
       (.I0(\ALUResult_OBUF[23]_inst_i_6_n_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I2(\ALUResult_OBUF[31]_inst_i_11_n_0 ),
        .I3(Instr_OBUF[7]),
        .I4(\q_reg[3]_2 ),
        .I5(SrcB[27]),
        .O(\ALUResult_OBUF[27]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h54765476FFFF0000)) 
    \ALUResult_OBUF[28]_inst_i_1 
       (.I0(\q_reg[2]_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I2(\ALUResult_OBUF[28]_inst_i_2_n_0 ),
        .I3(\ALUResult_OBUF[28]_inst_i_3_n_0 ),
        .I4(\ALUResult_OBUF[28]_inst_i_4_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_3_n_0 ),
        .O(ALUResult_OBUF[28]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEFE0000)) 
    \ALUResult_OBUF[28]_inst_i_2 
       (.I0(\ALUResult_OBUF[29]_inst_i_6_n_0 ),
        .I1(SrcB[28]),
        .I2(\ALUResult_OBUF[29]_inst_i_8_n_0 ),
        .I3(\i_alu/aD2M4dsP [0]),
        .I4(\ALUResult_OBUF[29]_inst_i_9_n_0 ),
        .I5(\ALUResult_OBUF[28]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[28]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF51AE000040BF)) 
    \ALUResult_OBUF[28]_inst_i_3 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(\q_reg[2]_1 ),
        .I2(rd20[28]),
        .I3(rd10[28]),
        .I4(\q_reg[3]_0 ),
        .I5(r15[27]),
        .O(\ALUResult_OBUF[28]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F80EFEF8F80E0E0)) 
    \ALUResult_OBUF[28]_inst_i_4 
       (.I0(SrcB[28]),
        .I1(SrcA[22]),
        .I2(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I3(p_0_in[28]),
        .I4(\q_reg[2]_0 ),
        .I5(p_2_in[28]),
        .O(\ALUResult_OBUF[28]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAEFEA)) 
    \ALUResult_OBUF[28]_inst_i_5 
       (.I0(\q_reg[3]_2 ),
        .I1(rd20[28]),
        .I2(\q_reg[2]_1 ),
        .I3(r15[27]),
        .I4(Result0_carry__0_i_9_n_0),
        .O(SrcB[28]));
  LUT5 #(
    .INIT(32'h00E20000)) 
    \ALUResult_OBUF[28]_inst_i_6 
       (.I0(r15[23]),
        .I1(\q_reg[2]_1 ),
        .I2(rd20[24]),
        .I3(Result0_carry__0_i_9_n_0),
        .I4(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .O(\ALUResult_OBUF[28]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h76547654FFFF0000)) 
    \ALUResult_OBUF[29]_inst_i_1 
       (.I0(\q_reg[2]_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I2(\ALUResult_OBUF[29]_inst_i_2_n_0 ),
        .I3(\ALUResult_OBUF[29]_inst_i_3_n_0 ),
        .I4(\ALUResult_OBUF[29]_inst_i_4_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_3_n_0 ),
        .O(ALUResult_OBUF[29]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ALUResult_OBUF[29]_inst_i_10 
       (.I0(PC_OBUF[3]),
        .I1(PC_OBUF[4]),
        .O(\ALUResult_OBUF[29]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hEEFEFFFEAAAAAAAA)) 
    \ALUResult_OBUF[29]_inst_i_2 
       (.I0(\ALUResult_OBUF[29]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[29]_inst_i_6_n_0 ),
        .I2(SrcB[29]),
        .I3(\ALUResult_OBUF[29]_inst_i_8_n_0 ),
        .I4(\i_alu/aD2M4dsP [1]),
        .I5(\ALUResult_OBUF[29]_inst_i_9_n_0 ),
        .O(\ALUResult_OBUF[29]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000F20DFFFFF708)) 
    \ALUResult_OBUF[29]_inst_i_3 
       (.I0(\q_reg[2]_1 ),
        .I1(rd20[29]),
        .I2(Result0_carry__0_i_9_n_0),
        .I3(rd10[29]),
        .I4(\q_reg[3]_2 ),
        .I5(r15[28]),
        .O(\ALUResult_OBUF[29]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F80EFEF8F80E0E0)) 
    \ALUResult_OBUF[29]_inst_i_4 
       (.I0(SrcB[29]),
        .I1(SrcA[23]),
        .I2(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I3(p_0_in[29]),
        .I4(\q_reg[2]_0 ),
        .I5(p_2_in[29]),
        .O(\ALUResult_OBUF[29]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00E20000)) 
    \ALUResult_OBUF[29]_inst_i_5 
       (.I0(r15[24]),
        .I1(\q_reg[2]_1 ),
        .I2(rd20[25]),
        .I3(Result0_carry__0_i_9_n_0),
        .I4(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .O(\ALUResult_OBUF[29]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \ALUResult_OBUF[29]_inst_i_6 
       (.I0(PC_OBUF[4]),
        .I1(PC_OBUF[3]),
        .I2(PC_OBUF[5]),
        .I3(PC_OBUF[1]),
        .I4(PC_OBUF[6]),
        .I5(PC_OBUF[2]),
        .O(\ALUResult_OBUF[29]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBAAA)) 
    \ALUResult_OBUF[29]_inst_i_7 
       (.I0(\q_reg[3]_2 ),
        .I1(Result0_carry__0_i_9_n_0),
        .I2(rd20[29]),
        .I3(\q_reg[2]_1 ),
        .I4(r15[28]),
        .O(SrcB[29]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \ALUResult_OBUF[29]_inst_i_8 
       (.I0(PC_OBUF[6]),
        .I1(PC_OBUF[4]),
        .I2(PC_OBUF[3]),
        .I3(PC_OBUF[5]),
        .O(\ALUResult_OBUF[29]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF3FFFFFBF3)) 
    \ALUResult_OBUF[29]_inst_i_9 
       (.I0(\ALUResult_OBUF[31]_inst_i_8_n_0 ),
        .I1(\ALUResult_OBUF[29]_inst_i_10_n_0 ),
        .I2(PC_OBUF[5]),
        .I3(PC_OBUF[1]),
        .I4(PC_OBUF[6]),
        .I5(PC_OBUF[2]),
        .O(\ALUResult_OBUF[29]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBBBAAABA)) 
    \ALUResult_OBUF[2]_inst_i_1 
       (.I0(\ALUResult_OBUF[2]_inst_i_2_n_0 ),
        .I1(\q_reg[5]_0 ),
        .I2(p_2_in[2]),
        .I3(\q_reg[2]_0 ),
        .I4(p_0_in[2]),
        .I5(\ALUResult_OBUF[2]_inst_i_3_n_0 ),
        .O(ALUResult_OBUF[2]));
  LUT6 #(
    .INIT(64'hA0A00A0A02A2A202)) 
    \ALUResult_OBUF[2]_inst_i_2 
       (.I0(\ALUResult_OBUF[31]_inst_i_3_n_0 ),
        .I1(\ALUResult_OBUF[2]_inst_i_4_n_0 ),
        .I2(\q_reg[2]_0 ),
        .I3(SrcA[1]),
        .I4(SrcB[2]),
        .I5(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC4C4C4404040C440)) 
    \ALUResult_OBUF[2]_inst_i_3 
       (.I0(\q_reg[2]_0 ),
        .I1(\ALUResult_OBUF[30]_inst_i_7_n_0 ),
        .I2(SrcB[2]),
        .I3(rd10[2]),
        .I4(\q_reg[3]_2 ),
        .I5(r15[1]),
        .O(\ALUResult_OBUF[2]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hDDCF)) 
    \ALUResult_OBUF[2]_inst_i_4 
       (.I0(SrcB[6]),
        .I1(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I2(SrcB[2]),
        .I3(Instr_OBUF[7]),
        .O(\ALUResult_OBUF[2]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFEEEEEEEFEE)) 
    \ALUResult_OBUF[30]_inst_i_1 
       (.I0(\q_reg[2]_2 ),
        .I1(\ALUResult_OBUF[30]_inst_i_3_n_0 ),
        .I2(\q_reg[5]_0 ),
        .I3(p_2_in[30]),
        .I4(\q_reg[2]_0 ),
        .I5(p_0_in[30]),
        .O(ALUResult_OBUF[30]));
  LUT6 #(
    .INIT(64'hA00AA00A280028AA)) 
    \ALUResult_OBUF[30]_inst_i_2 
       (.I0(\ALUResult_OBUF[31]_inst_i_3_n_0 ),
        .I1(SrcA[24]),
        .I2(SrcB[30]),
        .I3(\q_reg[2]_0 ),
        .I4(\ALUResult_OBUF[30]_inst_i_6_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .O(\q_reg[2]_2 ));
  LUT6 #(
    .INIT(64'hCCC444C444400040)) 
    \ALUResult_OBUF[30]_inst_i_3 
       (.I0(\q_reg[2]_0 ),
        .I1(\ALUResult_OBUF[30]_inst_i_7_n_0 ),
        .I2(rd10[30]),
        .I3(\q_reg[3]_2 ),
        .I4(r15[29]),
        .I5(SrcB[30]),
        .O(\ALUResult_OBUF[30]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFBF5FEF1FBF5FFF9)) 
    \ALUResult_OBUF[30]_inst_i_4 
       (.I0(PC_OBUF[4]),
        .I1(PC_OBUF[2]),
        .I2(PC_OBUF[6]),
        .I3(PC_OBUF[5]),
        .I4(PC_OBUF[3]),
        .I5(PC_OBUF[1]),
        .O(\q_reg[5]_0 ));
  LUT5 #(
    .INIT(32'hBABBBAAA)) 
    \ALUResult_OBUF[30]_inst_i_5 
       (.I0(\q_reg[3]_2 ),
        .I1(Result0_carry__0_i_9_n_0),
        .I2(rd20[30]),
        .I3(\q_reg[2]_1 ),
        .I4(r15[29]),
        .O(SrcB[30]));
  LUT6 #(
    .INIT(64'h0000000055577757)) 
    \ALUResult_OBUF[30]_inst_i_6 
       (.I0(\ALUResult_OBUF[29]_inst_i_9_n_0 ),
        .I1(\ALUResult_OBUF[29]_inst_i_6_n_0 ),
        .I2(SrcB[30]),
        .I3(\ALUResult_OBUF[29]_inst_i_8_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult_OBUF[30]_inst_i_8_n_0 ),
        .O(\ALUResult_OBUF[30]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFCC00FFFFCE00)) 
    \ALUResult_OBUF[30]_inst_i_7 
       (.I0(PC_OBUF[2]),
        .I1(PC_OBUF[5]),
        .I2(PC_OBUF[3]),
        .I3(PC_OBUF[4]),
        .I4(PC_OBUF[6]),
        .I5(PC_OBUF[1]),
        .O(\ALUResult_OBUF[30]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h45400000)) 
    \ALUResult_OBUF[30]_inst_i_8 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(rd20[26]),
        .I2(\q_reg[2]_1 ),
        .I3(r15[25]),
        .I4(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .O(\ALUResult_OBUF[30]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h2E2E2E222EEE2EE2)) 
    \ALUResult_OBUF[31]_inst_i_1 
       (.I0(\ALUResult_OBUF[31]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_3_n_0 ),
        .I2(\q_reg[2]_0 ),
        .I3(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I4(\ALUResult_OBUF[31]_inst_i_6_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_7_n_0 ),
        .O(ALUResult_OBUF[31]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \ALUResult_OBUF[31]_inst_i_10 
       (.I0(PC_OBUF[1]),
        .I1(PC_OBUF[3]),
        .I2(PC_OBUF[4]),
        .I3(PC_OBUF[5]),
        .I4(PC_OBUF[2]),
        .I5(PC_OBUF[6]),
        .O(\ALUResult_OBUF[31]_inst_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h5404)) 
    \ALUResult_OBUF[31]_inst_i_11 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(r15[30]),
        .I2(\q_reg[2]_1 ),
        .I3(rd20[31]),
        .O(\ALUResult_OBUF[31]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCCC8CCCC00080000)) 
    \ALUResult_OBUF[31]_inst_i_12 
       (.I0(SrcB[3]),
        .I1(Instr_OBUF[5]),
        .I2(\ALUResult_OBUF[31]_inst_i_13_n_0 ),
        .I3(PC_OBUF[6]),
        .I4(PC_OBUF[2]),
        .I5(\ALUResult_OBUF[31]_inst_i_8_n_0 ),
        .O(\ALUResult_OBUF[31]_inst_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ALUResult_OBUF[31]_inst_i_13 
       (.I0(PC_OBUF[5]),
        .I1(PC_OBUF[1]),
        .O(\ALUResult_OBUF[31]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h2F20BFBF2F20B0B0)) 
    \ALUResult_OBUF[31]_inst_i_2 
       (.I0(\ALUResult_OBUF[31]_inst_i_8_n_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_1_0 ),
        .I2(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I3(p_0_in[31]),
        .I4(\q_reg[2]_0 ),
        .I5(p_2_in[31]),
        .O(\ALUResult_OBUF[31]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0003030003010303)) 
    \ALUResult_OBUF[31]_inst_i_3 
       (.I0(PC_OBUF[1]),
        .I1(PC_OBUF[6]),
        .I2(PC_OBUF[4]),
        .I3(PC_OBUF[3]),
        .I4(PC_OBUF[5]),
        .I5(PC_OBUF[2]),
        .O(\ALUResult_OBUF[31]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCEDCCFFCCEFFD)) 
    \ALUResult_OBUF[31]_inst_i_4 
       (.I0(PC_OBUF[1]),
        .I1(PC_OBUF[6]),
        .I2(PC_OBUF[2]),
        .I3(PC_OBUF[4]),
        .I4(PC_OBUF[5]),
        .I5(PC_OBUF[3]),
        .O(\q_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFCCCCCCFFCCDCCF)) 
    \ALUResult_OBUF[31]_inst_i_5 
       (.I0(PC_OBUF[1]),
        .I1(PC_OBUF[6]),
        .I2(PC_OBUF[2]),
        .I3(PC_OBUF[4]),
        .I4(PC_OBUF[5]),
        .I5(PC_OBUF[3]),
        .O(\ALUResult_OBUF[31]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF88F8)) 
    \ALUResult_OBUF[31]_inst_i_6 
       (.I0(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I2(\ALUResult_OBUF[31]_inst_i_11_n_0 ),
        .I3(Instr_OBUF[7]),
        .I4(\ALUResult_OBUF[31]_inst_i_12_n_0 ),
        .O(\ALUResult_OBUF[31]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF51AE000040BF)) 
    \ALUResult_OBUF[31]_inst_i_7 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(\q_reg[2]_1 ),
        .I2(rd20[31]),
        .I3(rd10[31]),
        .I4(\q_reg[3]_0 ),
        .I5(r15[30]),
        .O(\ALUResult_OBUF[31]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hAAAAEFEA)) 
    \ALUResult_OBUF[31]_inst_i_8 
       (.I0(\q_reg[3]_2 ),
        .I1(rd20[31]),
        .I2(\q_reg[2]_1 ),
        .I3(r15[30]),
        .I4(Result0_carry__0_i_9_n_0),
        .O(\ALUResult_OBUF[31]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h5404)) 
    \ALUResult_OBUF[31]_inst_i_9 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(r15[26]),
        .I2(\q_reg[2]_1 ),
        .I3(rd20[27]),
        .O(\ALUResult_OBUF[31]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h76547654FFFF0000)) 
    \ALUResult_OBUF[3]_inst_i_1 
       (.I0(\q_reg[2]_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I2(\ALUResult_OBUF[3]_inst_i_2_n_0 ),
        .I3(\ALUResult_OBUF[3]_inst_i_3_n_0 ),
        .I4(\ALUResult_OBUF[3]_inst_i_4_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_3_n_0 ),
        .O(ALUResult_OBUF[3]));
  LUT4 #(
    .INIT(16'h0454)) 
    \ALUResult_OBUF[3]_inst_i_2 
       (.I0(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I1(SrcB[3]),
        .I2(Instr_OBUF[7]),
        .I3(\ALUResult_OBUF[11]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[3]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \ALUResult_OBUF[3]_inst_i_3 
       (.I0(SrcB[3]),
        .I1(rd10[3]),
        .I2(\q_reg[3]_2 ),
        .I3(r15[2]),
        .O(\ALUResult_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F80EFEF8F80E0E0)) 
    \ALUResult_OBUF[3]_inst_i_4 
       (.I0(SrcB[3]),
        .I1(SrcA[2]),
        .I2(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I3(p_0_in[3]),
        .I4(\q_reg[2]_0 ),
        .I5(p_2_in[3]),
        .O(\ALUResult_OBUF[3]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F0FFC0CAAAAAAAA)) 
    \ALUResult_OBUF[4]_inst_i_1 
       (.I0(\ALUResult_OBUF[4]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[4]_inst_i_3_n_0 ),
        .I2(\q_reg[2]_0 ),
        .I3(\ALUResult_OBUF[4]_inst_i_4_n_0 ),
        .I4(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_3_n_0 ),
        .O(ALUResult_OBUF[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult_OBUF[4]_inst_i_2 
       (.I0(\ALUResult_OBUF[4]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I2(p_0_in[4]),
        .I3(\q_reg[2]_0 ),
        .I4(p_2_in[4]),
        .O(\ALUResult_OBUF[4]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h74777444)) 
    \ALUResult_OBUF[4]_inst_i_3 
       (.I0(\i_alu/aD2M4dsP [0]),
        .I1(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I2(SrcB[8]),
        .I3(Instr_OBUF[7]),
        .I4(\ALUResult_OBUF[8]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[4]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000F20DFFFFF708)) 
    \ALUResult_OBUF[4]_inst_i_4 
       (.I0(\q_reg[2]_1 ),
        .I1(rd20[4]),
        .I2(Result0_carry__0_i_9_n_0),
        .I3(rd10[4]),
        .I4(\q_reg[3]_2 ),
        .I5(r15[3]),
        .O(\ALUResult_OBUF[4]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0F00DF8F)) 
    \ALUResult_OBUF[4]_inst_i_5 
       (.I0(\q_reg[3]_2 ),
        .I1(r15[3]),
        .I2(\q_reg[2]_0 ),
        .I3(rd10[4]),
        .I4(\ALUResult_OBUF[0]_inst_i_4_n_0 ),
        .O(\ALUResult_OBUF[4]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFEEEEEEEFEE)) 
    \ALUResult_OBUF[5]_inst_i_1 
       (.I0(\ALUResult_OBUF[5]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[5]_inst_i_3_n_0 ),
        .I2(\q_reg[5]_0 ),
        .I3(p_2_in[5]),
        .I4(\q_reg[2]_0 ),
        .I5(p_0_in[5]),
        .O(ALUResult_OBUF[5]));
  LUT6 #(
    .INIT(64'h0AAA0AAA820082AA)) 
    \ALUResult_OBUF[5]_inst_i_2 
       (.I0(\ALUResult_OBUF[31]_inst_i_3_n_0 ),
        .I1(SrcA[3]),
        .I2(\i_alu/aD2M4dsP [5]),
        .I3(\q_reg[2]_0 ),
        .I4(\ALUResult_OBUF[5]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4C4C4C0404044C04)) 
    \ALUResult_OBUF[5]_inst_i_3 
       (.I0(\q_reg[2]_0 ),
        .I1(\ALUResult_OBUF[30]_inst_i_7_n_0 ),
        .I2(\i_alu/aD2M4dsP [5]),
        .I3(rd10[5]),
        .I4(\q_reg[3]_0 ),
        .I5(r15[4]),
        .O(\ALUResult_OBUF[5]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hABFB)) 
    \ALUResult_OBUF[5]_inst_i_4 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(r15[4]),
        .I2(\q_reg[2]_1 ),
        .I3(rd20[5]),
        .O(\i_alu/aD2M4dsP [5]));
  LUT6 #(
    .INIT(64'h8888B8B888BBB8B8)) 
    \ALUResult_OBUF[5]_inst_i_5 
       (.I0(\i_alu/aD2M4dsP [1]),
        .I1(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I2(\i_alu/aD2M4dsP [5]),
        .I3(\ALUResult_OBUF[13]_inst_i_6_n_0 ),
        .I4(Instr_OBUF[7]),
        .I5(\q_reg[3]_2 ),
        .O(\ALUResult_OBUF[5]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBBBAAABA)) 
    \ALUResult_OBUF[6]_inst_i_1 
       (.I0(\ALUResult_OBUF[6]_inst_i_2_n_0 ),
        .I1(\q_reg[5]_0 ),
        .I2(p_2_in[6]),
        .I3(\q_reg[2]_0 ),
        .I4(p_0_in[6]),
        .I5(\ALUResult_OBUF[6]_inst_i_3_n_0 ),
        .O(ALUResult_OBUF[6]));
  LUT6 #(
    .INIT(64'hA0A00A0A02A2A202)) 
    \ALUResult_OBUF[6]_inst_i_2 
       (.I0(\ALUResult_OBUF[31]_inst_i_3_n_0 ),
        .I1(\ALUResult_OBUF[6]_inst_i_4_n_0 ),
        .I2(\q_reg[2]_0 ),
        .I3(SrcA[4]),
        .I4(SrcB[6]),
        .I5(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCC444C444400040)) 
    \ALUResult_OBUF[6]_inst_i_3 
       (.I0(\q_reg[2]_0 ),
        .I1(\ALUResult_OBUF[30]_inst_i_7_n_0 ),
        .I2(rd10[6]),
        .I3(\q_reg[3]_0 ),
        .I4(r15[5]),
        .I5(SrcB[6]),
        .O(\ALUResult_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4444474477774777)) 
    \ALUResult_OBUF[6]_inst_i_4 
       (.I0(SrcB[2]),
        .I1(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I2(\ALUResult_OBUF[14]_inst_i_5_n_0 ),
        .I3(Instr_OBUF[7]),
        .I4(\q_reg[3]_0 ),
        .I5(SrcB[6]),
        .O(\ALUResult_OBUF[6]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4540)) 
    \ALUResult_OBUF[6]_inst_i_5 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(rd20[6]),
        .I2(\q_reg[2]_1 ),
        .I3(r15[5]),
        .O(SrcB[6]));
  MUXF7 \ALUResult_OBUF[7]_inst_i_1 
       (.I0(\ALUResult_OBUF[7]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[7]_inst_i_3_n_0 ),
        .O(ALUResult_OBUF[7]),
        .S(\ALUResult_OBUF[31]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4F4FDFD04040DFD0)) 
    \ALUResult_OBUF[7]_inst_i_2 
       (.I0(\ALUResult_OBUF[11]_inst_i_5_n_0 ),
        .I1(SrcA[5]),
        .I2(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I3(p_2_in[7]),
        .I4(\q_reg[2]_0 ),
        .I5(p_0_in[7]),
        .O(\ALUResult_OBUF[7]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h63DD6388)) 
    \ALUResult_OBUF[7]_inst_i_3 
       (.I0(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[11]_inst_i_5_n_0 ),
        .I2(SrcA[5]),
        .I3(\q_reg[2]_0 ),
        .I4(\ALUResult_OBUF[7]_inst_i_4_n_0 ),
        .O(\ALUResult_OBUF[7]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h888BBBBB888B8888)) 
    \ALUResult_OBUF[7]_inst_i_4 
       (.I0(SrcB[3]),
        .I1(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I2(\ALUResult_OBUF[11]_inst_i_6_n_0 ),
        .I3(\q_reg[3]_2 ),
        .I4(Instr_OBUF[7]),
        .I5(\ALUResult_OBUF[7]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[7]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \ALUResult_OBUF[7]_inst_i_5 
       (.I0(r15[6]),
        .I1(\q_reg[2]_1 ),
        .I2(rd20[7]),
        .I3(Result0_carry__0_i_9_n_0),
        .O(\ALUResult_OBUF[7]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F0FFC0CAAAAAAAA)) 
    \ALUResult_OBUF[8]_inst_i_1 
       (.I0(\ALUResult_OBUF[8]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[8]_inst_i_3_n_0 ),
        .I2(\q_reg[2]_0 ),
        .I3(\ALUResult_OBUF[8]_inst_i_4_n_0 ),
        .I4(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_3_n_0 ),
        .O(ALUResult_OBUF[8]));
  LUT6 #(
    .INIT(64'h8F80EFEF8F80E0E0)) 
    \ALUResult_OBUF[8]_inst_i_2 
       (.I0(SrcA[6]),
        .I1(SrcB[8]),
        .I2(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I3(p_0_in[8]),
        .I4(\q_reg[2]_0 ),
        .I5(p_2_in[8]),
        .O(\ALUResult_OBUF[8]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult_OBUF[8]_inst_i_3 
       (.I0(\ALUResult_OBUF[8]_inst_i_6_n_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I2(SrcB[12]),
        .I3(Instr_OBUF[7]),
        .I4(SrcB[8]),
        .O(\ALUResult_OBUF[8]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000F20DFFFFF708)) 
    \ALUResult_OBUF[8]_inst_i_4 
       (.I0(\q_reg[2]_1 ),
        .I1(rd20[8]),
        .I2(Result0_carry__0_i_9_n_0),
        .I3(rd10[8]),
        .I4(\q_reg[3]_0 ),
        .I5(r15[7]),
        .O(\ALUResult_OBUF[8]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBAAA)) 
    \ALUResult_OBUF[8]_inst_i_5 
       (.I0(\q_reg[3]_2 ),
        .I1(Result0_carry__0_i_9_n_0),
        .I2(rd20[8]),
        .I3(\q_reg[2]_1 ),
        .I4(r15[7]),
        .O(SrcB[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \ALUResult_OBUF[8]_inst_i_6 
       (.I0(r15[3]),
        .I1(\q_reg[2]_1 ),
        .I2(rd20[4]),
        .I3(Result0_carry__0_i_9_n_0),
        .O(\ALUResult_OBUF[8]_inst_i_6_n_0 ));
  MUXF7 \ALUResult_OBUF[9]_inst_i_1 
       (.I0(\ALUResult_OBUF[9]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[9]_inst_i_3_n_0 ),
        .O(ALUResult_OBUF[9]),
        .S(\ALUResult_OBUF[31]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4F4FDFD04040DFD0)) 
    \ALUResult_OBUF[9]_inst_i_2 
       (.I0(\ALUResult_OBUF[9]_inst_i_4_n_0 ),
        .I1(SrcA[7]),
        .I2(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I3(p_2_in[9]),
        .I4(\q_reg[2]_0 ),
        .I5(p_0_in[9]),
        .O(\ALUResult_OBUF[9]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4BF54BA0)) 
    \ALUResult_OBUF[9]_inst_i_3 
       (.I0(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I1(SrcA[7]),
        .I2(\ALUResult_OBUF[9]_inst_i_4_n_0 ),
        .I3(\q_reg[2]_0 ),
        .I4(\ALUResult_OBUF[9]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[9]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h45444555)) 
    \ALUResult_OBUF[9]_inst_i_4 
       (.I0(\q_reg[3]_2 ),
        .I1(Result0_carry__0_i_9_n_0),
        .I2(rd20[9]),
        .I3(\q_reg[2]_1 ),
        .I4(r15[8]),
        .O(\ALUResult_OBUF[9]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3333303077443030)) 
    \ALUResult_OBUF[9]_inst_i_5 
       (.I0(\i_alu/aD2M4dsP [5]),
        .I1(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I2(\ALUResult_OBUF[13]_inst_i_6_n_0 ),
        .I3(\ALUResult_OBUF[13]_inst_i_7_n_0 ),
        .I4(Instr_OBUF[7]),
        .I5(\q_reg[3]_0 ),
        .O(\ALUResult_OBUF[9]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000308C3270)) 
    \Instr_OBUF[0]_inst_i_1 
       (.I0(PC_OBUF[1]),
        .I1(PC_OBUF[4]),
        .I2(PC_OBUF[2]),
        .I3(PC_OBUF[5]),
        .I4(PC_OBUF[3]),
        .I5(PC_OBUF[6]),
        .O(Instr_OBUF[0]));
  LUT6 #(
    .INIT(64'h000000000A010474)) 
    \Instr_OBUF[12]_inst_i_1 
       (.I0(PC_OBUF[3]),
        .I1(PC_OBUF[1]),
        .I2(PC_OBUF[4]),
        .I3(PC_OBUF[5]),
        .I4(PC_OBUF[2]),
        .I5(PC_OBUF[6]),
        .O(ADDRD[0]));
  LUT6 #(
    .INIT(64'h1055101101141000)) 
    \Instr_OBUF[13]_inst_i_1 
       (.I0(PC_OBUF[6]),
        .I1(PC_OBUF[5]),
        .I2(PC_OBUF[2]),
        .I3(PC_OBUF[4]),
        .I4(PC_OBUF[1]),
        .I5(PC_OBUF[3]),
        .O(ADDRD[1]));
  LUT6 #(
    .INIT(64'h000000002010C808)) 
    \Instr_OBUF[14]_inst_i_1 
       (.I0(PC_OBUF[3]),
        .I1(PC_OBUF[4]),
        .I2(PC_OBUF[1]),
        .I3(PC_OBUF[2]),
        .I4(PC_OBUF[5]),
        .I5(PC_OBUF[6]),
        .O(ADDRD[2]));
  LUT6 #(
    .INIT(64'h0404040404000000)) 
    \Instr_OBUF[15]_inst_i_1 
       (.I0(PC_OBUF[4]),
        .I1(PC_OBUF[5]),
        .I2(PC_OBUF[6]),
        .I3(PC_OBUF[1]),
        .I4(PC_OBUF[3]),
        .I5(PC_OBUF[2]),
        .O(ADDRD[3]));
  LUT6 #(
    .INIT(64'h0000082400002000)) 
    \Instr_OBUF[16]_inst_i_1 
       (.I0(PC_OBUF[3]),
        .I1(PC_OBUF[5]),
        .I2(PC_OBUF[4]),
        .I3(PC_OBUF[2]),
        .I4(PC_OBUF[6]),
        .I5(PC_OBUF[1]),
        .O(Instr_OBUF[8]));
  LUT6 #(
    .INIT(64'h0020000000000200)) 
    \Instr_OBUF[17]_inst_i_1 
       (.I0(PC_OBUF[2]),
        .I1(PC_OBUF[6]),
        .I2(PC_OBUF[5]),
        .I3(PC_OBUF[4]),
        .I4(PC_OBUF[3]),
        .I5(PC_OBUF[1]),
        .O(Instr_OBUF[9]));
  LUT6 #(
    .INIT(64'h0400040440100000)) 
    \Instr_OBUF[18]_inst_i_1 
       (.I0(PC_OBUF[6]),
        .I1(PC_OBUF[3]),
        .I2(PC_OBUF[5]),
        .I3(PC_OBUF[2]),
        .I4(PC_OBUF[1]),
        .I5(PC_OBUF[4]),
        .O(Instr_OBUF[10]));
  LUT5 #(
    .INIT(32'h04000000)) 
    \Instr_OBUF[19]_inst_i_1 
       (.I0(PC_OBUF[4]),
        .I1(PC_OBUF[5]),
        .I2(PC_OBUF[6]),
        .I3(PC_OBUF[3]),
        .I4(PC_OBUF[2]),
        .O(Instr_OBUF[11]));
  LUT6 #(
    .INIT(64'h0000080900004FFA)) 
    \Instr_OBUF[1]_inst_i_1 
       (.I0(PC_OBUF[2]),
        .I1(PC_OBUF[1]),
        .I2(PC_OBUF[4]),
        .I3(PC_OBUF[3]),
        .I4(PC_OBUF[6]),
        .I5(PC_OBUF[5]),
        .O(Instr_OBUF[1]));
  LUT6 #(
    .INIT(64'h0044001000105000)) 
    \Instr_OBUF[20]_inst_i_1 
       (.I0(PC_OBUF[6]),
        .I1(PC_OBUF[3]),
        .I2(PC_OBUF[1]),
        .I3(PC_OBUF[4]),
        .I4(PC_OBUF[2]),
        .I5(PC_OBUF[5]),
        .O(Instr_OBUF[12]));
  LUT6 #(
    .INIT(64'h000000000000EB6F)) 
    \Instr_OBUF[21]_inst_i_1 
       (.I0(PC_OBUF[3]),
        .I1(PC_OBUF[5]),
        .I2(PC_OBUF[2]),
        .I3(PC_OBUF[1]),
        .I4(PC_OBUF[4]),
        .I5(PC_OBUF[6]),
        .O(Instr_OBUF[13]));
  LUT6 #(
    .INIT(64'h0000000021000980)) 
    \Instr_OBUF[22]_inst_i_1 
       (.I0(PC_OBUF[3]),
        .I1(PC_OBUF[4]),
        .I2(PC_OBUF[2]),
        .I3(PC_OBUF[1]),
        .I4(PC_OBUF[5]),
        .I5(PC_OBUF[6]),
        .O(Instr_OBUF[14]));
  LUT6 #(
    .INIT(64'h0000555141555555)) 
    \Instr_OBUF[23]_inst_i_1 
       (.I0(PC_OBUF[6]),
        .I1(PC_OBUF[1]),
        .I2(PC_OBUF[2]),
        .I3(PC_OBUF[3]),
        .I4(PC_OBUF[4]),
        .I5(PC_OBUF[5]),
        .O(Instr_OBUF[15]));
  LUT6 #(
    .INIT(64'h0101000313231333)) 
    \Instr_OBUF[24]_inst_i_1 
       (.I0(PC_OBUF[2]),
        .I1(PC_OBUF[6]),
        .I2(PC_OBUF[5]),
        .I3(PC_OBUF[3]),
        .I4(PC_OBUF[1]),
        .I5(PC_OBUF[4]),
        .O(Instr_OBUF[16]));
  LUT6 #(
    .INIT(64'h0000180500000021)) 
    \Instr_OBUF[25]_inst_i_1 
       (.I0(PC_OBUF[3]),
        .I1(PC_OBUF[5]),
        .I2(PC_OBUF[4]),
        .I3(PC_OBUF[2]),
        .I4(PC_OBUF[6]),
        .I5(PC_OBUF[1]),
        .O(Instr_OBUF[17]));
  LUT5 #(
    .INIT(32'h00000006)) 
    \Instr_OBUF[26]_inst_i_1 
       (.I0(PC_OBUF[4]),
        .I1(PC_OBUF[2]),
        .I2(PC_OBUF[6]),
        .I3(PC_OBUF[5]),
        .I4(PC_OBUF[3]),
        .O(Instr_OBUF[18]));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \Instr_OBUF[27]_inst_i_1 
       (.I0(PC_OBUF[2]),
        .I1(PC_OBUF[5]),
        .I2(PC_OBUF[3]),
        .I3(PC_OBUF[4]),
        .I4(PC_OBUF[6]),
        .I5(PC_OBUF[1]),
        .O(Instr_OBUF[6]));
  LUT6 #(
    .INIT(64'h0000240000000000)) 
    \Instr_OBUF[28]_inst_i_1 
       (.I0(PC_OBUF[3]),
        .I1(PC_OBUF[5]),
        .I2(PC_OBUF[4]),
        .I3(PC_OBUF[1]),
        .I4(PC_OBUF[6]),
        .I5(PC_OBUF[2]),
        .O(Instr_OBUF[19]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h05011555)) 
    \Instr_OBUF[29]_inst_i_1 
       (.I0(PC_OBUF[6]),
        .I1(PC_OBUF[2]),
        .I2(PC_OBUF[4]),
        .I3(PC_OBUF[3]),
        .I4(PC_OBUF[5]),
        .O(Instr_OBUF[20]));
  LUT6 #(
    .INIT(64'h0300010109090404)) 
    \Instr_OBUF[2]_inst_i_1 
       (.I0(PC_OBUF[3]),
        .I1(PC_OBUF[4]),
        .I2(PC_OBUF[6]),
        .I3(PC_OBUF[1]),
        .I4(PC_OBUF[2]),
        .I5(PC_OBUF[5]),
        .O(Instr_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00070F0F)) 
    \Instr_OBUF[30]_inst_i_1 
       (.I0(PC_OBUF[2]),
        .I1(PC_OBUF[3]),
        .I2(PC_OBUF[6]),
        .I3(PC_OBUF[5]),
        .I4(PC_OBUF[4]),
        .O(Instr_OBUF[21]));
  LUT6 #(
    .INIT(64'h0115015505150515)) 
    \Instr_OBUF[31]_inst_i_1 
       (.I0(PC_OBUF[6]),
        .I1(PC_OBUF[2]),
        .I2(PC_OBUF[5]),
        .I3(PC_OBUF[4]),
        .I4(PC_OBUF[1]),
        .I5(PC_OBUF[3]),
        .O(Instr_OBUF[22]));
  LUT6 #(
    .INIT(64'h0000000800000330)) 
    \Instr_OBUF[3]_inst_i_1 
       (.I0(PC_OBUF[1]),
        .I1(PC_OBUF[3]),
        .I2(PC_OBUF[2]),
        .I3(PC_OBUF[4]),
        .I4(PC_OBUF[6]),
        .I5(PC_OBUF[5]),
        .O(Instr_OBUF[3]));
  LUT6 #(
    .INIT(64'h0000440400000000)) 
    \Instr_OBUF[5]_inst_i_1 
       (.I0(PC_OBUF[4]),
        .I1(PC_OBUF[3]),
        .I2(PC_OBUF[5]),
        .I3(PC_OBUF[1]),
        .I4(PC_OBUF[6]),
        .I5(PC_OBUF[2]),
        .O(Instr_OBUF[4]));
  LUT6 #(
    .INIT(64'h0020000000200020)) 
    \Instr_OBUF[6]_inst_i_1 
       (.I0(PC_OBUF[1]),
        .I1(PC_OBUF[6]),
        .I2(PC_OBUF[3]),
        .I3(PC_OBUF[4]),
        .I4(PC_OBUF[2]),
        .I5(PC_OBUF[5]),
        .O(Instr_OBUF[5]));
  LUT6 #(
    .INIT(64'h00000000080C000C)) 
    \Instr_OBUF[9]_inst_i_1 
       (.I0(PC_OBUF[1]),
        .I1(PC_OBUF[3]),
        .I2(PC_OBUF[4]),
        .I3(PC_OBUF[5]),
        .I4(PC_OBUF[2]),
        .I5(PC_OBUF[6]),
        .O(Instr_OBUF[7]));
  LUT6 #(
    .INIT(64'h33333333AAAA56A6)) 
    Result0_carry__0_i_5
       (.I0(rd10[7]),
        .I1(r15[6]),
        .I2(\q_reg[2]_1 ),
        .I3(rd20[7]),
        .I4(Result0_carry__0_i_9_n_0),
        .I5(\q_reg[3]_0 ),
        .O(\q_reg[2]_6 [3]));
  LUT6 #(
    .INIT(64'hB847B8B8B812B812)) 
    Result0_carry__0_i_6
       (.I0(r15[5]),
        .I1(\q_reg[3]_0 ),
        .I2(rd10[6]),
        .I3(Result0_carry__0_i_9_n_0),
        .I4(rd20[6]),
        .I5(\q_reg[2]_1 ),
        .O(\q_reg[2]_6 [2]));
  LUT6 #(
    .INIT(64'hEEEE22221E11D222)) 
    Result0_carry__0_i_7
       (.I0(rd10[5]),
        .I1(\q_reg[3]_2 ),
        .I2(rd20[5]),
        .I3(\q_reg[2]_1 ),
        .I4(r15[4]),
        .I5(Result0_carry__0_i_9_n_0),
        .O(\q_reg[2]_6 [1]));
  LUT6 #(
    .INIT(64'h33333333AAAA56A6)) 
    Result0_carry__0_i_8
       (.I0(rd10[4]),
        .I1(r15[3]),
        .I2(\q_reg[2]_1 ),
        .I3(rd20[4]),
        .I4(Result0_carry__0_i_9_n_0),
        .I5(\q_reg[3]_2 ),
        .O(\q_reg[2]_6 [0]));
  LUT6 #(
    .INIT(64'h1000000400105555)) 
    Result0_carry__0_i_9
       (.I0(PC_OBUF[6]),
        .I1(PC_OBUF[4]),
        .I2(PC_OBUF[1]),
        .I3(PC_OBUF[2]),
        .I4(PC_OBUF[5]),
        .I5(PC_OBUF[3]),
        .O(Result0_carry__0_i_9_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF9A999AAA)) 
    Result0_carry__1_i_5
       (.I0(rd10[11]),
        .I1(Result0_carry__0_i_9_n_0),
        .I2(rd20[11]),
        .I3(\q_reg[2]_1 ),
        .I4(r15[10]),
        .I5(\q_reg[3]_0 ),
        .O(\q_reg[7]_0 [3]));
  LUT6 #(
    .INIT(64'h0000FFFF9A999AAA)) 
    Result0_carry__1_i_6
       (.I0(rd10[10]),
        .I1(Result0_carry__0_i_9_n_0),
        .I2(rd20[10]),
        .I3(\q_reg[2]_1 ),
        .I4(r15[9]),
        .I5(\q_reg[3]_0 ),
        .O(\q_reg[7]_0 [2]));
  LUT6 #(
    .INIT(64'h4544EFFF1011BAAA)) 
    Result0_carry__1_i_7
       (.I0(\q_reg[3]_0 ),
        .I1(Result0_carry__0_i_9_n_0),
        .I2(rd20[9]),
        .I3(\q_reg[2]_1 ),
        .I4(r15[8]),
        .I5(rd10[9]),
        .O(\q_reg[7]_0 [1]));
  LUT6 #(
    .INIT(64'h33333333AAAA56A6)) 
    Result0_carry__1_i_8
       (.I0(rd10[8]),
        .I1(r15[7]),
        .I2(\q_reg[2]_1 ),
        .I3(rd20[8]),
        .I4(Result0_carry__0_i_9_n_0),
        .I5(\q_reg[3]_0 ),
        .O(\q_reg[7]_0 [0]));
  LUT6 #(
    .INIT(64'h0000FFFF9A999AAA)) 
    Result0_carry__2_i_5
       (.I0(rd10[15]),
        .I1(Result0_carry__0_i_9_n_0),
        .I2(rd20[15]),
        .I3(\q_reg[2]_1 ),
        .I4(r15[14]),
        .I5(\q_reg[3]_0 ),
        .O(\q_reg[7]_1 [3]));
  LUT6 #(
    .INIT(64'h33333333AAAA56A6)) 
    Result0_carry__2_i_6
       (.I0(rd10[14]),
        .I1(r15[13]),
        .I2(\q_reg[2]_1 ),
        .I3(rd20[14]),
        .I4(Result0_carry__0_i_9_n_0),
        .I5(\q_reg[3]_0 ),
        .O(\q_reg[7]_1 [2]));
  LUT6 #(
    .INIT(64'h0000FFFF9A999AAA)) 
    Result0_carry__2_i_7
       (.I0(rd10[13]),
        .I1(Result0_carry__0_i_9_n_0),
        .I2(rd20[13]),
        .I3(\q_reg[2]_1 ),
        .I4(r15[12]),
        .I5(\q_reg[3]_0 ),
        .O(\q_reg[7]_1 [1]));
  LUT6 #(
    .INIT(64'h33333333AAAA56A6)) 
    Result0_carry__2_i_8
       (.I0(rd10[12]),
        .I1(r15[11]),
        .I2(\q_reg[2]_1 ),
        .I3(rd20[12]),
        .I4(Result0_carry__0_i_9_n_0),
        .I5(\q_reg[3]_0 ),
        .O(\q_reg[7]_1 [0]));
  LUT6 #(
    .INIT(64'h33333333AAAA56A6)) 
    Result0_carry__3_i_5
       (.I0(rd10[19]),
        .I1(r15[18]),
        .I2(\q_reg[2]_1 ),
        .I3(rd20[19]),
        .I4(Result0_carry__0_i_9_n_0),
        .I5(\q_reg[3]_0 ),
        .O(\q_reg[2]_4 [3]));
  LUT6 #(
    .INIT(64'h0000FFFF9A999AAA)) 
    Result0_carry__3_i_6
       (.I0(rd10[18]),
        .I1(Result0_carry__0_i_9_n_0),
        .I2(rd20[18]),
        .I3(\q_reg[2]_1 ),
        .I4(r15[17]),
        .I5(\q_reg[3]_0 ),
        .O(\q_reg[2]_4 [2]));
  LUT6 #(
    .INIT(64'h0000FFFF9A999AAA)) 
    Result0_carry__3_i_7
       (.I0(rd10[17]),
        .I1(Result0_carry__0_i_9_n_0),
        .I2(rd20[17]),
        .I3(\q_reg[2]_1 ),
        .I4(r15[16]),
        .I5(\q_reg[3]_0 ),
        .O(\q_reg[2]_4 [1]));
  LUT6 #(
    .INIT(64'h33333333AAAA56A6)) 
    Result0_carry__3_i_8
       (.I0(rd10[16]),
        .I1(r15[15]),
        .I2(\q_reg[2]_1 ),
        .I3(rd20[16]),
        .I4(Result0_carry__0_i_9_n_0),
        .I5(\q_reg[3]_0 ),
        .O(\q_reg[2]_4 [0]));
  LUT6 #(
    .INIT(64'h0F0F0F0F999AAA9A)) 
    Result0_carry__4_i_5
       (.I0(rd10[23]),
        .I1(Result0_carry__0_i_9_n_0),
        .I2(r15[22]),
        .I3(\q_reg[2]_1 ),
        .I4(rd20[23]),
        .I5(\q_reg[3]_0 ),
        .O(\q_reg[7]_2 [3]));
  LUT6 #(
    .INIT(64'h0F0F0F0F999AAA9A)) 
    Result0_carry__4_i_6
       (.I0(rd10[22]),
        .I1(Result0_carry__0_i_9_n_0),
        .I2(r15[21]),
        .I3(\q_reg[2]_1 ),
        .I4(rd20[22]),
        .I5(\q_reg[3]_0 ),
        .O(\q_reg[7]_2 [2]));
  LUT6 #(
    .INIT(64'h33333333AAAA56A6)) 
    Result0_carry__4_i_7
       (.I0(rd10[21]),
        .I1(r15[20]),
        .I2(\q_reg[2]_1 ),
        .I3(rd20[21]),
        .I4(Result0_carry__0_i_9_n_0),
        .I5(\q_reg[3]_0 ),
        .O(\q_reg[7]_2 [1]));
  LUT6 #(
    .INIT(64'h33333333AAAA56A6)) 
    Result0_carry__4_i_8
       (.I0(rd10[20]),
        .I1(r15[19]),
        .I2(\q_reg[2]_1 ),
        .I3(rd20[20]),
        .I4(Result0_carry__0_i_9_n_0),
        .I5(\q_reg[3]_0 ),
        .O(\q_reg[7]_2 [0]));
  LUT6 #(
    .INIT(64'h0F0F0F0F999AAA9A)) 
    Result0_carry__5_i_5
       (.I0(rd10[27]),
        .I1(Result0_carry__0_i_9_n_0),
        .I2(r15[26]),
        .I3(\q_reg[2]_1 ),
        .I4(rd20[27]),
        .I5(\q_reg[3]_0 ),
        .O(\q_reg[7]_3 [3]));
  LUT6 #(
    .INIT(64'h33333333AAAA56A6)) 
    Result0_carry__5_i_6
       (.I0(rd10[26]),
        .I1(r15[25]),
        .I2(\q_reg[2]_1 ),
        .I3(rd20[26]),
        .I4(Result0_carry__0_i_9_n_0),
        .I5(\q_reg[3]_0 ),
        .O(\q_reg[7]_3 [2]));
  LUT6 #(
    .INIT(64'h0000FFFF9A999AAA)) 
    Result0_carry__5_i_7
       (.I0(rd10[25]),
        .I1(Result0_carry__0_i_9_n_0),
        .I2(rd20[25]),
        .I3(\q_reg[2]_1 ),
        .I4(r15[24]),
        .I5(\q_reg[3]_2 ),
        .O(\q_reg[7]_3 [1]));
  LUT6 #(
    .INIT(64'h0000FFFF9A999AAA)) 
    Result0_carry__5_i_8
       (.I0(rd10[24]),
        .I1(Result0_carry__0_i_9_n_0),
        .I2(rd20[24]),
        .I3(\q_reg[2]_1 ),
        .I4(r15[23]),
        .I5(\q_reg[3]_0 ),
        .O(\q_reg[7]_3 [0]));
  LUT6 #(
    .INIT(64'h7474747447745656)) 
    Result0_carry__6_i_5
       (.I0(r15[30]),
        .I1(\q_reg[3]_0 ),
        .I2(rd10[31]),
        .I3(rd20[31]),
        .I4(\q_reg[2]_1 ),
        .I5(Result0_carry__0_i_9_n_0),
        .O(\q_reg[3]_3 [3]));
  LUT6 #(
    .INIT(64'h33333333AAAA56A6)) 
    Result0_carry__6_i_6
       (.I0(rd10[30]),
        .I1(r15[29]),
        .I2(\q_reg[2]_1 ),
        .I3(rd20[30]),
        .I4(Result0_carry__0_i_9_n_0),
        .I5(\q_reg[3]_0 ),
        .O(\q_reg[3]_3 [2]));
  LUT6 #(
    .INIT(64'h33333333AAAA56A6)) 
    Result0_carry__6_i_7
       (.I0(rd10[29]),
        .I1(r15[28]),
        .I2(\q_reg[2]_1 ),
        .I3(rd20[29]),
        .I4(Result0_carry__0_i_9_n_0),
        .I5(\q_reg[3]_0 ),
        .O(\q_reg[3]_3 [1]));
  LUT6 #(
    .INIT(64'h7474747447745656)) 
    Result0_carry__6_i_8
       (.I0(r15[27]),
        .I1(\q_reg[3]_2 ),
        .I2(rd10[28]),
        .I3(rd20[28]),
        .I4(\q_reg[2]_1 ),
        .I5(Result0_carry__0_i_9_n_0),
        .O(\q_reg[3]_3 [0]));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    Result0_carry_i_10
       (.I0(PC_OBUF[2]),
        .I1(PC_OBUF[5]),
        .I2(PC_OBUF[3]),
        .I3(PC_OBUF[4]),
        .I4(PC_OBUF[6]),
        .I5(PC_OBUF[1]),
        .O(\q_reg[3]_2 ));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    Result0_carry_i_11
       (.I0(\q_reg[3]_2 ),
        .I1(Instr_OBUF[3]),
        .I2(Result0_carry__0_i_9_n_0),
        .I3(rd20[3]),
        .I4(\q_reg[2]_1 ),
        .I5(r15[2]),
        .O(SrcB[3]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    Result0_carry_i_12
       (.I0(Instr_OBUF[2]),
        .I1(rd20[2]),
        .I2(\q_reg[2]_1 ),
        .I3(r15[1]),
        .I4(Result0_carry__0_i_9_n_0),
        .O(SrcB[2]));
  LUT6 #(
    .INIT(64'hE0EFE0E0E0EFEFEF)) 
    Result0_carry_i_13
       (.I0(\q_reg[3]_2 ),
        .I1(Result0_carry_i_15_n_0),
        .I2(Result0_carry__0_i_9_n_0),
        .I3(rd20[1]),
        .I4(\q_reg[2]_1 ),
        .I5(r15[0]),
        .O(\i_alu/aD2M4dsP [1]));
  LUT6 #(
    .INIT(64'hD0DFD0D0D0DFDFDF)) 
    Result0_carry_i_14
       (.I0(Instr_OBUF[0]),
        .I1(\q_reg[3]_2 ),
        .I2(Result0_carry__0_i_9_n_0),
        .I3(rd20[0]),
        .I4(\q_reg[2]_1 ),
        .I5(\q_reg[0]_0 ),
        .O(\i_alu/aD2M4dsP [0]));
  LUT6 #(
    .INIT(64'hFECCFEEEEEEFFEED)) 
    Result0_carry_i_15
       (.I0(PC_OBUF[5]),
        .I1(PC_OBUF[6]),
        .I2(PC_OBUF[3]),
        .I3(PC_OBUF[4]),
        .I4(PC_OBUF[1]),
        .I5(PC_OBUF[2]),
        .O(Result0_carry_i_15_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry_i_4
       (.I0(\q_reg[0]_0 ),
        .I1(\q_reg[3]_0 ),
        .I2(rd10[0]),
        .O(DI));
  LUT4 #(
    .INIT(16'h1DE2)) 
    Result0_carry_i_5
       (.I0(rd10[3]),
        .I1(\q_reg[3]_2 ),
        .I2(r15[2]),
        .I3(SrcB[3]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h47B8)) 
    Result0_carry_i_6
       (.I0(r15[1]),
        .I1(\q_reg[3]_0 ),
        .I2(rd10[2]),
        .I3(SrcB[2]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'hB847)) 
    Result0_carry_i_7
       (.I0(r15[0]),
        .I1(\q_reg[3]_2 ),
        .I2(rd10[1]),
        .I3(\i_alu/aD2M4dsP [1]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9A95)) 
    Result0_carry_i_8
       (.I0(\i_alu/aD2M4dsP [0]),
        .I1(\q_reg[0]_0 ),
        .I2(\q_reg[3]_2 ),
        .I3(rd10[0]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    Result0_carry_i_9
       (.I0(PC_OBUF[2]),
        .I1(PC_OBUF[5]),
        .I2(PC_OBUF[3]),
        .I3(PC_OBUF[4]),
        .I4(PC_OBUF[6]),
        .I5(PC_OBUF[1]),
        .O(\q_reg[3]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[0]_inst_i_1 
       (.I0(rd[0]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[0]),
        .O(Result_OBUF[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[10]_inst_i_1 
       (.I0(rd[10]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[10]),
        .O(Result_OBUF[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[11]_inst_i_1 
       (.I0(rd[11]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[11]),
        .O(Result_OBUF[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[12]_inst_i_1 
       (.I0(rd[12]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[12]),
        .O(Result_OBUF[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[13]_inst_i_1 
       (.I0(rd[13]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[13]),
        .O(Result_OBUF[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[14]_inst_i_1 
       (.I0(rd[14]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[14]),
        .O(Result_OBUF[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[15]_inst_i_1 
       (.I0(rd[15]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[15]),
        .O(Result_OBUF[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[16]_inst_i_1 
       (.I0(rd[16]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[16]),
        .O(Result_OBUF[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[17]_inst_i_1 
       (.I0(rd[17]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[17]),
        .O(Result_OBUF[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[18]_inst_i_1 
       (.I0(rd[18]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[18]),
        .O(Result_OBUF[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[19]_inst_i_1 
       (.I0(rd[19]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[19]),
        .O(Result_OBUF[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[1]_inst_i_1 
       (.I0(rd[1]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[1]),
        .O(Result_OBUF[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[20]_inst_i_1 
       (.I0(rd[20]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[20]),
        .O(Result_OBUF[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[21]_inst_i_1 
       (.I0(rd[21]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[21]),
        .O(Result_OBUF[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[22]_inst_i_1 
       (.I0(rd[22]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[22]),
        .O(Result_OBUF[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[23]_inst_i_1 
       (.I0(rd[23]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[23]),
        .O(Result_OBUF[23]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[24]_inst_i_1 
       (.I0(rd[24]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[24]),
        .O(Result_OBUF[24]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[25]_inst_i_1 
       (.I0(rd[25]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[25]),
        .O(Result_OBUF[25]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[26]_inst_i_1 
       (.I0(rd[26]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[26]),
        .O(Result_OBUF[26]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[27]_inst_i_1 
       (.I0(rd[27]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[27]),
        .O(Result_OBUF[27]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[28]_inst_i_1 
       (.I0(rd[28]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[28]),
        .O(Result_OBUF[28]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[29]_inst_i_1 
       (.I0(rd[29]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[29]),
        .O(Result_OBUF[29]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[2]_inst_i_1 
       (.I0(rd[2]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[2]),
        .O(Result_OBUF[2]));
  LUT5 #(
    .INIT(32'hFFFF00B8)) 
    \Result_OBUF[30]_inst_i_2 
       (.I0(p_0_in[30]),
        .I1(\q_reg[2]_0 ),
        .I2(p_2_in[30]),
        .I3(\q_reg[5]_0 ),
        .I4(\ALUResult_OBUF[30]_inst_i_3_n_0 ),
        .O(\q_reg[2]_3 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[3]_inst_i_1 
       (.I0(rd[3]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[3]),
        .O(Result_OBUF[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[4]_inst_i_1 
       (.I0(rd[4]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[4]),
        .O(Result_OBUF[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[5]_inst_i_1 
       (.I0(rd[5]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[5]),
        .O(Result_OBUF[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[6]_inst_i_1 
       (.I0(rd[6]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[6]),
        .O(Result_OBUF[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[7]_inst_i_1 
       (.I0(rd[7]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[7]),
        .O(Result_OBUF[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[8]_inst_i_1 
       (.I0(rd[8]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[8]),
        .O(Result_OBUF[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[9]_inst_i_1 
       (.I0(rd[9]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[9]),
        .O(Result_OBUF[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[0]_inst_i_1 
       (.I0(rd20[0]),
        .I1(\q_reg[2]_1 ),
        .I2(\q_reg[0]_0 ),
        .O(\q_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \WriteData_OBUF[31]_inst_i_2 
       (.I0(PC_OBUF[1]),
        .I1(PC_OBUF[3]),
        .I2(PC_OBUF[2]),
        .I3(PC_OBUF[4]),
        .I4(PC_OBUF[6]),
        .I5(PC_OBUF[5]),
        .O(\q_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h8BB88B8B8BA98BA9)) 
    i__carry__0_i_1
       (.I0(r15[6]),
        .I1(\q_reg[3]_0 ),
        .I2(rd10[7]),
        .I3(Result0_carry__0_i_9_n_0),
        .I4(rd20[7]),
        .I5(\q_reg[2]_1 ),
        .O(\q_reg[3]_6 [3]));
  LUT6 #(
    .INIT(64'h1D1D1D1DE2ED1DED)) 
    i__carry__0_i_2
       (.I0(rd10[6]),
        .I1(\q_reg[3]_0 ),
        .I2(r15[5]),
        .I3(\q_reg[2]_1 ),
        .I4(rd20[6]),
        .I5(Result0_carry__0_i_9_n_0),
        .O(\q_reg[3]_6 [2]));
  LUT6 #(
    .INIT(64'h47B847ED474747ED)) 
    i__carry__0_i_3
       (.I0(r15[4]),
        .I1(\q_reg[3]_2 ),
        .I2(rd10[5]),
        .I3(Result0_carry__0_i_9_n_0),
        .I4(\q_reg[2]_1 ),
        .I5(rd20[5]),
        .O(\q_reg[3]_6 [1]));
  LUT6 #(
    .INIT(64'h8BB88B8B8BA98BA9)) 
    i__carry__0_i_4
       (.I0(r15[3]),
        .I1(\q_reg[3]_2 ),
        .I2(rd10[4]),
        .I3(Result0_carry__0_i_9_n_0),
        .I4(rd20[4]),
        .I5(\q_reg[2]_1 ),
        .O(\q_reg[3]_6 [0]));
  LUT6 #(
    .INIT(64'h8B8B8B8BB8A98BA9)) 
    i__carry__1_i_1
       (.I0(r15[10]),
        .I1(\q_reg[3]_0 ),
        .I2(rd10[11]),
        .I3(\q_reg[2]_1 ),
        .I4(rd20[11]),
        .I5(Result0_carry__0_i_9_n_0),
        .O(\q_reg[3]_5 [3]));
  LUT6 #(
    .INIT(64'h8B8B8B8BB8A98BA9)) 
    i__carry__1_i_2
       (.I0(r15[9]),
        .I1(\q_reg[3]_0 ),
        .I2(rd10[10]),
        .I3(\q_reg[2]_1 ),
        .I4(rd20[10]),
        .I5(Result0_carry__0_i_9_n_0),
        .O(\q_reg[3]_5 [2]));
  LUT6 #(
    .INIT(64'hCCCCCCCC5555A959)) 
    i__carry__1_i_3
       (.I0(rd10[9]),
        .I1(r15[8]),
        .I2(\q_reg[2]_1 ),
        .I3(rd20[9]),
        .I4(Result0_carry__0_i_9_n_0),
        .I5(\q_reg[3]_0 ),
        .O(\q_reg[3]_5 [1]));
  LUT6 #(
    .INIT(64'h8BB88B8B8BA98BA9)) 
    i__carry__1_i_4
       (.I0(r15[7]),
        .I1(\q_reg[3]_2 ),
        .I2(rd10[8]),
        .I3(Result0_carry__0_i_9_n_0),
        .I4(rd20[8]),
        .I5(\q_reg[2]_1 ),
        .O(\q_reg[3]_5 [0]));
  LUT6 #(
    .INIT(64'h8B8B8B8BB8A98BA9)) 
    i__carry__2_i_1
       (.I0(r15[14]),
        .I1(\q_reg[3]_0 ),
        .I2(rd10[15]),
        .I3(\q_reg[2]_1 ),
        .I4(rd20[15]),
        .I5(Result0_carry__0_i_9_n_0),
        .O(\q_reg[3]_7 [3]));
  LUT6 #(
    .INIT(64'h8BB88B8B8BA98BA9)) 
    i__carry__2_i_2
       (.I0(r15[13]),
        .I1(\q_reg[3]_2 ),
        .I2(rd10[14]),
        .I3(Result0_carry__0_i_9_n_0),
        .I4(rd20[14]),
        .I5(\q_reg[2]_1 ),
        .O(\q_reg[3]_7 [2]));
  LUT6 #(
    .INIT(64'h8B8B8B8BB8A98BA9)) 
    i__carry__2_i_3
       (.I0(r15[12]),
        .I1(\q_reg[3]_0 ),
        .I2(rd10[13]),
        .I3(\q_reg[2]_1 ),
        .I4(rd20[13]),
        .I5(Result0_carry__0_i_9_n_0),
        .O(\q_reg[3]_7 [1]));
  LUT6 #(
    .INIT(64'h8BB88B8B8BA98BA9)) 
    i__carry__2_i_4
       (.I0(r15[11]),
        .I1(\q_reg[3]_2 ),
        .I2(rd10[12]),
        .I3(Result0_carry__0_i_9_n_0),
        .I4(rd20[12]),
        .I5(\q_reg[2]_1 ),
        .O(\q_reg[3]_7 [0]));
  LUT6 #(
    .INIT(64'h8BB88B8B8BA98BA9)) 
    i__carry__3_i_1
       (.I0(r15[18]),
        .I1(\q_reg[3]_0 ),
        .I2(rd10[19]),
        .I3(Result0_carry__0_i_9_n_0),
        .I4(rd20[19]),
        .I5(\q_reg[2]_1 ),
        .O(\q_reg[3]_8 [3]));
  LUT6 #(
    .INIT(64'h8B8B8B8BB8A98BA9)) 
    i__carry__3_i_2
       (.I0(r15[17]),
        .I1(\q_reg[3]_0 ),
        .I2(rd10[18]),
        .I3(\q_reg[2]_1 ),
        .I4(rd20[18]),
        .I5(Result0_carry__0_i_9_n_0),
        .O(\q_reg[3]_8 [2]));
  LUT6 #(
    .INIT(64'h8B8B8B8BB8A98BA9)) 
    i__carry__3_i_3
       (.I0(r15[16]),
        .I1(\q_reg[3]_0 ),
        .I2(rd10[17]),
        .I3(\q_reg[2]_1 ),
        .I4(rd20[17]),
        .I5(Result0_carry__0_i_9_n_0),
        .O(\q_reg[3]_8 [1]));
  LUT6 #(
    .INIT(64'h8BB88B8B8BA98BA9)) 
    i__carry__3_i_4
       (.I0(r15[15]),
        .I1(\q_reg[3]_0 ),
        .I2(rd10[16]),
        .I3(Result0_carry__0_i_9_n_0),
        .I4(rd20[16]),
        .I5(\q_reg[2]_1 ),
        .O(\q_reg[3]_8 [0]));
  LUT6 #(
    .INIT(64'h8B8B8B8BB88BA9A9)) 
    i__carry__4_i_1
       (.I0(r15[22]),
        .I1(\q_reg[3]_0 ),
        .I2(rd10[23]),
        .I3(rd20[23]),
        .I4(\q_reg[2]_1 ),
        .I5(Result0_carry__0_i_9_n_0),
        .O(\q_reg[3]_10 [3]));
  LUT6 #(
    .INIT(64'hD1D1D1D1E2D1E1E1)) 
    i__carry__4_i_2
       (.I0(rd10[22]),
        .I1(\q_reg[3]_0 ),
        .I2(r15[21]),
        .I3(rd20[22]),
        .I4(\q_reg[2]_1 ),
        .I5(Result0_carry__0_i_9_n_0),
        .O(\q_reg[3]_10 [2]));
  LUT6 #(
    .INIT(64'h8BB88B8B8BA98BA9)) 
    i__carry__4_i_3
       (.I0(r15[20]),
        .I1(\q_reg[3]_0 ),
        .I2(rd10[21]),
        .I3(Result0_carry__0_i_9_n_0),
        .I4(rd20[21]),
        .I5(\q_reg[2]_1 ),
        .O(\q_reg[3]_10 [1]));
  LUT6 #(
    .INIT(64'h8BB88B8B8BA98BA9)) 
    i__carry__4_i_4
       (.I0(r15[19]),
        .I1(\q_reg[3]_0 ),
        .I2(rd10[20]),
        .I3(Result0_carry__0_i_9_n_0),
        .I4(rd20[20]),
        .I5(\q_reg[2]_1 ),
        .O(\q_reg[3]_10 [0]));
  LUT6 #(
    .INIT(64'h8B8B8B8BB88BA9A9)) 
    i__carry__5_i_1
       (.I0(r15[26]),
        .I1(\q_reg[3]_2 ),
        .I2(rd10[27]),
        .I3(rd20[27]),
        .I4(\q_reg[2]_1 ),
        .I5(Result0_carry__0_i_9_n_0),
        .O(\q_reg[3]_9 [3]));
  LUT6 #(
    .INIT(64'h8BB88B8B8BA98BA9)) 
    i__carry__5_i_2
       (.I0(r15[25]),
        .I1(\q_reg[3]_2 ),
        .I2(rd10[26]),
        .I3(Result0_carry__0_i_9_n_0),
        .I4(rd20[26]),
        .I5(\q_reg[2]_1 ),
        .O(\q_reg[3]_9 [2]));
  LUT6 #(
    .INIT(64'h8B8B8B8BB8A98BA9)) 
    i__carry__5_i_3
       (.I0(r15[24]),
        .I1(\q_reg[3]_2 ),
        .I2(rd10[25]),
        .I3(\q_reg[2]_1 ),
        .I4(rd20[25]),
        .I5(Result0_carry__0_i_9_n_0),
        .O(\q_reg[3]_9 [1]));
  LUT6 #(
    .INIT(64'h8B8B8B8BB8A98BA9)) 
    i__carry__5_i_4
       (.I0(r15[23]),
        .I1(\q_reg[3]_2 ),
        .I2(rd10[24]),
        .I3(\q_reg[2]_1 ),
        .I4(rd20[24]),
        .I5(Result0_carry__0_i_9_n_0),
        .O(\q_reg[3]_9 [0]));
  LUT6 #(
    .INIT(64'hF0F0F0F066655565)) 
    i__carry__6_i_1
       (.I0(rd10[31]),
        .I1(Result0_carry__0_i_9_n_0),
        .I2(r15[30]),
        .I3(\q_reg[2]_1 ),
        .I4(rd20[31]),
        .I5(\q_reg[3]_0 ),
        .O(\q_reg[7]_4 [3]));
  LUT6 #(
    .INIT(64'h8BB88B8B8BA98BA9)) 
    i__carry__6_i_2
       (.I0(r15[29]),
        .I1(\q_reg[3]_2 ),
        .I2(rd10[30]),
        .I3(Result0_carry__0_i_9_n_0),
        .I4(rd20[30]),
        .I5(\q_reg[2]_1 ),
        .O(\q_reg[7]_4 [2]));
  LUT6 #(
    .INIT(64'h8BB88B8B8BA98BA9)) 
    i__carry__6_i_3
       (.I0(r15[28]),
        .I1(\q_reg[3]_2 ),
        .I2(rd10[29]),
        .I3(Result0_carry__0_i_9_n_0),
        .I4(rd20[29]),
        .I5(\q_reg[2]_1 ),
        .O(\q_reg[7]_4 [1]));
  LUT6 #(
    .INIT(64'hF0F0F0F066655565)) 
    i__carry__6_i_4
       (.I0(rd10[28]),
        .I1(Result0_carry__0_i_9_n_0),
        .I2(r15[27]),
        .I3(\q_reg[2]_1 ),
        .I4(rd20[28]),
        .I5(\q_reg[3]_2 ),
        .O(\q_reg[7]_4 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_4
       (.I0(\q_reg[0]_0 ),
        .I1(\q_reg[3]_0 ),
        .I2(rd10[0]),
        .O(\q_reg[0]_2 ));
  LUT4 #(
    .INIT(16'hB847)) 
    i__carry_i_5
       (.I0(r15[2]),
        .I1(\q_reg[3]_2 ),
        .I2(rd10[3]),
        .I3(SrcB[3]),
        .O(\q_reg[3]_4 [3]));
  LUT4 #(
    .INIT(16'hE21D)) 
    i__carry_i_6
       (.I0(rd10[2]),
        .I1(\q_reg[3]_0 ),
        .I2(r15[1]),
        .I3(SrcB[2]),
        .O(\q_reg[3]_4 [2]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    i__carry_i_7
       (.I0(rd10[1]),
        .I1(\q_reg[3]_2 ),
        .I2(r15[0]),
        .I3(\i_alu/aD2M4dsP [1]),
        .O(\q_reg[3]_4 [1]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    i__carry_i_8
       (.I0(rd10[0]),
        .I1(\q_reg[3]_2 ),
        .I2(\q_reg[0]_0 ),
        .I3(\i_alu/aD2M4dsP [0]),
        .O(\q_reg[3]_4 [0]));
  LUT6 #(
    .INIT(64'h0000000000000014)) 
    mem_reg_0_63_0_0_i_1
       (.I0(PC_OBUF[5]),
        .I1(PC_OBUF[2]),
        .I2(PC_OBUF[4]),
        .I3(PC_OBUF[1]),
        .I4(PC_OBUF[3]),
        .I5(PC_OBUF[6]),
        .O(MemWrite));
  LUT2 #(
    .INIT(4'h1)) 
    mem_reg_r1_0_15_0_5_i_1
       (.I0(mem_reg_r1_0_15_0_5_i_2_n_0),
        .I1(mem_reg_r1_0_15_0_5_i_3_n_0),
        .O(RegWrite));
  LUT6 #(
    .INIT(64'h00000000555500C3)) 
    mem_reg_r1_0_15_0_5_i_2
       (.I0(\q[1]_i_2_0 ),
        .I1(\q[1]_i_2_1 ),
        .I2(Instr_OBUF[19]),
        .I3(Instr_OBUF[20]),
        .I4(Instr_OBUF[21]),
        .I5(Instr_OBUF[22]),
        .O(mem_reg_r1_0_15_0_5_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000020400504)) 
    mem_reg_r1_0_15_0_5_i_3
       (.I0(PC_OBUF[5]),
        .I1(PC_OBUF[4]),
        .I2(PC_OBUF[3]),
        .I3(PC_OBUF[2]),
        .I4(PC_OBUF[1]),
        .I5(PC_OBUF[6]),
        .O(mem_reg_r1_0_15_0_5_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000004000101000)) 
    mem_reg_r2_0_15_0_5_i_1
       (.I0(PC_OBUF[6]),
        .I1(PC_OBUF[3]),
        .I2(PC_OBUF[1]),
        .I3(PC_OBUF[4]),
        .I4(PC_OBUF[2]),
        .I5(PC_OBUF[5]),
        .O(ADDRA[3]));
  LUT6 #(
    .INIT(64'h0300010109080400)) 
    mem_reg_r2_0_15_0_5_i_2
       (.I0(PC_OBUF[3]),
        .I1(PC_OBUF[4]),
        .I2(PC_OBUF[6]),
        .I3(PC_OBUF[1]),
        .I4(PC_OBUF[2]),
        .I5(PC_OBUF[5]),
        .O(ADDRA[2]));
  LUT6 #(
    .INIT(64'h0050000111545044)) 
    mem_reg_r2_0_15_0_5_i_3
       (.I0(PC_OBUF[6]),
        .I1(PC_OBUF[3]),
        .I2(PC_OBUF[1]),
        .I3(PC_OBUF[4]),
        .I4(PC_OBUF[2]),
        .I5(PC_OBUF[5]),
        .O(ADDRA[1]));
  LUT6 #(
    .INIT(64'h0055001041114500)) 
    mem_reg_r2_0_15_0_5_i_4
       (.I0(PC_OBUF[6]),
        .I1(PC_OBUF[3]),
        .I2(PC_OBUF[1]),
        .I3(PC_OBUF[4]),
        .I4(PC_OBUF[2]),
        .I5(PC_OBUF[5]),
        .O(ADDRA[0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \q[0]_i_1 
       (.I0(\q[0]_i_2__1_n_0 ),
        .I1(en),
        .I2(Instr_OBUF[15]),
        .I3(\q_reg[0]_4 ),
        .O(\q_reg[0]_3 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \q[0]_i_10 
       (.I0(\ALUResult_OBUF[17]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[12]_inst_i_5_n_0 ),
        .I2(\ALUResult_OBUF[27]_inst_i_5_n_0 ),
        .I3(\ALUResult_OBUF[18]_inst_i_3_n_0 ),
        .I4(\q[0]_i_28_n_0 ),
        .O(\q[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \q[0]_i_15 
       (.I0(SrcB[6]),
        .I1(SrcA[4]),
        .I2(\q[0]_i_37_n_0 ),
        .I3(SrcB[8]),
        .I4(SrcA[6]),
        .I5(\ALUResult_OBUF[22]_inst_i_5_n_0 ),
        .O(\q[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \q[0]_i_16 
       (.I0(SrcB[3]),
        .I1(SrcA[2]),
        .I2(\q[0]_i_38_n_0 ),
        .I3(\q[0]_i_39_n_0 ),
        .I4(SrcB[2]),
        .I5(SrcA[1]),
        .O(\q[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEEFFFF)) 
    \q[0]_i_17 
       (.I0(\q[0]_i_40_n_0 ),
        .I1(\q[0]_i_41_n_0 ),
        .I2(SrcA[22]),
        .I3(SrcB[28]),
        .I4(\q[0]_i_42_n_0 ),
        .I5(\q[0]_i_43_n_0 ),
        .O(\q[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000002A)) 
    \q[0]_i_18 
       (.I0(\q[0]_i_44_n_0 ),
        .I1(SrcA[20]),
        .I2(SrcB[26]),
        .I3(\q[0]_i_45_n_0 ),
        .I4(\q[0]_i_46_n_0 ),
        .I5(\q[0]_i_47_n_0 ),
        .O(\q[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \q[0]_i_19 
       (.I0(\q[0]_i_48_n_0 ),
        .I1(\q[0]_i_49_n_0 ),
        .I2(SrcA[12]),
        .I3(SrcB[16]),
        .I4(\q[0]_i_50_n_0 ),
        .I5(\q[0]_i_51_n_0 ),
        .O(\q[0]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[0]_i_1__0 
       (.I0(rd[0]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[0]),
        .I3(\q_reg[0]_0 ),
        .I4(\q[0]_i_2__0_n_0 ),
        .O(\q[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444444445)) 
    \q[0]_i_2 
       (.I0(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I1(\q[0]_i_6_n_0 ),
        .I2(\q[0]_i_7_n_0 ),
        .I3(\q[0]_i_8_n_0 ),
        .I4(\q[0]_i_9_n_0 ),
        .I5(\q[0]_i_10_n_0 ),
        .O(\q_reg[2]_5 ));
  LUT6 #(
    .INIT(64'h0000AE51FFFFBF40)) 
    \q[0]_i_20 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(\q_reg[2]_1 ),
        .I2(rd20[27]),
        .I3(rd10[27]),
        .I4(Instr_OBUF[6]),
        .I5(r15[26]),
        .O(\q[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF9FFFFF9)) 
    \q[0]_i_21 
       (.I0(\ALUResult_OBUF[31]_inst_i_8_n_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_1_0 ),
        .I2(\ALUResult_OBUF[21]_inst_i_4_n_0 ),
        .I3(SrcB[2]),
        .I4(SrcA[1]),
        .I5(\ALUResult_OBUF[4]_inst_i_4_n_0 ),
        .O(\q[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001001)) 
    \q[0]_i_22 
       (.I0(\q[0]_i_52_n_0 ),
        .I1(\ALUResult_OBUF[15]_inst_i_3_n_0 ),
        .I2(SrcA[22]),
        .I3(SrcB[28]),
        .I4(\ALUResult_OBUF[24]_inst_i_4_n_0 ),
        .I5(\q[0]_i_53_n_0 ),
        .O(\q[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEF)) 
    \q[0]_i_23 
       (.I0(\q[0]_i_54_n_0 ),
        .I1(\q[0]_i_55_n_0 ),
        .I2(\ALUResult_OBUF[9]_inst_i_4_n_0 ),
        .I3(SrcA[7]),
        .I4(\q[0]_i_56_n_0 ),
        .I5(\q[0]_i_57_n_0 ),
        .O(\q[0]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \q[0]_i_24 
       (.I0(\q[0]_i_58_n_0 ),
        .I1(\ALUResult_OBUF[13]_inst_i_4_n_0 ),
        .I2(\q[0]_i_59_n_0 ),
        .I3(\ALUResult_OBUF[22]_inst_i_4_n_0 ),
        .I4(\q[0]_i_60_n_0 ),
        .I5(\q[0]_i_61_n_0 ),
        .O(\q[0]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEAEAFAA)) 
    \q[0]_i_25 
       (.I0(\ALUResult_OBUF[16]_inst_i_5_n_0 ),
        .I1(SrcB[6]),
        .I2(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I3(SrcB[2]),
        .I4(Instr_OBUF[7]),
        .I5(\ALUResult_OBUF[13]_inst_i_3_n_0 ),
        .O(\q[0]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[0]_i_26 
       (.I0(\ALUResult_OBUF[11]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[25]_inst_i_3_n_0 ),
        .I2(\ALUResult_OBUF[4]_inst_i_3_n_0 ),
        .I3(\ALUResult_OBUF[22]_inst_i_3_n_0 ),
        .O(\q[0]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[0]_i_27 
       (.I0(\ALUResult_OBUF[3]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[21]_inst_i_3_n_0 ),
        .I2(\ALUResult_OBUF[10]_inst_i_7_n_0 ),
        .I3(\ALUResult_OBUF[23]_inst_i_3_n_0 ),
        .O(\q[0]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \q[0]_i_28 
       (.I0(\ALUResult_OBUF[5]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[8]_inst_i_3_n_0 ),
        .I2(\ALUResult_OBUF[9]_inst_i_5_n_0 ),
        .I3(\ALUResult_OBUF[19]_inst_i_3_n_0 ),
        .O(\q[0]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \q[0]_i_2__0 
       (.I0(mem_reg_r1_0_15_0_5_i_2_n_0),
        .I1(\q_reg[3]_2 ),
        .O(\q[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h5541004100415541)) 
    \q[0]_i_2__1 
       (.I0(\q_reg[5]_0 ),
        .I1(\q_reg[0]_5 ),
        .I2(p_2_in[31]),
        .I3(\q_reg[2]_0 ),
        .I4(CO),
        .I5(p_0_in[31]),
        .O(\q[0]_i_2__1_n_0 ));
  LUT4 #(
    .INIT(16'h40FF)) 
    \q[0]_i_3 
       (.I0(SrcB[27]),
        .I1(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I2(\q_reg[2]_0 ),
        .I3(\ALUResult_OBUF[31]_inst_i_3_n_0 ),
        .O(\q_reg[2]_7 ));
  LUT6 #(
    .INIT(64'hFFFF450000004000)) 
    \q[0]_i_37 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(rd20[10]),
        .I2(\q_reg[2]_1 ),
        .I3(rd10[10]),
        .I4(\q_reg[3]_0 ),
        .I5(r15[9]),
        .O(\q[0]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF450000004000)) 
    \q[0]_i_38 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(rd20[18]),
        .I2(\q_reg[2]_1 ),
        .I3(rd10[18]),
        .I4(\q_reg[3]_0 ),
        .I5(r15[17]),
        .O(\q[0]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \q[0]_i_39 
       (.I0(rd10[0]),
        .I1(\q_reg[3]_2 ),
        .I2(\q_reg[0]_0 ),
        .I3(\i_alu/aD2M4dsP [0]),
        .O(\q[0]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF450000004000)) 
    \q[0]_i_40 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(rd20[13]),
        .I2(\q_reg[2]_1 ),
        .I3(rd10[13]),
        .I4(\q_reg[3]_0 ),
        .I5(r15[12]),
        .O(\q[0]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0D0000000800)) 
    \q[0]_i_41 
       (.I0(\q_reg[2]_1 ),
        .I1(rd20[12]),
        .I2(Result0_carry__0_i_9_n_0),
        .I3(rd10[12]),
        .I4(\q_reg[3]_2 ),
        .I5(r15[11]),
        .O(\q[0]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0000F2FFFFFFF7FF)) 
    \q[0]_i_42 
       (.I0(\q_reg[2]_1 ),
        .I1(rd20[4]),
        .I2(Result0_carry__0_i_9_n_0),
        .I3(rd10[4]),
        .I4(\q_reg[3]_2 ),
        .I5(r15[3]),
        .O(\q[0]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \q[0]_i_43 
       (.I0(\q[0]_i_66_n_0 ),
        .I1(SrcB[29]),
        .I2(SrcA[23]),
        .I3(\q[0]_i_67_n_0 ),
        .I4(SrcB[30]),
        .I5(SrcA[24]),
        .O(\q[0]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h00000000D0D000D0)) 
    \q[0]_i_44 
       (.I0(SrcA[0]),
        .I1(\i_alu/aD2M4dsP [1]),
        .I2(\q[0]_i_68_n_0 ),
        .I3(SrcA[5]),
        .I4(\ALUResult_OBUF[11]_inst_i_5_n_0 ),
        .I5(\q[0]_i_69_n_0 ),
        .O(\q[0]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF510000004000)) 
    \q[0]_i_45 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(\q_reg[2]_1 ),
        .I2(rd20[23]),
        .I3(rd10[23]),
        .I4(\q_reg[3]_2 ),
        .I5(r15[22]),
        .O(\q[0]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF450000004000)) 
    \q[0]_i_46 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(rd20[15]),
        .I2(\q_reg[2]_1 ),
        .I3(rd10[15]),
        .I4(\q_reg[3]_0 ),
        .I5(r15[14]),
        .O(\q[0]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF450000004000)) 
    \q[0]_i_47 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(rd20[11]),
        .I2(\q_reg[2]_1 ),
        .I3(rd10[11]),
        .I4(\q_reg[3]_0 ),
        .I5(r15[10]),
        .O(\q[0]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000020222000)) 
    \q[0]_i_48 
       (.I0(rd10[25]),
        .I1(Result0_carry__0_i_9_n_0),
        .I2(rd20[25]),
        .I3(\q_reg[2]_1 ),
        .I4(r15[24]),
        .I5(\q_reg[3]_0 ),
        .O(\q[0]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0D0000000800)) 
    \q[0]_i_49 
       (.I0(\q_reg[2]_1 ),
        .I1(rd20[19]),
        .I2(Result0_carry__0_i_9_n_0),
        .I3(rd10[19]),
        .I4(\q_reg[3]_0 ),
        .I5(r15[18]),
        .O(\q[0]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA8AAAA)) 
    \q[0]_i_5 
       (.I0(\ALUResult_OBUF[30]_inst_i_7_n_0 ),
        .I1(\q[0]_i_15_n_0 ),
        .I2(\q[0]_i_16_n_0 ),
        .I3(\q[0]_i_17_n_0 ),
        .I4(\q[0]_i_18_n_0 ),
        .I5(\q[0]_i_19_n_0 ),
        .O(\q_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hCCCCCCCC0000A808)) 
    \q[0]_i_50 
       (.I0(rd10[9]),
        .I1(r15[8]),
        .I2(\q_reg[2]_1 ),
        .I3(rd20[9]),
        .I4(Result0_carry__0_i_9_n_0),
        .I5(\q_reg[3]_0 ),
        .O(\q[0]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \q[0]_i_51 
       (.I0(\q[0]_i_70_n_0 ),
        .I1(\q[0]_i_71_n_0 ),
        .I2(SrcB[14]),
        .I3(SrcA[11]),
        .I4(SrcB[27]),
        .I5(SrcA[21]),
        .O(\q[0]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h0000F20DFFFFF708)) 
    \q[0]_i_52 
       (.I0(\q_reg[2]_1 ),
        .I1(rd20[20]),
        .I2(Result0_carry__0_i_9_n_0),
        .I3(rd10[20]),
        .I4(\q_reg[3]_2 ),
        .I5(r15[19]),
        .O(\q[0]_i_52_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFE)) 
    \q[0]_i_53 
       (.I0(\ALUResult_OBUF[11]_inst_i_3_n_0 ),
        .I1(\ALUResult_OBUF[25]_inst_i_4_n_0 ),
        .I2(SrcB[8]),
        .I3(SrcA[6]),
        .I4(\q[0]_i_72_n_0 ),
        .O(\q[0]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF66F)) 
    \q[0]_i_54 
       (.I0(SrcB[6]),
        .I1(SrcA[4]),
        .I2(\i_alu/aD2M4dsP [5]),
        .I3(SrcA[3]),
        .I4(\q[0]_i_73_n_0 ),
        .I5(\ALUResult_OBUF[23]_inst_i_4_n_0 ),
        .O(\q[0]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h0000F20DFFFFF708)) 
    \q[0]_i_55 
       (.I0(\q_reg[2]_1 ),
        .I1(rd20[26]),
        .I2(Result0_carry__0_i_9_n_0),
        .I3(rd10[26]),
        .I4(\q_reg[3]_2 ),
        .I5(r15[25]),
        .O(\q[0]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h0000F20DFFFFF708)) 
    \q[0]_i_56 
       (.I0(\q_reg[2]_1 ),
        .I1(rd20[12]),
        .I2(Result0_carry__0_i_9_n_0),
        .I3(rd10[12]),
        .I4(\q_reg[3]_2 ),
        .I5(r15[11]),
        .O(\q[0]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h0000BA45FFFFBF40)) 
    \q[0]_i_57 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(rd20[10]),
        .I2(\q_reg[2]_1 ),
        .I3(rd10[10]),
        .I4(\q_reg[3]_0 ),
        .I5(r15[9]),
        .O(\q[0]_i_57_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \q[0]_i_58 
       (.I0(\i_alu/aD2M4dsP [1]),
        .I1(rd10[1]),
        .I2(\q_reg[3]_2 ),
        .I3(r15[0]),
        .O(\q[0]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h0000F20DFFFFF708)) 
    \q[0]_i_59 
       (.I0(\q_reg[2]_1 ),
        .I1(rd20[16]),
        .I2(Result0_carry__0_i_9_n_0),
        .I3(rd10[16]),
        .I4(\q_reg[3]_0 ),
        .I5(r15[15]),
        .O(\q[0]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \q[0]_i_6 
       (.I0(\q_reg[2]_0 ),
        .I1(\q[0]_i_20_n_0 ),
        .I2(\q[0]_i_21_n_0 ),
        .I3(\q[0]_i_22_n_0 ),
        .I4(\q[0]_i_23_n_0 ),
        .I5(\q[0]_i_24_n_0 ),
        .O(\q[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEFFEFFFFFFFFEFFE)) 
    \q[0]_i_60 
       (.I0(\ALUResult_OBUF[14]_inst_i_3_n_0 ),
        .I1(\ALUResult_OBUF[19]_inst_i_4_n_0 ),
        .I2(SrcB[3]),
        .I3(SrcA[2]),
        .I4(SrcB[30]),
        .I5(SrcA[24]),
        .O(\q[0]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEBBBEB)) 
    \q[0]_i_61 
       (.I0(\ALUResult_OBUF[29]_inst_i_3_n_0 ),
        .I1(\i_alu/aD2M4dsP [0]),
        .I2(rd10[0]),
        .I3(\q_reg[3]_2 ),
        .I4(\q_reg[0]_0 ),
        .I5(\ALUResult_OBUF[18]_inst_i_4_n_0 ),
        .O(\q[0]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0D0000000800)) 
    \q[0]_i_66 
       (.I0(\q_reg[2]_1 ),
        .I1(rd20[20]),
        .I2(Result0_carry__0_i_9_n_0),
        .I3(rd10[20]),
        .I4(\q_reg[3]_2 ),
        .I5(r15[19]),
        .O(\q[0]_i_66_n_0 ));
  LUT5 #(
    .INIT(32'h4540FFFF)) 
    \q[0]_i_67 
       (.I0(\i_alu/aD2M4dsP [5]),
        .I1(r15[4]),
        .I2(\q_reg[3]_2 ),
        .I3(rd10[5]),
        .I4(\q_reg[2]_0 ),
        .O(\q[0]_i_67_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0FDDDFFFDF)) 
    \q[0]_i_68 
       (.I0(rd10[31]),
        .I1(Result0_carry__0_i_9_n_0),
        .I2(r15[30]),
        .I3(\q_reg[2]_1 ),
        .I4(rd20[31]),
        .I5(\q_reg[3]_2 ),
        .O(\q[0]_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCC0000A808)) 
    \q[0]_i_69 
       (.I0(rd10[21]),
        .I1(r15[20]),
        .I2(\q_reg[2]_1 ),
        .I3(rd20[21]),
        .I4(Result0_carry__0_i_9_n_0),
        .I5(\q_reg[3]_2 ),
        .O(\q[0]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \q[0]_i_7 
       (.I0(\ALUResult_OBUF[0]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[20]_inst_i_6_n_0 ),
        .I2(\ALUResult_OBUF[31]_inst_i_6_n_0 ),
        .I3(\ALUResult_OBUF[29]_inst_i_2_n_0 ),
        .I4(\ALUResult_OBUF[30]_inst_i_6_n_0 ),
        .I5(\ALUResult_OBUF[28]_inst_i_2_n_0 ),
        .O(\q[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF450000004000)) 
    \q[0]_i_70 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(rd20[17]),
        .I2(\q_reg[2]_1 ),
        .I3(rd10[17]),
        .I4(\q_reg[3]_0 ),
        .I5(r15[16]),
        .O(\q[0]_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF450000004000)) 
    \q[0]_i_71 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(rd20[24]),
        .I2(\q_reg[2]_1 ),
        .I3(rd10[24]),
        .I4(\q_reg[3]_2 ),
        .I5(r15[23]),
        .O(\q[0]_i_71_n_0 ));
  LUT6 #(
    .INIT(64'h0000BA45FFFFBF40)) 
    \q[0]_i_72 
       (.I0(Result0_carry__0_i_9_n_0),
        .I1(rd20[17]),
        .I2(\q_reg[2]_1 ),
        .I3(rd10[17]),
        .I4(\q_reg[3]_0 ),
        .I5(r15[16]),
        .O(\q[0]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'h0000F20DFFFFF708)) 
    \q[0]_i_73 
       (.I0(\q_reg[2]_1 ),
        .I1(rd20[7]),
        .I2(Result0_carry__0_i_9_n_0),
        .I3(rd10[7]),
        .I4(\q_reg[3]_0 ),
        .I5(r15[6]),
        .O(\q[0]_i_73_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \q[0]_i_8 
       (.I0(\ALUResult_OBUF[26]_inst_i_6_n_0 ),
        .I1(\ALUResult_OBUF[15]_inst_i_2_n_0 ),
        .I2(\ALUResult_OBUF[14]_inst_i_2_n_0 ),
        .I3(\q[0]_i_25_n_0 ),
        .I4(\q[0]_i_26_n_0 ),
        .O(\q[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \q[0]_i_9 
       (.I0(\ALUResult_OBUF[24]_inst_i_3_n_0 ),
        .I1(\ALUResult_OBUF[7]_inst_i_4_n_0 ),
        .I2(\ALUResult_OBUF[6]_inst_i_4_n_0 ),
        .I3(\ALUResult_OBUF[1]_inst_i_4_n_0 ),
        .I4(\q[0]_i_27_n_0 ),
        .O(\q[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[13]_i_2 
       (.I0(rd[16]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[16]),
        .I3(PC_OBUF[15]),
        .I4(\q[0]_i_2__0_n_0 ),
        .O(\q[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[13]_i_3 
       (.I0(rd[15]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[15]),
        .I3(PC_OBUF[14]),
        .I4(\q[0]_i_2__0_n_0 ),
        .O(\q[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[13]_i_4 
       (.I0(rd[14]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[14]),
        .I3(PC_OBUF[13]),
        .I4(\q[0]_i_2__0_n_0 ),
        .O(\q[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[13]_i_5 
       (.I0(rd[13]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[13]),
        .I3(PC_OBUF[12]),
        .I4(\q[0]_i_2__0_n_0 ),
        .O(\q[13]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[17]_i_2 
       (.I0(rd[20]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[20]),
        .I3(PC_OBUF[19]),
        .I4(\q[0]_i_2__0_n_0 ),
        .O(\q[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[17]_i_3 
       (.I0(rd[19]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[19]),
        .I3(PC_OBUF[18]),
        .I4(\q[0]_i_2__0_n_0 ),
        .O(\q[17]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[17]_i_4 
       (.I0(rd[18]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[18]),
        .I3(PC_OBUF[17]),
        .I4(\q[0]_i_2__0_n_0 ),
        .O(\q[17]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[17]_i_5 
       (.I0(rd[17]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[17]),
        .I3(PC_OBUF[16]),
        .I4(\q[0]_i_2__0_n_0 ),
        .O(\q[17]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q[1]_i_2 
       (.I0(Instr_OBUF[12]),
        .I1(mem_reg_r1_0_15_0_5_i_2_n_0),
        .O(en));
  LUT5 #(
    .INIT(32'hA8AAA888)) 
    \q[1]_i_2__0 
       (.I0(PC_OBUF[3]),
        .I1(\q[0]_i_2__0_n_0 ),
        .I2(rd[4]),
        .I3(Instr_OBUF[18]),
        .I4(ALUResult_OBUF[4]),
        .O(\q[1]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hA8AAA888)) 
    \q[1]_i_3 
       (.I0(PC_OBUF[2]),
        .I1(\q[0]_i_2__0_n_0 ),
        .I2(rd[3]),
        .I3(Instr_OBUF[18]),
        .I4(ALUResult_OBUF[3]),
        .O(\q[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00FFE200)) 
    \q[1]_i_4 
       (.I0(ALUResult_OBUF[2]),
        .I1(Instr_OBUF[18]),
        .I2(rd[2]),
        .I3(PC_OBUF[1]),
        .I4(\q[0]_i_2__0_n_0 ),
        .O(\q[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[1]_i_5 
       (.I0(rd[1]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[1]),
        .I3(PC_OBUF[0]),
        .I4(\q[0]_i_2__0_n_0 ),
        .O(\q[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[21]_i_2 
       (.I0(rd[24]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[24]),
        .I3(PC_OBUF[23]),
        .I4(\q[0]_i_2__0_n_0 ),
        .O(\q[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[21]_i_3 
       (.I0(rd[23]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[23]),
        .I3(PC_OBUF[22]),
        .I4(\q[0]_i_2__0_n_0 ),
        .O(\q[21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[21]_i_4 
       (.I0(rd[22]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[22]),
        .I3(PC_OBUF[21]),
        .I4(\q[0]_i_2__0_n_0 ),
        .O(\q[21]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[21]_i_5 
       (.I0(rd[21]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[21]),
        .I3(PC_OBUF[20]),
        .I4(\q[0]_i_2__0_n_0 ),
        .O(\q[21]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[25]_i_2 
       (.I0(rd[28]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[28]),
        .I3(PC_OBUF[27]),
        .I4(\q[0]_i_2__0_n_0 ),
        .O(\q[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[25]_i_3 
       (.I0(rd[27]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[27]),
        .I3(PC_OBUF[26]),
        .I4(\q[0]_i_2__0_n_0 ),
        .O(\q[25]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[25]_i_4 
       (.I0(rd[26]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[26]),
        .I3(PC_OBUF[25]),
        .I4(\q[0]_i_2__0_n_0 ),
        .O(\q[25]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[25]_i_5 
       (.I0(rd[25]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[25]),
        .I3(PC_OBUF[24]),
        .I4(\q[0]_i_2__0_n_0 ),
        .O(\q[25]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[29]_i_2 
       (.I0(rd[31]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[31]),
        .I3(PC_OBUF[30]),
        .I4(\q[0]_i_2__0_n_0 ),
        .O(\q[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000BBB8BBB8)) 
    \q[29]_i_3 
       (.I0(rd[30]),
        .I1(Instr_OBUF[18]),
        .I2(\q_reg[2]_2 ),
        .I3(\q_reg[2]_3 ),
        .I4(PC_OBUF[29]),
        .I5(\q[0]_i_2__0_n_0 ),
        .O(\q[29]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[29]_i_4 
       (.I0(rd[29]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[29]),
        .I3(PC_OBUF[28]),
        .I4(\q[0]_i_2__0_n_0 ),
        .O(\q[29]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[5]_i_2 
       (.I0(rd[8]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[8]),
        .I3(PC_OBUF[7]),
        .I4(\q[0]_i_2__0_n_0 ),
        .O(\q[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBAAA)) 
    \q[5]_i_3 
       (.I0(PC_OBUF[6]),
        .I1(\q[0]_i_2__0_n_0 ),
        .I2(rd[7]),
        .I3(Instr_OBUF[18]),
        .I4(ALUResult_OBUF[7]),
        .O(\q[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA8AAA888)) 
    \q[5]_i_4 
       (.I0(PC_OBUF[5]),
        .I1(\q[0]_i_2__0_n_0 ),
        .I2(rd[6]),
        .I3(Instr_OBUF[18]),
        .I4(ALUResult_OBUF[6]),
        .O(\q[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q[5]_i_5 
       (.I0(PC_OBUF[4]),
        .I1(\q[0]_i_2__0_n_0 ),
        .I2(rd[5]),
        .I3(Instr_OBUF[18]),
        .I4(ALUResult_OBUF[5]),
        .O(\q[5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[9]_i_2 
       (.I0(rd[12]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[12]),
        .I3(PC_OBUF[11]),
        .I4(\q[0]_i_2__0_n_0 ),
        .O(\q[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[9]_i_3 
       (.I0(rd[11]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[11]),
        .I3(PC_OBUF[10]),
        .I4(\q[0]_i_2__0_n_0 ),
        .O(\q[9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[9]_i_4 
       (.I0(rd[10]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[10]),
        .I3(PC_OBUF[9]),
        .I4(\q[0]_i_2__0_n_0 ),
        .O(\q[9]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[9]_i_5 
       (.I0(rd[9]),
        .I1(Instr_OBUF[18]),
        .I2(ALUResult_OBUF[9]),
        .I3(PC_OBUF[8]),
        .I4(\q[0]_i_2__0_n_0 ),
        .O(\q[9]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q[0]_i_1__0_n_0 ),
        .Q(\q_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[9]_i_1_n_6 ),
        .Q(PC_OBUF[9]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[9]_i_1_n_5 ),
        .Q(PC_OBUF[10]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[9]_i_1_n_4 ),
        .Q(PC_OBUF[11]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[13]_i_1_n_7 ),
        .Q(PC_OBUF[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_reg[13]_i_1 
       (.CI(\q_reg[9]_i_1_n_0 ),
        .CO({\q_reg[13]_i_1_n_0 ,\q_reg[13]_i_1_n_1 ,\q_reg[13]_i_1_n_2 ,\q_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_reg[13]_i_1_n_4 ,\q_reg[13]_i_1_n_5 ,\q_reg[13]_i_1_n_6 ,\q_reg[13]_i_1_n_7 }),
        .S({\q[13]_i_2_n_0 ,\q[13]_i_3_n_0 ,\q[13]_i_4_n_0 ,\q[13]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[13]_i_1_n_6 ),
        .Q(PC_OBUF[13]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[13]_i_1_n_5 ),
        .Q(PC_OBUF[14]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[13]_i_1_n_4 ),
        .Q(PC_OBUF[15]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[17]_i_1_n_7 ),
        .Q(PC_OBUF[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_reg[17]_i_1 
       (.CI(\q_reg[13]_i_1_n_0 ),
        .CO({\q_reg[17]_i_1_n_0 ,\q_reg[17]_i_1_n_1 ,\q_reg[17]_i_1_n_2 ,\q_reg[17]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_reg[17]_i_1_n_4 ,\q_reg[17]_i_1_n_5 ,\q_reg[17]_i_1_n_6 ,\q_reg[17]_i_1_n_7 }),
        .S({\q[17]_i_2_n_0 ,\q[17]_i_3_n_0 ,\q[17]_i_4_n_0 ,\q[17]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[17]_i_1_n_6 ),
        .Q(PC_OBUF[17]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[17]_i_1_n_5 ),
        .Q(PC_OBUF[18]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[1]_i_1_n_7 ),
        .Q(PC_OBUF[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_reg[1]_i_1 
       (.CI(1'b0),
        .CO({\q_reg[1]_i_1_n_0 ,\q_reg[1]_i_1_n_1 ,\q_reg[1]_i_1_n_2 ,\q_reg[1]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\q[0]_i_2__0_n_0 ,1'b0}),
        .O({\q_reg[1]_i_1_n_4 ,\q_reg[1]_i_1_n_5 ,\q_reg[1]_i_1_n_6 ,\q_reg[1]_i_1_n_7 }),
        .S({\q[1]_i_2__0_n_0 ,\q[1]_i_3_n_0 ,\q[1]_i_4_n_0 ,\q[1]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[17]_i_1_n_4 ),
        .Q(PC_OBUF[19]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[21]_i_1_n_7 ),
        .Q(PC_OBUF[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_reg[21]_i_1 
       (.CI(\q_reg[17]_i_1_n_0 ),
        .CO({\q_reg[21]_i_1_n_0 ,\q_reg[21]_i_1_n_1 ,\q_reg[21]_i_1_n_2 ,\q_reg[21]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_reg[21]_i_1_n_4 ,\q_reg[21]_i_1_n_5 ,\q_reg[21]_i_1_n_6 ,\q_reg[21]_i_1_n_7 }),
        .S({\q[21]_i_2_n_0 ,\q[21]_i_3_n_0 ,\q[21]_i_4_n_0 ,\q[21]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[21]_i_1_n_6 ),
        .Q(PC_OBUF[21]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[21]_i_1_n_5 ),
        .Q(PC_OBUF[22]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[21]_i_1_n_4 ),
        .Q(PC_OBUF[23]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[25]_i_1_n_7 ),
        .Q(PC_OBUF[24]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_reg[25]_i_1 
       (.CI(\q_reg[21]_i_1_n_0 ),
        .CO({\q_reg[25]_i_1_n_0 ,\q_reg[25]_i_1_n_1 ,\q_reg[25]_i_1_n_2 ,\q_reg[25]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_reg[25]_i_1_n_4 ,\q_reg[25]_i_1_n_5 ,\q_reg[25]_i_1_n_6 ,\q_reg[25]_i_1_n_7 }),
        .S({\q[25]_i_2_n_0 ,\q[25]_i_3_n_0 ,\q[25]_i_4_n_0 ,\q[25]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[25]_i_1_n_6 ),
        .Q(PC_OBUF[25]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[25]_i_1_n_5 ),
        .Q(PC_OBUF[26]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[25]_i_1_n_4 ),
        .Q(PC_OBUF[27]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[29]_i_1_n_7 ),
        .Q(PC_OBUF[28]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_reg[29]_i_1 
       (.CI(\q_reg[25]_i_1_n_0 ),
        .CO({\NLW_q_reg[29]_i_1_CO_UNCONNECTED [3:2],\q_reg[29]_i_1_n_2 ,\q_reg[29]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_q_reg[29]_i_1_O_UNCONNECTED [3],\q_reg[29]_i_1_n_5 ,\q_reg[29]_i_1_n_6 ,\q_reg[29]_i_1_n_7 }),
        .S({1'b0,\q[29]_i_2_n_0 ,\q[29]_i_3_n_0 ,\q[29]_i_4_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[1]_i_1_n_6 ),
        .Q(PC_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[29]_i_1_n_6 ),
        .Q(PC_OBUF[29]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[29]_i_1_n_5 ),
        .Q(PC_OBUF[30]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[1]_i_1_n_5 ),
        .Q(PC_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[1]_i_1_n_4 ),
        .Q(PC_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[5]_i_1_n_7 ),
        .Q(PC_OBUF[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_reg[5]_i_1 
       (.CI(\q_reg[1]_i_1_n_0 ),
        .CO({\q_reg[5]_i_1_n_0 ,\q_reg[5]_i_1_n_1 ,\q_reg[5]_i_1_n_2 ,\q_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_reg[5]_i_1_n_4 ,\q_reg[5]_i_1_n_5 ,\q_reg[5]_i_1_n_6 ,\q_reg[5]_i_1_n_7 }),
        .S({\q[5]_i_2_n_0 ,\q[5]_i_3_n_0 ,\q[5]_i_4_n_0 ,\q[5]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[5]_i_1_n_6 ),
        .Q(PC_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[5]_i_1_n_5 ),
        .Q(PC_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[5]_i_1_n_4 ),
        .Q(PC_OBUF[7]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[9]_i_1_n_7 ),
        .Q(PC_OBUF[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_reg[9]_i_1 
       (.CI(\q_reg[5]_i_1_n_0 ),
        .CO({\q_reg[9]_i_1_n_0 ,\q_reg[9]_i_1_n_1 ,\q_reg[9]_i_1_n_2 ,\q_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_reg[9]_i_1_n_4 ,\q_reg[9]_i_1_n_5 ,\q_reg[9]_i_1_n_6 ,\q_reg[9]_i_1_n_7 }),
        .S({\q[9]_i_2_n_0 ,\q[9]_i_3_n_0 ,\q[9]_i_4_n_0 ,\q[9]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y0_carry__0_i_1
       (.CI(y0_carry_i_1_n_0),
        .CO({y0_carry__0_i_1_n_0,y0_carry__0_i_1_n_1,y0_carry__0_i_1_n_2,y0_carry__0_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d1[7:4]),
        .S(PC_OBUF[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y0_carry__1_i_1
       (.CI(y0_carry__0_i_1_n_0),
        .CO({y0_carry__1_i_1_n_0,y0_carry__1_i_1_n_1,y0_carry__1_i_1_n_2,y0_carry__1_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d1[11:8]),
        .S(PC_OBUF[11:8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y0_carry__2_i_1
       (.CI(y0_carry__1_i_1_n_0),
        .CO({y0_carry__2_i_1_n_0,y0_carry__2_i_1_n_1,y0_carry__2_i_1_n_2,y0_carry__2_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d1[15:12]),
        .S(PC_OBUF[15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y0_carry__3_i_1
       (.CI(y0_carry__2_i_1_n_0),
        .CO({y0_carry__3_i_1_n_0,y0_carry__3_i_1_n_1,y0_carry__3_i_1_n_2,y0_carry__3_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d1[19:16]),
        .S(PC_OBUF[19:16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y0_carry__4_i_1
       (.CI(y0_carry__3_i_1_n_0),
        .CO({y0_carry__4_i_1_n_0,y0_carry__4_i_1_n_1,y0_carry__4_i_1_n_2,y0_carry__4_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d1[23:20]),
        .S(PC_OBUF[23:20]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y0_carry__5_i_1
       (.CI(y0_carry__4_i_1_n_0),
        .CO({y0_carry__5_i_1_n_0,y0_carry__5_i_1_n_1,y0_carry__5_i_1_n_2,y0_carry__5_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d1[27:24]),
        .S(PC_OBUF[27:24]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y0_carry__6_i_1
       (.CI(y0_carry__5_i_1_n_0),
        .CO({NLW_y0_carry__6_i_1_CO_UNCONNECTED[3:2],y0_carry__6_i_1_n_2,y0_carry__6_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_y0_carry__6_i_1_O_UNCONNECTED[3],d1[30:28]}),
        .S({1'b0,PC_OBUF[30:28]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y0_carry_i_1
       (.CI(1'b0),
        .CO({y0_carry_i_1_n_0,y0_carry_i_1_n_1,y0_carry_i_1_n_2,y0_carry_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,PC_OBUF[1],1'b0}),
        .O(d1[3:0]),
        .S({PC_OBUF[3:2],y0_carry_i_3_n_0,PC_OBUF[0]}));
  LUT1 #(
    .INIT(2'h1)) 
    y0_carry_i_3
       (.I0(PC_OBUF[1]),
        .O(y0_carry_i_3_n_0));
endmodule

module regfile
   (rd10,
    rd20,
    wd,
    SrcA,
    clk_IBUF_BUFG,
    Result_OBUF,
    RegWrite,
    ADDRD,
    Instr_OBUF,
    ADDRA,
    \WriteData[6] ,
    r15,
    \Result0_inferred__0/i__carry__4 ,
    \Result0_inferred__0/i__carry__1 );
  output [31:0]rd10;
  output [31:0]rd20;
  output [24:0]wd;
  output [1:0]SrcA;
  input clk_IBUF_BUFG;
  input [31:0]Result_OBUF;
  input RegWrite;
  input [3:0]ADDRD;
  input [3:0]Instr_OBUF;
  input [3:0]ADDRA;
  input \WriteData[6] ;
  input [25:0]r15;
  input \Result0_inferred__0/i__carry__4 ;
  input \Result0_inferred__0/i__carry__1 ;

  wire [3:0]ADDRA;
  wire [3:0]ADDRD;
  wire [3:0]Instr_OBUF;
  wire RegWrite;
  wire \Result0_inferred__0/i__carry__1 ;
  wire \Result0_inferred__0/i__carry__4 ;
  wire [31:0]Result_OBUF;
  wire [1:0]SrcA;
  wire \WriteData[6] ;
  wire clk_IBUF_BUFG;
  wire [25:0]r15;
  wire [31:0]rd10;
  wire [31:0]rd20;
  wire [24:0]wd;
  wire [1:0]NLW_mem_reg_r1_0_15_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_r1_0_15_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_r1_0_15_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_r1_0_15_24_29_DOD_UNCONNECTED;
  wire NLW_mem_reg_r1_0_15_30_31_SPO_UNCONNECTED;
  wire NLW_mem_reg_r1_0_15_30_31__0_SPO_UNCONNECTED;
  wire [1:0]NLW_mem_reg_r1_0_15_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_r2_0_15_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_r2_0_15_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_r2_0_15_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_r2_0_15_24_29_DOD_UNCONNECTED;
  wire NLW_mem_reg_r2_0_15_30_31_SPO_UNCONNECTED;
  wire NLW_mem_reg_r2_0_15_30_31__0_SPO_UNCONNECTED;
  wire [1:0]NLW_mem_reg_r2_0_15_6_11_DOD_UNCONNECTED;

  LUT3 #(
    .INIT(8'hE2)) 
    Result0_carry__1_i_2
       (.I0(rd10[10]),
        .I1(\Result0_inferred__0/i__carry__1 ),
        .I2(r15[8]),
        .O(SrcA[0]));
  LUT3 #(
    .INIT(8'hE2)) 
    Result0_carry__4_i_2
       (.I0(rd10[22]),
        .I1(\Result0_inferred__0/i__carry__4 ),
        .I2(r15[20]),
        .O(SrcA[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[10]_inst_i_1 
       (.I0(rd20[10]),
        .I1(\WriteData[6] ),
        .I2(r15[8]),
        .O(wd[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[11]_inst_i_1 
       (.I0(rd20[11]),
        .I1(\WriteData[6] ),
        .I2(r15[9]),
        .O(wd[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[12]_inst_i_1 
       (.I0(rd20[12]),
        .I1(\WriteData[6] ),
        .I2(r15[10]),
        .O(wd[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[13]_inst_i_1 
       (.I0(rd20[13]),
        .I1(\WriteData[6] ),
        .I2(r15[11]),
        .O(wd[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[14]_inst_i_1 
       (.I0(rd20[14]),
        .I1(\WriteData[6] ),
        .I2(r15[12]),
        .O(wd[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[15]_inst_i_1 
       (.I0(rd20[15]),
        .I1(\WriteData[6] ),
        .I2(r15[13]),
        .O(wd[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[16]_inst_i_1 
       (.I0(rd20[16]),
        .I1(\WriteData[6] ),
        .I2(r15[14]),
        .O(wd[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[17]_inst_i_1 
       (.I0(rd20[17]),
        .I1(\WriteData[6] ),
        .I2(r15[15]),
        .O(wd[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[18]_inst_i_1 
       (.I0(rd20[18]),
        .I1(\WriteData[6] ),
        .I2(r15[16]),
        .O(wd[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[19]_inst_i_1 
       (.I0(rd20[19]),
        .I1(\WriteData[6] ),
        .I2(r15[17]),
        .O(wd[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[1]_inst_i_1 
       (.I0(rd20[1]),
        .I1(\WriteData[6] ),
        .I2(r15[0]),
        .O(wd[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[20]_inst_i_1 
       (.I0(rd20[20]),
        .I1(\WriteData[6] ),
        .I2(r15[18]),
        .O(wd[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[21]_inst_i_1 
       (.I0(rd20[21]),
        .I1(\WriteData[6] ),
        .I2(r15[19]),
        .O(wd[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[24]_inst_i_1 
       (.I0(rd20[24]),
        .I1(\WriteData[6] ),
        .I2(r15[21]),
        .O(wd[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[25]_inst_i_1 
       (.I0(rd20[25]),
        .I1(\WriteData[6] ),
        .I2(r15[22]),
        .O(wd[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[26]_inst_i_1 
       (.I0(rd20[26]),
        .I1(\WriteData[6] ),
        .I2(r15[23]),
        .O(wd[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[29]_inst_i_1 
       (.I0(rd20[29]),
        .I1(\WriteData[6] ),
        .I2(r15[24]),
        .O(wd[23]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[2]_inst_i_1 
       (.I0(rd20[2]),
        .I1(\WriteData[6] ),
        .I2(r15[1]),
        .O(wd[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[30]_inst_i_1 
       (.I0(rd20[30]),
        .I1(\WriteData[6] ),
        .I2(r15[25]),
        .O(wd[24]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[3]_inst_i_1 
       (.I0(rd20[3]),
        .I1(\WriteData[6] ),
        .I2(r15[2]),
        .O(wd[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[4]_inst_i_1 
       (.I0(rd20[4]),
        .I1(\WriteData[6] ),
        .I2(r15[3]),
        .O(wd[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[6]_inst_i_1 
       (.I0(rd20[6]),
        .I1(\WriteData[6] ),
        .I2(r15[4]),
        .O(wd[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[7]_inst_i_1 
       (.I0(rd20[7]),
        .I1(\WriteData[6] ),
        .I2(r15[5]),
        .O(wd[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[8]_inst_i_1 
       (.I0(rd20[8]),
        .I1(\WriteData[6] ),
        .I2(r15[6]),
        .O(wd[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[9]_inst_i_1 
       (.I0(rd20[9]),
        .I1(\WriteData[6] ),
        .I2(r15[7]),
        .O(wd[7]));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "dp/rf/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M_UNIQ_BASE_ mem_reg_r1_0_15_0_5
       (.ADDRA({1'b0,Instr_OBUF}),
        .ADDRB({1'b0,Instr_OBUF}),
        .ADDRC({1'b0,Instr_OBUF}),
        .ADDRD({1'b0,ADDRD}),
        .DIA(Result_OBUF[1:0]),
        .DIB(Result_OBUF[3:2]),
        .DIC(Result_OBUF[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[1:0]),
        .DOB(rd10[3:2]),
        .DOC(rd10[5:4]),
        .DOD(NLW_mem_reg_r1_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(RegWrite));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "dp/rf/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M_HD75 mem_reg_r1_0_15_12_17
       (.ADDRA({1'b0,Instr_OBUF}),
        .ADDRB({1'b0,Instr_OBUF}),
        .ADDRC({1'b0,Instr_OBUF}),
        .ADDRD({1'b0,ADDRD}),
        .DIA(Result_OBUF[13:12]),
        .DIB(Result_OBUF[15:14]),
        .DIC(Result_OBUF[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[13:12]),
        .DOB(rd10[15:14]),
        .DOC(rd10[17:16]),
        .DOD(NLW_mem_reg_r1_0_15_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(RegWrite));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "dp/rf/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M_HD76 mem_reg_r1_0_15_18_23
       (.ADDRA({1'b0,Instr_OBUF}),
        .ADDRB({1'b0,Instr_OBUF}),
        .ADDRC({1'b0,Instr_OBUF}),
        .ADDRD({1'b0,ADDRD}),
        .DIA(Result_OBUF[19:18]),
        .DIB(Result_OBUF[21:20]),
        .DIC(Result_OBUF[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[19:18]),
        .DOB(rd10[21:20]),
        .DOC(rd10[23:22]),
        .DOD(NLW_mem_reg_r1_0_15_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(RegWrite));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "dp/rf/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M_HD77 mem_reg_r1_0_15_24_29
       (.ADDRA({1'b0,Instr_OBUF}),
        .ADDRB({1'b0,Instr_OBUF}),
        .ADDRC({1'b0,Instr_OBUF}),
        .ADDRD({1'b0,ADDRD}),
        .DIA(Result_OBUF[25:24]),
        .DIB(Result_OBUF[27:26]),
        .DIC(Result_OBUF[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[25:24]),
        .DOB(rd10[27:26]),
        .DOC(rd10[29:28]),
        .DOD(NLW_mem_reg_r1_0_15_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(RegWrite));
  (* INIT = "32'h00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "dp/rf/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D_UNIQ_BASE_ mem_reg_r1_0_15_30_31
       (.A0(ADDRD[0]),
        .A1(ADDRD[1]),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(1'b0),
        .D(Result_OBUF[30]),
        .DPO(rd10[30]),
        .DPRA0(Instr_OBUF[0]),
        .DPRA1(Instr_OBUF[1]),
        .DPRA2(Instr_OBUF[2]),
        .DPRA3(Instr_OBUF[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_r1_0_15_30_31_SPO_UNCONNECTED),
        .WCLK(clk_IBUF_BUFG),
        .WE(RegWrite));
  (* INIT = "32'h00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "dp/rf/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D_HD78 mem_reg_r1_0_15_30_31__0
       (.A0(ADDRD[0]),
        .A1(ADDRD[1]),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(1'b0),
        .D(Result_OBUF[31]),
        .DPO(rd10[31]),
        .DPRA0(Instr_OBUF[0]),
        .DPRA1(Instr_OBUF[1]),
        .DPRA2(Instr_OBUF[2]),
        .DPRA3(Instr_OBUF[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_r1_0_15_30_31__0_SPO_UNCONNECTED),
        .WCLK(clk_IBUF_BUFG),
        .WE(RegWrite));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "dp/rf/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M_HD79 mem_reg_r1_0_15_6_11
       (.ADDRA({1'b0,Instr_OBUF}),
        .ADDRB({1'b0,Instr_OBUF}),
        .ADDRC({1'b0,Instr_OBUF}),
        .ADDRD({1'b0,ADDRD}),
        .DIA(Result_OBUF[7:6]),
        .DIB(Result_OBUF[9:8]),
        .DIC(Result_OBUF[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[7:6]),
        .DOB(rd10[9:8]),
        .DOC(rd10[11:10]),
        .DOD(NLW_mem_reg_r1_0_15_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(RegWrite));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "dp/rf/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M_HD80 mem_reg_r2_0_15_0_5
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,ADDRD}),
        .DIA(Result_OBUF[1:0]),
        .DIB(Result_OBUF[3:2]),
        .DIC(Result_OBUF[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[1:0]),
        .DOB(rd20[3:2]),
        .DOC(rd20[5:4]),
        .DOD(NLW_mem_reg_r2_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(RegWrite));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "dp/rf/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M_HD81 mem_reg_r2_0_15_12_17
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,ADDRD}),
        .DIA(Result_OBUF[13:12]),
        .DIB(Result_OBUF[15:14]),
        .DIC(Result_OBUF[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[13:12]),
        .DOB(rd20[15:14]),
        .DOC(rd20[17:16]),
        .DOD(NLW_mem_reg_r2_0_15_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(RegWrite));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "dp/rf/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M_HD82 mem_reg_r2_0_15_18_23
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,ADDRD}),
        .DIA(Result_OBUF[19:18]),
        .DIB(Result_OBUF[21:20]),
        .DIC(Result_OBUF[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[19:18]),
        .DOB(rd20[21:20]),
        .DOC(rd20[23:22]),
        .DOD(NLW_mem_reg_r2_0_15_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(RegWrite));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "dp/rf/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M_HD83 mem_reg_r2_0_15_24_29
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,ADDRD}),
        .DIA(Result_OBUF[25:24]),
        .DIB(Result_OBUF[27:26]),
        .DIC(Result_OBUF[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[25:24]),
        .DOB(rd20[27:26]),
        .DOC(rd20[29:28]),
        .DOD(NLW_mem_reg_r2_0_15_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(RegWrite));
  (* INIT = "32'h00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "dp/rf/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D_HD84 mem_reg_r2_0_15_30_31
       (.A0(ADDRD[0]),
        .A1(ADDRD[1]),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(1'b0),
        .D(Result_OBUF[30]),
        .DPO(rd20[30]),
        .DPRA0(ADDRA[0]),
        .DPRA1(ADDRA[1]),
        .DPRA2(ADDRA[2]),
        .DPRA3(ADDRA[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_r2_0_15_30_31_SPO_UNCONNECTED),
        .WCLK(clk_IBUF_BUFG),
        .WE(RegWrite));
  (* INIT = "32'h00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "dp/rf/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D_HD85 mem_reg_r2_0_15_30_31__0
       (.A0(ADDRD[0]),
        .A1(ADDRD[1]),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(1'b0),
        .D(Result_OBUF[31]),
        .DPO(rd20[31]),
        .DPRA0(ADDRA[0]),
        .DPRA1(ADDRA[1]),
        .DPRA2(ADDRA[2]),
        .DPRA3(ADDRA[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_r2_0_15_30_31__0_SPO_UNCONNECTED),
        .WCLK(clk_IBUF_BUFG),
        .WE(RegWrite));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "dp/rf/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M_HD86 mem_reg_r2_0_15_6_11
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,ADDRD}),
        .DIA(Result_OBUF[7:6]),
        .DIB(Result_OBUF[9:8]),
        .DIC(Result_OBUF[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[7:6]),
        .DOB(rd20[9:8]),
        .DOC(rd20[11:10]),
        .DOD(NLW_mem_reg_r2_0_15_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(RegWrite));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
