// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Apr  1 11:41:28 2022
// Host        : vaggospetr-pc running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/User/arm_processor/arm_processor.sim/sim_1/impl/timing/xsim/arm_tb_time_impl.v
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

module RAM32M_HD333
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

module RAM32M_HD334
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

module RAM32M_HD335
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

module RAM32M_HD337
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

module RAM32M_HD338
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

module RAM32M_HD339
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

module RAM32M_HD340
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

module RAM32M_HD341
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

module RAM32M_HD344
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

module RAM32X1D_HD336
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

module RAM32X1D_HD342
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

module RAM32X1D_HD343
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

module RAM64X1S_HD302
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

module RAM64X1S_HD303
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

module RAM64X1S_HD304
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

module RAM64X1S_HD305
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

module RAM64X1S_HD306
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

module RAM64X1S_HD307
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

module RAM64X1S_HD308
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

module RAM64X1S_HD309
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

module RAM64X1S_HD310
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

module RAM64X1S_HD311
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

module RAM64X1S_HD312
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

module RAM64X1S_HD313
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

module RAM64X1S_HD314
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

module RAM64X1S_HD315
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

module RAM64X1S_HD316
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

module RAM64X1S_HD317
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

module RAM64X1S_HD318
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

module RAM64X1S_HD319
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

module RAM64X1S_HD320
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

module RAM64X1S_HD321
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

module RAM64X1S_HD322
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

module RAM64X1S_HD323
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

module RAM64X1S_HD324
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

module RAM64X1S_HD325
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

module RAM64X1S_HD326
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

module RAM64X1S_HD327
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

module RAM64X1S_HD328
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

module RAM64X1S_HD329
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

module RAM64X1S_HD330
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

module RAM64X1S_HD331
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

module RAM64X1S_HD332
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
    DI,
    \q_reg[3] ,
    \q_reg[3]_0 ,
    \q_reg[3]_1 ,
    \q_reg[3]_2 ,
    \q_reg[3]_3 ,
    \q_reg[3]_4 ,
    \q_reg[3]_5 ,
    \q_reg[3]_6 ,
    \q_reg[3]_7 ,
    \q_reg[3]_8 ,
    \q_reg[3]_9 ,
    \q_reg[3]_10 ,
    \q_reg[3]_11 ,
    \q_reg[3]_12 ,
    \q_reg[3]_13 ,
    d1,
    S,
    \WriteData[5] ,
    rd20,
    \ALUResult_OBUF[8]_inst_i_2 ,
    rd10,
    \ALUResult_OBUF[4]_inst_i_3 );
  output [30:0]r15;
  output [21:0]wd;
  output [27:0]SrcA;
  output [2:0]DI;
  output [1:0]\q_reg[3] ;
  output [3:0]\q_reg[3]_0 ;
  output [3:0]\q_reg[3]_1 ;
  output [3:0]\q_reg[3]_2 ;
  output [3:0]\q_reg[3]_3 ;
  output [3:0]\q_reg[3]_4 ;
  output [0:0]\q_reg[3]_5 ;
  output [2:0]\q_reg[3]_6 ;
  output [1:0]\q_reg[3]_7 ;
  output [3:0]\q_reg[3]_8 ;
  output [3:0]\q_reg[3]_9 ;
  output [3:0]\q_reg[3]_10 ;
  output [3:0]\q_reg[3]_11 ;
  output [3:0]\q_reg[3]_12 ;
  output [1:0]\q_reg[3]_13 ;
  input [30:0]d1;
  input [0:0]S;
  input \WriteData[5] ;
  input [21:0]rd20;
  input \ALUResult_OBUF[8]_inst_i_2 ;
  input [28:0]rd10;
  input \ALUResult_OBUF[4]_inst_i_3 ;

  wire \ALUResult_OBUF[4]_inst_i_3 ;
  wire \ALUResult_OBUF[8]_inst_i_2 ;
  wire [2:0]DI;
  wire [0:0]S;
  wire [27:0]SrcA;
  wire \WriteData[5] ;
  wire [30:0]d1;
  wire [1:0]\q_reg[3] ;
  wire [3:0]\q_reg[3]_0 ;
  wire [3:0]\q_reg[3]_1 ;
  wire [3:0]\q_reg[3]_10 ;
  wire [3:0]\q_reg[3]_11 ;
  wire [3:0]\q_reg[3]_12 ;
  wire [1:0]\q_reg[3]_13 ;
  wire [3:0]\q_reg[3]_2 ;
  wire [3:0]\q_reg[3]_3 ;
  wire [3:0]\q_reg[3]_4 ;
  wire [0:0]\q_reg[3]_5 ;
  wire [2:0]\q_reg[3]_6 ;
  wire [1:0]\q_reg[3]_7 ;
  wire [3:0]\q_reg[3]_8 ;
  wire [3:0]\q_reg[3]_9 ;
  wire [30:0]r15;
  wire [28:0]rd10;
  wire [21:0]rd20;
  wire [21:0]wd;
  wire y0_carry__0_n_0;
  wire y0_carry__1_n_0;
  wire y0_carry__2_n_0;
  wire y0_carry__3_n_0;
  wire y0_carry__4_n_0;
  wire y0_carry__5_n_0;
  wire y0_carry_n_0;
  wire [2:0]NLW_y0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_y0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_y0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_y0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_y0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_y0_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_y0_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_y0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_y0_carry__6_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[10]_inst_i_4 
       (.I0(r15[9]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[9]),
        .O(SrcA[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[11]_inst_i_4 
       (.I0(r15[10]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[10]),
        .O(SrcA[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[12]_inst_i_4 
       (.I0(r15[11]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[11]),
        .O(SrcA[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[13]_inst_i_4 
       (.I0(r15[12]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[12]),
        .O(SrcA[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[14]_inst_i_4 
       (.I0(r15[13]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[13]),
        .O(SrcA[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[15]_inst_i_4 
       (.I0(r15[14]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[14]),
        .O(SrcA[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[16]_inst_i_4 
       (.I0(r15[15]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[15]),
        .O(SrcA[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[17]_inst_i_4 
       (.I0(r15[16]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[16]),
        .O(SrcA[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[18]_inst_i_4 
       (.I0(r15[17]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[17]),
        .O(SrcA[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[19]_inst_i_4 
       (.I0(r15[18]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[18]),
        .O(SrcA[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[1]_inst_i_4 
       (.I0(r15[0]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[0]),
        .O(SrcA[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[20]_inst_i_4 
       (.I0(r15[19]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[19]),
        .O(SrcA[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[21]_inst_i_4 
       (.I0(r15[20]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[20]),
        .O(SrcA[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[22]_inst_i_4 
       (.I0(r15[21]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[21]),
        .O(SrcA[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[23]_inst_i_4 
       (.I0(r15[22]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[22]),
        .O(SrcA[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[24]_inst_i_4 
       (.I0(r15[23]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[23]),
        .O(SrcA[23]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[25]_inst_i_4 
       (.I0(r15[24]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[24]),
        .O(SrcA[24]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[26]_inst_i_4 
       (.I0(r15[25]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[25]),
        .O(SrcA[25]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[27]_inst_i_4 
       (.I0(r15[26]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[26]),
        .O(SrcA[26]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[28]_inst_i_4 
       (.I0(r15[27]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[27]),
        .O(SrcA[27]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[2]_inst_i_4 
       (.I0(r15[1]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[1]),
        .O(SrcA[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[3]_inst_i_4 
       (.I0(r15[2]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[2]),
        .O(SrcA[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[4]_inst_i_4 
       (.I0(r15[3]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[3]),
        .O(SrcA[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[7]_inst_i_4 
       (.I0(r15[6]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[6]),
        .O(SrcA[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[8]_inst_i_4 
       (.I0(r15[7]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[7]),
        .O(SrcA[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[9]_inst_i_4 
       (.I0(r15[8]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[8]),
        .O(SrcA[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__0_i_1
       (.I0(r15[6]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[6]),
        .O(\q_reg[3] [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__0_i_2
       (.I0(r15[5]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[5]),
        .O(SrcA[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__0_i_3
       (.I0(r15[4]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[4]),
        .O(SrcA[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__0_i_4
       (.I0(r15[3]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[3]),
        .O(\q_reg[3] [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__1_i_1
       (.I0(r15[10]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[10]),
        .O(\q_reg[3]_0 [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__1_i_2
       (.I0(r15[9]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[9]),
        .O(\q_reg[3]_0 [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__1_i_3
       (.I0(r15[8]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[8]),
        .O(\q_reg[3]_0 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__1_i_4
       (.I0(r15[7]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[7]),
        .O(\q_reg[3]_0 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__2_i_1
       (.I0(r15[14]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[14]),
        .O(\q_reg[3]_1 [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__2_i_2
       (.I0(r15[13]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[13]),
        .O(\q_reg[3]_1 [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__2_i_3
       (.I0(r15[12]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[12]),
        .O(\q_reg[3]_1 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__2_i_4
       (.I0(r15[11]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[11]),
        .O(\q_reg[3]_1 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__3_i_1
       (.I0(r15[18]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[18]),
        .O(\q_reg[3]_2 [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__3_i_2
       (.I0(r15[17]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[17]),
        .O(\q_reg[3]_2 [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__3_i_3
       (.I0(r15[16]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[16]),
        .O(\q_reg[3]_2 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__3_i_4
       (.I0(r15[15]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[15]),
        .O(\q_reg[3]_2 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__4_i_1
       (.I0(r15[22]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[22]),
        .O(\q_reg[3]_3 [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__4_i_2
       (.I0(r15[21]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[21]),
        .O(\q_reg[3]_3 [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__4_i_3
       (.I0(r15[20]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[20]),
        .O(\q_reg[3]_3 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__4_i_4
       (.I0(r15[19]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[19]),
        .O(\q_reg[3]_3 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__5_i_1
       (.I0(r15[26]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[26]),
        .O(\q_reg[3]_4 [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__5_i_2
       (.I0(r15[25]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[25]),
        .O(\q_reg[3]_4 [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__5_i_3
       (.I0(r15[24]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[24]),
        .O(\q_reg[3]_4 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__5_i_4
       (.I0(r15[23]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[23]),
        .O(\q_reg[3]_4 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__6_i_4
       (.I0(r15[27]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[27]),
        .O(\q_reg[3]_5 ));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry_i_1
       (.I0(r15[2]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[2]),
        .O(DI[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry_i_2
       (.I0(r15[1]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[1]),
        .O(DI[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry_i_3
       (.I0(r15[0]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[0]),
        .O(DI[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[10]_inst_i_1 
       (.I0(r15[9]),
        .I1(\WriteData[5] ),
        .I2(rd20[8]),
        .O(wd[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[11]_inst_i_1 
       (.I0(r15[10]),
        .I1(\WriteData[5] ),
        .I2(rd20[9]),
        .O(wd[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[12]_inst_i_1 
       (.I0(r15[11]),
        .I1(\WriteData[5] ),
        .I2(rd20[10]),
        .O(wd[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[13]_inst_i_1 
       (.I0(r15[12]),
        .I1(\WriteData[5] ),
        .I2(rd20[11]),
        .O(wd[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[14]_inst_i_1 
       (.I0(r15[13]),
        .I1(\WriteData[5] ),
        .I2(rd20[12]),
        .O(wd[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[15]_inst_i_1 
       (.I0(r15[14]),
        .I1(\WriteData[5] ),
        .I2(rd20[13]),
        .O(wd[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[16]_inst_i_1 
       (.I0(r15[15]),
        .I1(\WriteData[5] ),
        .I2(rd20[14]),
        .O(wd[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[17]_inst_i_1 
       (.I0(r15[16]),
        .I1(\WriteData[5] ),
        .I2(rd20[15]),
        .O(wd[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[18]_inst_i_1 
       (.I0(r15[17]),
        .I1(\WriteData[5] ),
        .I2(rd20[16]),
        .O(wd[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[19]_inst_i_1 
       (.I0(r15[18]),
        .I1(\WriteData[5] ),
        .I2(rd20[17]),
        .O(wd[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[1]_inst_i_1 
       (.I0(r15[0]),
        .I1(\WriteData[5] ),
        .I2(rd20[0]),
        .O(wd[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[21]_inst_i_1 
       (.I0(r15[20]),
        .I1(\WriteData[5] ),
        .I2(rd20[18]),
        .O(wd[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[22]_inst_i_1 
       (.I0(r15[21]),
        .I1(\WriteData[5] ),
        .I2(rd20[19]),
        .O(wd[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[23]_inst_i_1 
       (.I0(r15[22]),
        .I1(\WriteData[5] ),
        .I2(rd20[20]),
        .O(wd[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[27]_inst_i_1 
       (.I0(r15[26]),
        .I1(\WriteData[5] ),
        .I2(rd20[21]),
        .O(wd[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[2]_inst_i_1 
       (.I0(r15[1]),
        .I1(\WriteData[5] ),
        .I2(rd20[1]),
        .O(wd[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[3]_inst_i_1 
       (.I0(r15[2]),
        .I1(\WriteData[5] ),
        .I2(rd20[2]),
        .O(wd[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[5]_inst_i_1 
       (.I0(r15[4]),
        .I1(\WriteData[5] ),
        .I2(rd20[3]),
        .O(wd[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[6]_inst_i_1 
       (.I0(r15[5]),
        .I1(\WriteData[5] ),
        .I2(rd20[4]),
        .O(wd[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[7]_inst_i_1 
       (.I0(r15[6]),
        .I1(\WriteData[5] ),
        .I2(rd20[5]),
        .O(wd[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[8]_inst_i_1 
       (.I0(r15[7]),
        .I1(\WriteData[5] ),
        .I2(rd20[6]),
        .O(wd[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[9]_inst_i_1 
       (.I0(r15[8]),
        .I1(\WriteData[5] ),
        .I2(rd20[7]),
        .O(wd[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_1
       (.I0(r15[6]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[6]),
        .O(\q_reg[3]_7 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_2
       (.I0(r15[3]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[3]),
        .O(\q_reg[3]_7 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__1_i_1
       (.I0(r15[10]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[10]),
        .O(\q_reg[3]_8 [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__1_i_2
       (.I0(r15[9]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[9]),
        .O(\q_reg[3]_8 [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__1_i_3
       (.I0(r15[8]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[8]),
        .O(\q_reg[3]_8 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__1_i_4
       (.I0(r15[7]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[7]),
        .O(\q_reg[3]_8 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__2_i_1
       (.I0(r15[14]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[14]),
        .O(\q_reg[3]_9 [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__2_i_2
       (.I0(r15[13]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[13]),
        .O(\q_reg[3]_9 [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__2_i_3
       (.I0(r15[12]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[12]),
        .O(\q_reg[3]_9 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__2_i_4
       (.I0(r15[11]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[11]),
        .O(\q_reg[3]_9 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__3_i_1
       (.I0(r15[18]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[18]),
        .O(\q_reg[3]_10 [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__3_i_2
       (.I0(r15[17]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[17]),
        .O(\q_reg[3]_10 [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__3_i_3
       (.I0(r15[16]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[16]),
        .O(\q_reg[3]_10 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__3_i_4
       (.I0(r15[15]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[15]),
        .O(\q_reg[3]_10 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__4_i_1
       (.I0(r15[22]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[22]),
        .O(\q_reg[3]_11 [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__4_i_2
       (.I0(r15[21]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[21]),
        .O(\q_reg[3]_11 [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__4_i_3
       (.I0(r15[20]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[20]),
        .O(\q_reg[3]_11 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__4_i_4
       (.I0(r15[19]),
        .I1(\ALUResult_OBUF[4]_inst_i_3 ),
        .I2(rd10[19]),
        .O(\q_reg[3]_11 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__5_i_1
       (.I0(r15[26]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[26]),
        .O(\q_reg[3]_12 [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__5_i_2
       (.I0(r15[25]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[25]),
        .O(\q_reg[3]_12 [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__5_i_3
       (.I0(r15[24]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[24]),
        .O(\q_reg[3]_12 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__5_i_4
       (.I0(r15[23]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[23]),
        .O(\q_reg[3]_12 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__6_i_3
       (.I0(r15[28]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[28]),
        .O(\q_reg[3]_13 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__6_i_4
       (.I0(r15[27]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[27]),
        .O(\q_reg[3]_13 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_1
       (.I0(r15[2]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[2]),
        .O(\q_reg[3]_6 [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_2
       (.I0(r15[1]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[1]),
        .O(\q_reg[3]_6 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_3
       (.I0(r15[0]),
        .I1(\ALUResult_OBUF[8]_inst_i_2 ),
        .I2(rd10[0]),
        .O(\q_reg[3]_6 [0]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 y0_carry
       (.CI(1'b0),
        .CO({y0_carry_n_0,NLW_y0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,d1[1],1'b0}),
        .O(r15[3:0]),
        .S({d1[3:2],S,d1[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 y0_carry__0
       (.CI(y0_carry_n_0),
        .CO({y0_carry__0_n_0,NLW_y0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r15[7:4]),
        .S(d1[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 y0_carry__1
       (.CI(y0_carry__0_n_0),
        .CO({y0_carry__1_n_0,NLW_y0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r15[11:8]),
        .S(d1[11:8]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 y0_carry__2
       (.CI(y0_carry__1_n_0),
        .CO({y0_carry__2_n_0,NLW_y0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r15[15:12]),
        .S(d1[15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 y0_carry__3
       (.CI(y0_carry__2_n_0),
        .CO({y0_carry__3_n_0,NLW_y0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r15[19:16]),
        .S(d1[19:16]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 y0_carry__4
       (.CI(y0_carry__3_n_0),
        .CO({y0_carry__4_n_0,NLW_y0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r15[23:20]),
        .S(d1[23:20]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 y0_carry__5
       (.CI(y0_carry__4_n_0),
        .CO({y0_carry__5_n_0,NLW_y0_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r15[27:24]),
        .S(d1[27:24]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 y0_carry__6
       (.CI(y0_carry__5_n_0),
        .CO(NLW_y0_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_y0_carry__6_O_UNCONNECTED[3],r15[30:28]}),
        .S({1'b0,d1[30:28]}));
endmodule

module alu
   (Result0_carry__6_i_8,
    CO,
    i__carry__6_i_8,
    i__carry__6_i_8_0,
    p_0_in,
    ALUFlags,
    \q_reg[7] ,
    DI,
    S,
    \ALUResult_OBUF[4]_inst_i_2 ,
    \ALUResult_OBUF[4]_inst_i_2_0 ,
    \ALUResult_OBUF[8]_inst_i_2 ,
    \ALUResult_OBUF[8]_inst_i_2_0 ,
    \ALUResult_OBUF[12]_inst_i_2 ,
    \ALUResult_OBUF[12]_inst_i_2_0 ,
    \ALUResult_OBUF[16]_inst_i_2 ,
    \ALUResult_OBUF[16]_inst_i_2_0 ,
    \ALUResult_OBUF[20]_inst_i_2 ,
    \ALUResult_OBUF[20]_inst_i_2_0 ,
    \ALUResult_OBUF[24]_inst_i_2 ,
    \ALUResult_OBUF[24]_inst_i_2_0 ,
    \ALUResult_OBUF[28]_inst_i_2 ,
    \ALUResult_OBUF[28]_inst_i_2_0 ,
    \ALUResult_OBUF[0]_inst_i_2 ,
    \ALUResult_OBUF[0]_inst_i_2_0 ,
    \ALUResult_OBUF[4]_inst_i_2_1 ,
    \ALUResult_OBUF[4]_inst_i_2_2 ,
    \ALUResult_OBUF[8]_inst_i_2_1 ,
    \ALUResult_OBUF[8]_inst_i_2_2 ,
    \ALUResult_OBUF[12]_inst_i_2_1 ,
    \ALUResult_OBUF[12]_inst_i_2_2 ,
    \ALUResult_OBUF[16]_inst_i_2_1 ,
    \ALUResult_OBUF[16]_inst_i_2_2 ,
    \ALUResult_OBUF[20]_inst_i_2_1 ,
    \ALUResult_OBUF[20]_inst_i_2_2 ,
    \ALUResult_OBUF[24]_inst_i_2_1 ,
    \ALUResult_OBUF[24]_inst_i_2_2 ,
    \ALUResult_OBUF[28]_inst_i_2_1 ,
    \ALUResult_OBUF[28]_inst_i_2_2 ,
    \ALUResult[7] ,
    \ALUResult[7]_0 ,
    aD2M4dsP,
    SrcA,
    \q_reg[0] ,
    \q_reg[0]_0 ,
    \q_reg[0]_1 ,
    \q_reg[0]_2 ,
    \q_reg[0]_3 );
  output [30:0]Result0_carry__6_i_8;
  output [0:0]CO;
  output [30:0]i__carry__6_i_8;
  output [0:0]i__carry__6_i_8_0;
  output [0:0]p_0_in;
  output [0:0]ALUFlags;
  output \q_reg[7] ;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]\ALUResult_OBUF[4]_inst_i_2 ;
  input [3:0]\ALUResult_OBUF[4]_inst_i_2_0 ;
  input [3:0]\ALUResult_OBUF[8]_inst_i_2 ;
  input [3:0]\ALUResult_OBUF[8]_inst_i_2_0 ;
  input [3:0]\ALUResult_OBUF[12]_inst_i_2 ;
  input [3:0]\ALUResult_OBUF[12]_inst_i_2_0 ;
  input [3:0]\ALUResult_OBUF[16]_inst_i_2 ;
  input [3:0]\ALUResult_OBUF[16]_inst_i_2_0 ;
  input [3:0]\ALUResult_OBUF[20]_inst_i_2 ;
  input [3:0]\ALUResult_OBUF[20]_inst_i_2_0 ;
  input [3:0]\ALUResult_OBUF[24]_inst_i_2 ;
  input [3:0]\ALUResult_OBUF[24]_inst_i_2_0 ;
  input [3:0]\ALUResult_OBUF[28]_inst_i_2 ;
  input [3:0]\ALUResult_OBUF[28]_inst_i_2_0 ;
  input [3:0]\ALUResult_OBUF[0]_inst_i_2 ;
  input [3:0]\ALUResult_OBUF[0]_inst_i_2_0 ;
  input [1:0]\ALUResult_OBUF[4]_inst_i_2_1 ;
  input [3:0]\ALUResult_OBUF[4]_inst_i_2_2 ;
  input [3:0]\ALUResult_OBUF[8]_inst_i_2_1 ;
  input [3:0]\ALUResult_OBUF[8]_inst_i_2_2 ;
  input [3:0]\ALUResult_OBUF[12]_inst_i_2_1 ;
  input [3:0]\ALUResult_OBUF[12]_inst_i_2_2 ;
  input [3:0]\ALUResult_OBUF[16]_inst_i_2_1 ;
  input [3:0]\ALUResult_OBUF[16]_inst_i_2_2 ;
  input [3:0]\ALUResult_OBUF[20]_inst_i_2_1 ;
  input [3:0]\ALUResult_OBUF[20]_inst_i_2_2 ;
  input [3:0]\ALUResult_OBUF[24]_inst_i_2_1 ;
  input [3:0]\ALUResult_OBUF[24]_inst_i_2_2 ;
  input [3:0]\ALUResult_OBUF[28]_inst_i_2_1 ;
  input [3:0]\ALUResult_OBUF[28]_inst_i_2_2 ;
  input \ALUResult[7] ;
  input \ALUResult[7]_0 ;
  input [0:0]aD2M4dsP;
  input [0:0]SrcA;
  input \q_reg[0] ;
  input \q_reg[0]_0 ;
  input [0:0]\q_reg[0]_1 ;
  input [0:0]\q_reg[0]_2 ;
  input \q_reg[0]_3 ;

  wire [0:0]ALUFlags;
  wire \ALUResult[7] ;
  wire \ALUResult[7]_0 ;
  wire [3:0]\ALUResult_OBUF[0]_inst_i_2 ;
  wire [3:0]\ALUResult_OBUF[0]_inst_i_2_0 ;
  wire [3:0]\ALUResult_OBUF[12]_inst_i_2 ;
  wire [3:0]\ALUResult_OBUF[12]_inst_i_2_0 ;
  wire [3:0]\ALUResult_OBUF[12]_inst_i_2_1 ;
  wire [3:0]\ALUResult_OBUF[12]_inst_i_2_2 ;
  wire [3:0]\ALUResult_OBUF[16]_inst_i_2 ;
  wire [3:0]\ALUResult_OBUF[16]_inst_i_2_0 ;
  wire [3:0]\ALUResult_OBUF[16]_inst_i_2_1 ;
  wire [3:0]\ALUResult_OBUF[16]_inst_i_2_2 ;
  wire [3:0]\ALUResult_OBUF[20]_inst_i_2 ;
  wire [3:0]\ALUResult_OBUF[20]_inst_i_2_0 ;
  wire [3:0]\ALUResult_OBUF[20]_inst_i_2_1 ;
  wire [3:0]\ALUResult_OBUF[20]_inst_i_2_2 ;
  wire [3:0]\ALUResult_OBUF[24]_inst_i_2 ;
  wire [3:0]\ALUResult_OBUF[24]_inst_i_2_0 ;
  wire [3:0]\ALUResult_OBUF[24]_inst_i_2_1 ;
  wire [3:0]\ALUResult_OBUF[24]_inst_i_2_2 ;
  wire [3:0]\ALUResult_OBUF[28]_inst_i_2 ;
  wire [3:0]\ALUResult_OBUF[28]_inst_i_2_0 ;
  wire [3:0]\ALUResult_OBUF[28]_inst_i_2_1 ;
  wire [3:0]\ALUResult_OBUF[28]_inst_i_2_2 ;
  wire [3:0]\ALUResult_OBUF[4]_inst_i_2 ;
  wire [3:0]\ALUResult_OBUF[4]_inst_i_2_0 ;
  wire [1:0]\ALUResult_OBUF[4]_inst_i_2_1 ;
  wire [3:0]\ALUResult_OBUF[4]_inst_i_2_2 ;
  wire \ALUResult_OBUF[7]_inst_i_2_n_0 ;
  wire [3:0]\ALUResult_OBUF[8]_inst_i_2 ;
  wire [3:0]\ALUResult_OBUF[8]_inst_i_2_0 ;
  wire [3:0]\ALUResult_OBUF[8]_inst_i_2_1 ;
  wire [3:0]\ALUResult_OBUF[8]_inst_i_2_2 ;
  wire [0:0]CO;
  wire [3:0]DI;
  wire Result0_carry__0_n_0;
  wire Result0_carry__1_n_0;
  wire Result0_carry__2_n_0;
  wire Result0_carry__3_n_0;
  wire Result0_carry__4_n_0;
  wire Result0_carry__5_n_0;
  wire [30:0]Result0_carry__6_i_8;
  wire Result0_carry_n_0;
  wire \Result0_inferred__0/i__carry__0_n_0 ;
  wire \Result0_inferred__0/i__carry__1_n_0 ;
  wire \Result0_inferred__0/i__carry__2_n_0 ;
  wire \Result0_inferred__0/i__carry__3_n_0 ;
  wire \Result0_inferred__0/i__carry__4_n_0 ;
  wire \Result0_inferred__0/i__carry__5_n_0 ;
  wire \Result0_inferred__0/i__carry_n_0 ;
  wire [3:0]S;
  wire [0:0]SrcA;
  wire [0:0]aD2M4dsP;
  wire [30:0]i__carry__6_i_8;
  wire [0:0]i__carry__6_i_8_0;
  wire [0:0]p_0_in;
  wire [7:7]p_0_in_0;
  wire [7:7]p_2_in;
  wire \q[0]_i_10_n_0 ;
  wire \q[0]_i_11_n_0 ;
  wire \q[0]_i_12_n_0 ;
  wire \q[0]_i_13_n_0 ;
  wire \q[0]_i_37_n_0 ;
  wire \q[0]_i_38_n_0 ;
  wire \q[0]_i_39_n_0 ;
  wire \q[0]_i_40_n_0 ;
  wire \q[0]_i_41_n_0 ;
  wire \q[0]_i_42_n_0 ;
  wire \q[0]_i_43_n_0 ;
  wire \q[0]_i_44_n_0 ;
  wire \q[0]_i_94_n_0 ;
  wire \q[0]_i_95_n_0 ;
  wire \q[0]_i_96_n_0 ;
  wire \q[0]_i_97_n_0 ;
  wire \q_reg[0] ;
  wire \q_reg[0]_0 ;
  wire [0:0]\q_reg[0]_1 ;
  wire [0:0]\q_reg[0]_2 ;
  wire \q_reg[0]_3 ;
  wire \q_reg[7] ;
  wire [2:0]NLW_Result0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_Result0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_Result0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_Result0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_Result0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_Result0_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_Result0_carry__5_CO_UNCONNECTED;
  wire [2:0]NLW_Result0_carry__6_CO_UNCONNECTED;
  wire [2:0]\NLW_Result0_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [2:0]\NLW_Result0_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_Result0_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_Result0_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [2:0]\NLW_Result0_inferred__0/i__carry__3_CO_UNCONNECTED ;
  wire [2:0]\NLW_Result0_inferred__0/i__carry__4_CO_UNCONNECTED ;
  wire [2:0]\NLW_Result0_inferred__0/i__carry__5_CO_UNCONNECTED ;
  wire [2:0]\NLW_Result0_inferred__0/i__carry__6_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hE0)) 
    \ALUResult_OBUF[7]_inst_i_1 
       (.I0(\ALUResult_OBUF[7]_inst_i_2_n_0 ),
        .I1(\ALUResult[7] ),
        .I2(\ALUResult[7]_0 ),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'hFF0F0F00CCCCAAAA)) 
    \ALUResult_OBUF[7]_inst_i_2 
       (.I0(p_0_in_0),
        .I1(p_2_in),
        .I2(aD2M4dsP),
        .I3(SrcA),
        .I4(\q_reg[0] ),
        .I5(\q_reg[0]_0 ),
        .O(\ALUResult_OBUF[7]_inst_i_2_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 Result0_carry
       (.CI(1'b0),
        .CO({Result0_carry_n_0,NLW_Result0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(Result0_carry__6_i_8[3:0]),
        .S(S));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 Result0_carry__0
       (.CI(Result0_carry_n_0),
        .CO({Result0_carry__0_n_0,NLW_Result0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\ALUResult_OBUF[4]_inst_i_2 ),
        .O({p_0_in_0,Result0_carry__6_i_8[6:4]}),
        .S(\ALUResult_OBUF[4]_inst_i_2_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 Result0_carry__1
       (.CI(Result0_carry__0_n_0),
        .CO({Result0_carry__1_n_0,NLW_Result0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\ALUResult_OBUF[8]_inst_i_2 ),
        .O(Result0_carry__6_i_8[10:7]),
        .S(\ALUResult_OBUF[8]_inst_i_2_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 Result0_carry__2
       (.CI(Result0_carry__1_n_0),
        .CO({Result0_carry__2_n_0,NLW_Result0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\ALUResult_OBUF[12]_inst_i_2 ),
        .O(Result0_carry__6_i_8[14:11]),
        .S(\ALUResult_OBUF[12]_inst_i_2_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 Result0_carry__3
       (.CI(Result0_carry__2_n_0),
        .CO({Result0_carry__3_n_0,NLW_Result0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\ALUResult_OBUF[16]_inst_i_2 ),
        .O(Result0_carry__6_i_8[18:15]),
        .S(\ALUResult_OBUF[16]_inst_i_2_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 Result0_carry__4
       (.CI(Result0_carry__3_n_0),
        .CO({Result0_carry__4_n_0,NLW_Result0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\ALUResult_OBUF[20]_inst_i_2 ),
        .O(Result0_carry__6_i_8[22:19]),
        .S(\ALUResult_OBUF[20]_inst_i_2_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 Result0_carry__5
       (.CI(Result0_carry__4_n_0),
        .CO({Result0_carry__5_n_0,NLW_Result0_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\ALUResult_OBUF[24]_inst_i_2 ),
        .O(Result0_carry__6_i_8[26:23]),
        .S(\ALUResult_OBUF[24]_inst_i_2_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 Result0_carry__6
       (.CI(Result0_carry__5_n_0),
        .CO({CO,NLW_Result0_carry__6_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\ALUResult_OBUF[28]_inst_i_2 ),
        .O(Result0_carry__6_i_8[30:27]),
        .S(\ALUResult_OBUF[28]_inst_i_2_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \Result0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\Result0_inferred__0/i__carry_n_0 ,\NLW_Result0_inferred__0/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI(\ALUResult_OBUF[0]_inst_i_2 ),
        .O(i__carry__6_i_8[3:0]),
        .S(\ALUResult_OBUF[0]_inst_i_2_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \Result0_inferred__0/i__carry__0 
       (.CI(\Result0_inferred__0/i__carry_n_0 ),
        .CO({\Result0_inferred__0/i__carry__0_n_0 ,\NLW_Result0_inferred__0/i__carry__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\ALUResult_OBUF[4]_inst_i_2_1 [1],\ALUResult_OBUF[4]_inst_i_2 [2:1],\ALUResult_OBUF[4]_inst_i_2_1 [0]}),
        .O({p_2_in,i__carry__6_i_8[6:4]}),
        .S(\ALUResult_OBUF[4]_inst_i_2_2 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \Result0_inferred__0/i__carry__1 
       (.CI(\Result0_inferred__0/i__carry__0_n_0 ),
        .CO({\Result0_inferred__0/i__carry__1_n_0 ,\NLW_Result0_inferred__0/i__carry__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\ALUResult_OBUF[8]_inst_i_2_1 ),
        .O(i__carry__6_i_8[10:7]),
        .S(\ALUResult_OBUF[8]_inst_i_2_2 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \Result0_inferred__0/i__carry__2 
       (.CI(\Result0_inferred__0/i__carry__1_n_0 ),
        .CO({\Result0_inferred__0/i__carry__2_n_0 ,\NLW_Result0_inferred__0/i__carry__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\ALUResult_OBUF[12]_inst_i_2_1 ),
        .O(i__carry__6_i_8[14:11]),
        .S(\ALUResult_OBUF[12]_inst_i_2_2 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \Result0_inferred__0/i__carry__3 
       (.CI(\Result0_inferred__0/i__carry__2_n_0 ),
        .CO({\Result0_inferred__0/i__carry__3_n_0 ,\NLW_Result0_inferred__0/i__carry__3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\ALUResult_OBUF[16]_inst_i_2_1 ),
        .O(i__carry__6_i_8[18:15]),
        .S(\ALUResult_OBUF[16]_inst_i_2_2 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \Result0_inferred__0/i__carry__4 
       (.CI(\Result0_inferred__0/i__carry__3_n_0 ),
        .CO({\Result0_inferred__0/i__carry__4_n_0 ,\NLW_Result0_inferred__0/i__carry__4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\ALUResult_OBUF[20]_inst_i_2_1 ),
        .O(i__carry__6_i_8[22:19]),
        .S(\ALUResult_OBUF[20]_inst_i_2_2 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \Result0_inferred__0/i__carry__5 
       (.CI(\Result0_inferred__0/i__carry__4_n_0 ),
        .CO({\Result0_inferred__0/i__carry__5_n_0 ,\NLW_Result0_inferred__0/i__carry__5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\ALUResult_OBUF[24]_inst_i_2_1 ),
        .O(i__carry__6_i_8[26:23]),
        .S(\ALUResult_OBUF[24]_inst_i_2_2 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \Result0_inferred__0/i__carry__6 
       (.CI(\Result0_inferred__0/i__carry__5_n_0 ),
        .CO({i__carry__6_i_8_0,\NLW_Result0_inferred__0/i__carry__6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\ALUResult_OBUF[28]_inst_i_2_1 ),
        .O(i__carry__6_i_8[30:27]),
        .S(\ALUResult_OBUF[28]_inst_i_2_2 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \q[0]_i_10 
       (.I0(\q[0]_i_37_n_0 ),
        .I1(Result0_carry__6_i_8[3]),
        .I2(Result0_carry__6_i_8[1]),
        .I3(Result0_carry__6_i_8[5]),
        .I4(Result0_carry__6_i_8[4]),
        .I5(\q[0]_i_38_n_0 ),
        .O(\q[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \q[0]_i_11 
       (.I0(\q[0]_i_39_n_0 ),
        .I1(Result0_carry__6_i_8[2]),
        .I2(Result0_carry__6_i_8[0]),
        .I3(Result0_carry__6_i_8[8]),
        .I4(p_0_in_0),
        .I5(\q[0]_i_40_n_0 ),
        .O(\q[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \q[0]_i_12 
       (.I0(\q[0]_i_41_n_0 ),
        .I1(i__carry__6_i_8[2]),
        .I2(i__carry__6_i_8[0]),
        .I3(i__carry__6_i_8[4]),
        .I4(i__carry__6_i_8[3]),
        .I5(\q[0]_i_42_n_0 ),
        .O(\q[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \q[0]_i_13 
       (.I0(\q[0]_i_43_n_0 ),
        .I1(p_2_in),
        .I2(i__carry__6_i_8[1]),
        .I3(i__carry__6_i_8[13]),
        .I4(i__carry__6_i_8[10]),
        .I5(\q[0]_i_44_n_0 ),
        .O(\q[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F00F9999)) 
    \q[0]_i_2__0 
       (.I0(Result0_carry__6_i_8[30]),
        .I1(\q_reg[0]_1 ),
        .I2(i__carry__6_i_8[30]),
        .I3(\q_reg[0]_2 ),
        .I4(\q_reg[0] ),
        .I5(\q_reg[0]_3 ),
        .O(ALUFlags));
  LUT6 #(
    .INIT(64'h00000000F8080808)) 
    \q[0]_i_3 
       (.I0(\q[0]_i_10_n_0 ),
        .I1(\q[0]_i_11_n_0 ),
        .I2(\q_reg[0] ),
        .I3(\q[0]_i_12_n_0 ),
        .I4(\q[0]_i_13_n_0 ),
        .I5(\q_reg[0]_0 ),
        .O(\q_reg[7] ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[0]_i_37 
       (.I0(Result0_carry__6_i_8[11]),
        .I1(Result0_carry__6_i_8[10]),
        .I2(Result0_carry__6_i_8[7]),
        .I3(Result0_carry__6_i_8[6]),
        .O(\q[0]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \q[0]_i_38 
       (.I0(Result0_carry__6_i_8[22]),
        .I1(Result0_carry__6_i_8[24]),
        .I2(Result0_carry__6_i_8[27]),
        .I3(Result0_carry__6_i_8[29]),
        .I4(\q[0]_i_94_n_0 ),
        .O(\q[0]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[0]_i_39 
       (.I0(Result0_carry__6_i_8[16]),
        .I1(Result0_carry__6_i_8[15]),
        .I2(Result0_carry__6_i_8[12]),
        .I3(Result0_carry__6_i_8[9]),
        .O(\q[0]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \q[0]_i_40 
       (.I0(Result0_carry__6_i_8[25]),
        .I1(Result0_carry__6_i_8[26]),
        .I2(Result0_carry__6_i_8[28]),
        .I3(Result0_carry__6_i_8[30]),
        .I4(\q[0]_i_95_n_0 ),
        .O(\q[0]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[0]_i_41 
       (.I0(i__carry__6_i_8[8]),
        .I1(i__carry__6_i_8[7]),
        .I2(i__carry__6_i_8[6]),
        .I3(i__carry__6_i_8[5]),
        .O(\q[0]_i_41_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \q[0]_i_42 
       (.I0(i__carry__6_i_8[22]),
        .I1(i__carry__6_i_8[27]),
        .I2(i__carry__6_i_8[28]),
        .I3(i__carry__6_i_8[30]),
        .I4(\q[0]_i_96_n_0 ),
        .O(\q[0]_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[0]_i_43 
       (.I0(i__carry__6_i_8[17]),
        .I1(i__carry__6_i_8[16]),
        .I2(i__carry__6_i_8[15]),
        .I3(i__carry__6_i_8[14]),
        .O(\q[0]_i_43_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \q[0]_i_44 
       (.I0(i__carry__6_i_8[24]),
        .I1(i__carry__6_i_8[25]),
        .I2(i__carry__6_i_8[26]),
        .I3(i__carry__6_i_8[29]),
        .I4(\q[0]_i_97_n_0 ),
        .O(\q[0]_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[0]_i_94 
       (.I0(Result0_carry__6_i_8[21]),
        .I1(Result0_carry__6_i_8[20]),
        .I2(Result0_carry__6_i_8[14]),
        .I3(Result0_carry__6_i_8[13]),
        .O(\q[0]_i_94_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[0]_i_95 
       (.I0(Result0_carry__6_i_8[23]),
        .I1(Result0_carry__6_i_8[19]),
        .I2(Result0_carry__6_i_8[18]),
        .I3(Result0_carry__6_i_8[17]),
        .O(\q[0]_i_95_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[0]_i_96 
       (.I0(i__carry__6_i_8[18]),
        .I1(i__carry__6_i_8[12]),
        .I2(i__carry__6_i_8[11]),
        .I3(i__carry__6_i_8[9]),
        .O(\q[0]_i_96_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[0]_i_97 
       (.I0(i__carry__6_i_8[23]),
        .I1(i__carry__6_i_8[21]),
        .I2(i__carry__6_i_8[20]),
        .I3(i__carry__6_i_8[19]),
        .O(\q[0]_i_97_n_0 ));
endmodule

(* ECO_CHECKSUM = "20483517" *) 
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

  wire [0:0]ALUFlags;
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
  wire [1:1]\cl/q ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire cont_n_1;
  wire cont_n_2;
  wire cont_n_3;
  wire dp_n_156;
  wire dp_n_157;
  wire dp_n_158;
  wire dp_n_159;
  wire dp_n_161;
  wire dp_n_162;
  wire dp_n_164;
  wire reset;
  wire reset_IBUF;

initial begin
 $sdf_annotate("arm_tb_time_impl.sdf",,,,"tool_control");
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
       (.I(Instr_OBUF[27]),
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
       (.ALUFlags(ALUFlags),
        .ALUResult_OBUF(ALUResult_OBUF[31]),
        .Instr_OBUF(Instr_OBUF[20]),
        .O(dp_n_164),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .en(\cl/en ),
        .q(\cl/q ),
        .\q_reg[0] (cont_n_1),
        .\q_reg[0]_0 (cont_n_2),
        .\q_reg[0]_1 (dp_n_159),
        .\q_reg[0]_2 (dp_n_162),
        .\q_reg[0]_3 (dp_n_156),
        .\q_reg[0]_4 (dp_n_158),
        .\q_reg[0]_5 (dp_n_157),
        .\q_reg[1] (cont_n_3),
        .\q_reg[1]_0 (dp_n_161),
        .reset_IBUF(reset_IBUF));
  datapath dp
       (.ALUFlags(ALUFlags),
        .ALUResult_OBUF(ALUResult_OBUF),
        .Instr_OBUF({Instr_OBUF[31:12],Instr_OBUF[9],Instr_OBUF[7:5],Instr_OBUF[3:0]}),
        .O(dp_n_164),
        .PC(PC_OBUF),
        .Result_OBUF(Result_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .en(\cl/en ),
        .mem_reg_r1_0_15_0_5_i_15(cont_n_1),
        .mem_reg_r1_0_15_0_5_i_15_0(cont_n_3),
        .q(\cl/q ),
        .\q_reg[0] (cont_n_2),
        .\q_reg[5] (dp_n_161),
        .\q_reg[6] (dp_n_156),
        .\q_reg[6]_0 (dp_n_158),
        .\q_reg[6]_1 (dp_n_159),
        .\q_reg[7] (dp_n_157),
        .\q_reg[7]_0 (dp_n_162),
        .reset(reset_IBUF),
        .wd(WriteData_OBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
endmodule

module condlogic
   (q,
    \q_reg[0] ,
    \q_reg[0]_0 ,
    \q_reg[1] ,
    ALUResult_OBUF,
    en,
    \q_reg[0]_1 ,
    \q_reg[0]_2 ,
    \q_reg[0]_3 ,
    \q_reg[0]_4 ,
    clk_IBUF_BUFG,
    reset_IBUF,
    ALUFlags,
    Instr_OBUF,
    \q_reg[0]_5 ,
    O,
    \q_reg[1]_0 );
  output [0:0]q;
  output \q_reg[0] ;
  output \q_reg[0]_0 ;
  output \q_reg[1] ;
  input [0:0]ALUResult_OBUF;
  input en;
  input \q_reg[0]_1 ;
  input \q_reg[0]_2 ;
  input \q_reg[0]_3 ;
  input \q_reg[0]_4 ;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input [0:0]ALUFlags;
  input [0:0]Instr_OBUF;
  input \q_reg[0]_5 ;
  input [0:0]O;
  input \q_reg[1]_0 ;

  wire [0:0]ALUFlags;
  wire [0:0]ALUResult_OBUF;
  wire [0:0]Instr_OBUF;
  wire [0:0]O;
  wire clk_IBUF_BUFG;
  wire en;
  wire [0:0]q;
  wire \q_reg[0] ;
  wire \q_reg[0]_0 ;
  wire \q_reg[0]_1 ;
  wire \q_reg[0]_2 ;
  wire \q_reg[0]_3 ;
  wire \q_reg[0]_4 ;
  wire \q_reg[0]_5 ;
  wire \q_reg[1] ;
  wire \q_reg[1]_0 ;
  wire reset_IBUF;

  flopenr flagreg0
       (.ALUFlags(ALUFlags),
        .Instr_OBUF(Instr_OBUF),
        .O(O),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\q_reg[0]_0 (\q_reg[0]_0 ),
        .\q_reg[0]_1 (\q_reg[0]_5 ),
        .\q_reg[1]_0 (\q_reg[1] ),
        .\q_reg[1]_1 (\q_reg[1]_0 ),
        .reset_IBUF(reset_IBUF));
  flopenr_0 flagreg1
       (.ALUResult_OBUF(ALUResult_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .en(en),
        .q(q),
        .\q_reg[0]_0 (\q_reg[0] ),
        .\q_reg[0]_1 (\q_reg[0]_1 ),
        .\q_reg[0]_2 (\q_reg[0]_2 ),
        .\q_reg[0]_3 (\q_reg[0]_3 ),
        .\q_reg[0]_4 (\q_reg[0]_4 ),
        .reset_IBUF(reset_IBUF));
endmodule

module controller
   (q,
    \q_reg[0] ,
    \q_reg[0]_0 ,
    \q_reg[1] ,
    ALUResult_OBUF,
    en,
    \q_reg[0]_1 ,
    \q_reg[0]_2 ,
    \q_reg[0]_3 ,
    \q_reg[0]_4 ,
    clk_IBUF_BUFG,
    reset_IBUF,
    ALUFlags,
    Instr_OBUF,
    \q_reg[0]_5 ,
    O,
    \q_reg[1]_0 );
  output [0:0]q;
  output \q_reg[0] ;
  output \q_reg[0]_0 ;
  output \q_reg[1] ;
  input [0:0]ALUResult_OBUF;
  input en;
  input \q_reg[0]_1 ;
  input \q_reg[0]_2 ;
  input \q_reg[0]_3 ;
  input \q_reg[0]_4 ;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input [0:0]ALUFlags;
  input [0:0]Instr_OBUF;
  input \q_reg[0]_5 ;
  input [0:0]O;
  input \q_reg[1]_0 ;

  wire [0:0]ALUFlags;
  wire [0:0]ALUResult_OBUF;
  wire [0:0]Instr_OBUF;
  wire [0:0]O;
  wire clk_IBUF_BUFG;
  wire en;
  wire [0:0]q;
  wire \q_reg[0] ;
  wire \q_reg[0]_0 ;
  wire \q_reg[0]_1 ;
  wire \q_reg[0]_2 ;
  wire \q_reg[0]_3 ;
  wire \q_reg[0]_4 ;
  wire \q_reg[0]_5 ;
  wire \q_reg[1] ;
  wire \q_reg[1]_0 ;
  wire reset_IBUF;

  condlogic cl
       (.ALUFlags(ALUFlags),
        .ALUResult_OBUF(ALUResult_OBUF),
        .Instr_OBUF(Instr_OBUF),
        .O(O),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .en(en),
        .q(q),
        .\q_reg[0] (\q_reg[0] ),
        .\q_reg[0]_0 (\q_reg[0]_0 ),
        .\q_reg[0]_1 (\q_reg[0]_1 ),
        .\q_reg[0]_2 (\q_reg[0]_2 ),
        .\q_reg[0]_3 (\q_reg[0]_3 ),
        .\q_reg[0]_4 (\q_reg[0]_4 ),
        .\q_reg[0]_5 (\q_reg[0]_5 ),
        .\q_reg[1] (\q_reg[1] ),
        .\q_reg[1]_0 (\q_reg[1]_0 ),
        .reset_IBUF(reset_IBUF));
endmodule

module datapath
   (Instr_OBUF,
    PC,
    ALUResult_OBUF,
    wd,
    Result_OBUF,
    \q_reg[6] ,
    \q_reg[7] ,
    \q_reg[6]_0 ,
    \q_reg[6]_1 ,
    ALUFlags,
    \q_reg[5] ,
    \q_reg[7]_0 ,
    en,
    O,
    clk_IBUF_BUFG,
    reset,
    q,
    \q_reg[0] ,
    mem_reg_r1_0_15_0_5_i_15,
    mem_reg_r1_0_15_0_5_i_15_0);
  output [27:0]Instr_OBUF;
  output [31:0]PC;
  output [31:0]ALUResult_OBUF;
  output [31:0]wd;
  output [31:0]Result_OBUF;
  output \q_reg[6] ;
  output \q_reg[7] ;
  output \q_reg[6]_0 ;
  output \q_reg[6]_1 ;
  output [0:0]ALUFlags;
  output \q_reg[5] ;
  output \q_reg[7]_0 ;
  output en;
  output [0:0]O;
  input clk_IBUF_BUFG;
  input reset;
  input [0:0]q;
  input \q_reg[0] ;
  input mem_reg_r1_0_15_0_5_i_15;
  input mem_reg_r1_0_15_0_5_i_15_0;

  wire [0:0]ALUFlags;
  wire [31:0]ALUResult_OBUF;
  wire [27:0]Instr_OBUF;
  wire MemWrite;
  wire [0:0]O;
  wire [31:0]PC;
  wire [3:0]RA1;
  wire [3:0]RA2;
  wire [3:1]RA3;
  wire RegWrite;
  wire [31:0]Result_OBUF;
  wire [28:1]SrcA;
  wire [7:7]aD2M4dsP;
  wire clk_IBUF_BUFG;
  wire [31:1]d1;
  wire en;
  wire i_alu_n_31;
  wire i_alu_n_63;
  wire mem_reg_r1_0_15_0_5_i_15;
  wire mem_reg_r1_0_15_0_5_i_15_0;
  wire [31:0]p_0_in;
  wire [31:0]p_2_in;
  wire pcadd2_n_100;
  wire pcadd2_n_101;
  wire pcadd2_n_102;
  wire pcadd2_n_103;
  wire pcadd2_n_104;
  wire pcadd2_n_105;
  wire pcadd2_n_106;
  wire pcadd2_n_107;
  wire pcadd2_n_108;
  wire pcadd2_n_109;
  wire pcadd2_n_110;
  wire pcadd2_n_111;
  wire pcadd2_n_112;
  wire pcadd2_n_113;
  wire pcadd2_n_114;
  wire pcadd2_n_115;
  wire pcadd2_n_116;
  wire pcadd2_n_117;
  wire pcadd2_n_118;
  wire pcadd2_n_119;
  wire pcadd2_n_120;
  wire pcadd2_n_121;
  wire pcadd2_n_122;
  wire pcadd2_n_123;
  wire pcadd2_n_124;
  wire pcadd2_n_125;
  wire pcadd2_n_126;
  wire pcadd2_n_127;
  wire pcadd2_n_128;
  wire pcadd2_n_129;
  wire pcadd2_n_130;
  wire pcadd2_n_131;
  wire pcadd2_n_132;
  wire pcadd2_n_133;
  wire pcadd2_n_81;
  wire pcadd2_n_82;
  wire pcadd2_n_83;
  wire pcadd2_n_84;
  wire pcadd2_n_85;
  wire pcadd2_n_86;
  wire pcadd2_n_87;
  wire pcadd2_n_88;
  wire pcadd2_n_89;
  wire pcadd2_n_90;
  wire pcadd2_n_91;
  wire pcadd2_n_92;
  wire pcadd2_n_93;
  wire pcadd2_n_94;
  wire pcadd2_n_95;
  wire pcadd2_n_96;
  wire pcadd2_n_97;
  wire pcadd2_n_98;
  wire pcadd2_n_99;
  wire pcreg_n_225;
  wire pcreg_n_233;
  wire pcreg_n_272;
  wire pcreg_n_273;
  wire pcreg_n_275;
  wire pcreg_n_276;
  wire pcreg_n_277;
  wire pcreg_n_278;
  wire pcreg_n_279;
  wire pcreg_n_280;
  wire pcreg_n_281;
  wire pcreg_n_282;
  wire pcreg_n_284;
  wire pcreg_n_285;
  wire pcreg_n_286;
  wire pcreg_n_287;
  wire pcreg_n_32;
  wire pcreg_n_33;
  wire pcreg_n_34;
  wire pcreg_n_35;
  wire pcreg_n_37;
  wire pcreg_n_38;
  wire pcreg_n_39;
  wire pcreg_n_40;
  wire pcreg_n_42;
  wire pcreg_n_43;
  wire pcreg_n_44;
  wire pcreg_n_45;
  wire pcreg_n_46;
  wire pcreg_n_47;
  wire pcreg_n_48;
  wire pcreg_n_49;
  wire pcreg_n_50;
  wire pcreg_n_51;
  wire pcreg_n_52;
  wire pcreg_n_53;
  wire pcreg_n_54;
  wire pcreg_n_55;
  wire pcreg_n_56;
  wire pcreg_n_57;
  wire pcreg_n_58;
  wire pcreg_n_59;
  wire pcreg_n_60;
  wire pcreg_n_61;
  wire pcreg_n_62;
  wire pcreg_n_63;
  wire pcreg_n_64;
  wire pcreg_n_65;
  wire pcreg_n_66;
  wire pcreg_n_67;
  wire pcreg_n_68;
  wire pcreg_n_69;
  wire pcreg_n_70;
  wire pcreg_n_71;
  wire pcreg_n_72;
  wire pcreg_n_73;
  wire pcreg_n_74;
  wire pcreg_n_75;
  wire pcreg_n_76;
  wire pcreg_n_77;
  wire pcreg_n_78;
  wire pcreg_n_79;
  wire pcreg_n_80;
  wire pcreg_n_81;
  wire pcreg_n_82;
  wire pcreg_n_83;
  wire pcreg_n_84;
  wire pcreg_n_85;
  wire pcreg_n_86;
  wire pcreg_n_87;
  wire pcreg_n_89;
  wire pcreg_n_90;
  wire pcreg_n_91;
  wire pcreg_n_92;
  wire pcreg_n_93;
  wire pcreg_n_94;
  wire pcreg_n_95;
  wire pcreg_n_96;
  wire [0:0]q;
  wire \q_reg[0] ;
  wire \q_reg[5] ;
  wire \q_reg[6] ;
  wire \q_reg[6]_0 ;
  wire \q_reg[6]_1 ;
  wire \q_reg[7] ;
  wire \q_reg[7]_0 ;
  wire [31:1]r15;
  wire [31:0]rd;
  wire [31:0]rd10;
  wire [31:0]rd20;
  wire reset;
  wire rf_n_64;
  wire rf_n_71;
  wire [31:0]wd;
  wire [31:0]wd3;

  dmem d_mem
       (.MemWrite(MemWrite),
        .\Result[7] (Instr_OBUF[22]),
        .Result_OBUF(Result_OBUF[7]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .p_0_in(ALUResult_OBUF[7:2]),
        .rd(rd),
        .wd(wd));
  alu i_alu
       (.ALUFlags(ALUFlags),
        .\ALUResult[7] (\q_reg[6] ),
        .\ALUResult[7]_0 (pcreg_n_233),
        .\ALUResult_OBUF[0]_inst_i_2 ({pcadd2_n_107,pcadd2_n_108,pcadd2_n_109,pcreg_n_280}),
        .\ALUResult_OBUF[0]_inst_i_2_0 ({pcreg_n_93,pcreg_n_94,pcreg_n_95,pcreg_n_96}),
        .\ALUResult_OBUF[12]_inst_i_2 ({pcadd2_n_90,pcadd2_n_91,pcadd2_n_92,pcadd2_n_93}),
        .\ALUResult_OBUF[12]_inst_i_2_0 ({pcreg_n_60,pcreg_n_61,pcreg_n_62,pcreg_n_63}),
        .\ALUResult_OBUF[12]_inst_i_2_1 ({pcadd2_n_116,pcadd2_n_117,pcadd2_n_118,pcadd2_n_119}),
        .\ALUResult_OBUF[12]_inst_i_2_2 ({pcreg_n_56,pcreg_n_57,pcreg_n_58,pcreg_n_59}),
        .\ALUResult_OBUF[16]_inst_i_2 ({pcadd2_n_94,pcadd2_n_95,pcadd2_n_96,pcadd2_n_97}),
        .\ALUResult_OBUF[16]_inst_i_2_0 ({pcreg_n_68,pcreg_n_69,pcreg_n_70,pcreg_n_71}),
        .\ALUResult_OBUF[16]_inst_i_2_1 ({pcadd2_n_120,pcadd2_n_121,pcadd2_n_122,pcadd2_n_123}),
        .\ALUResult_OBUF[16]_inst_i_2_2 ({pcreg_n_64,pcreg_n_65,pcreg_n_66,pcreg_n_67}),
        .\ALUResult_OBUF[20]_inst_i_2 ({pcadd2_n_98,pcadd2_n_99,pcadd2_n_100,pcadd2_n_101}),
        .\ALUResult_OBUF[20]_inst_i_2_0 ({pcreg_n_284,pcreg_n_285,pcreg_n_286,pcreg_n_287}),
        .\ALUResult_OBUF[20]_inst_i_2_1 ({pcadd2_n_124,pcadd2_n_125,pcadd2_n_126,pcadd2_n_127}),
        .\ALUResult_OBUF[20]_inst_i_2_2 ({pcreg_n_72,pcreg_n_73,pcreg_n_74,pcreg_n_75}),
        .\ALUResult_OBUF[24]_inst_i_2 ({pcadd2_n_102,pcadd2_n_103,pcadd2_n_104,pcadd2_n_105}),
        .\ALUResult_OBUF[24]_inst_i_2_0 ({pcreg_n_89,pcreg_n_90,pcreg_n_91,pcreg_n_92}),
        .\ALUResult_OBUF[24]_inst_i_2_1 ({pcadd2_n_128,pcadd2_n_129,pcadd2_n_130,pcadd2_n_131}),
        .\ALUResult_OBUF[24]_inst_i_2_2 ({pcreg_n_76,pcreg_n_77,pcreg_n_78,pcreg_n_79}),
        .\ALUResult_OBUF[28]_inst_i_2 ({pcreg_n_277,pcreg_n_278,pcreg_n_279,pcadd2_n_106}),
        .\ALUResult_OBUF[28]_inst_i_2_0 ({pcreg_n_32,pcreg_n_33,pcreg_n_34,pcreg_n_35}),
        .\ALUResult_OBUF[28]_inst_i_2_1 ({pcreg_n_272,pcreg_n_273,pcadd2_n_132,pcadd2_n_133}),
        .\ALUResult_OBUF[28]_inst_i_2_2 ({pcreg_n_84,pcreg_n_85,pcreg_n_86,pcreg_n_87}),
        .\ALUResult_OBUF[4]_inst_i_2 ({pcadd2_n_84,SrcA[6:5],pcadd2_n_85}),
        .\ALUResult_OBUF[4]_inst_i_2_0 ({pcreg_n_44,pcreg_n_45,pcreg_n_46,pcreg_n_47}),
        .\ALUResult_OBUF[4]_inst_i_2_1 ({pcadd2_n_110,pcadd2_n_111}),
        .\ALUResult_OBUF[4]_inst_i_2_2 ({pcreg_n_37,pcreg_n_38,pcreg_n_39,pcreg_n_40}),
        .\ALUResult_OBUF[8]_inst_i_2 ({pcadd2_n_86,pcadd2_n_87,pcadd2_n_88,pcadd2_n_89}),
        .\ALUResult_OBUF[8]_inst_i_2_0 ({pcreg_n_52,pcreg_n_53,pcreg_n_54,pcreg_n_55}),
        .\ALUResult_OBUF[8]_inst_i_2_1 ({pcadd2_n_112,pcadd2_n_113,pcadd2_n_114,pcadd2_n_115}),
        .\ALUResult_OBUF[8]_inst_i_2_2 ({pcreg_n_48,pcreg_n_49,pcreg_n_50,pcreg_n_51}),
        .CO(i_alu_n_31),
        .DI({pcadd2_n_81,pcadd2_n_82,pcadd2_n_83,pcreg_n_276}),
        .Result0_carry__6_i_8({p_0_in[31:8],p_0_in[6:0]}),
        .S({pcreg_n_80,pcreg_n_81,pcreg_n_82,pcreg_n_83}),
        .SrcA(SrcA[7]),
        .aD2M4dsP(aD2M4dsP),
        .i__carry__6_i_8({p_2_in[31:8],p_2_in[6:0]}),
        .i__carry__6_i_8_0(i_alu_n_63),
        .p_0_in(ALUResult_OBUF[7]),
        .\q_reg[0] (\q_reg[7] ),
        .\q_reg[0]_0 (pcreg_n_225),
        .\q_reg[0]_1 (pcreg_n_281),
        .\q_reg[0]_2 (pcreg_n_282),
        .\q_reg[0]_3 (\q_reg[5] ),
        .\q_reg[7] (\q_reg[7]_0 ));
  adder pcadd2
       (.\ALUResult_OBUF[4]_inst_i_3 (Instr_OBUF[23]),
        .\ALUResult_OBUF[8]_inst_i_2 (pcreg_n_42),
        .DI({pcadd2_n_81,pcadd2_n_82,pcadd2_n_83}),
        .S(pcreg_n_275),
        .SrcA(SrcA),
        .\WriteData[5] (pcreg_n_43),
        .d1(d1),
        .\q_reg[3] ({pcadd2_n_84,pcadd2_n_85}),
        .\q_reg[3]_0 ({pcadd2_n_86,pcadd2_n_87,pcadd2_n_88,pcadd2_n_89}),
        .\q_reg[3]_1 ({pcadd2_n_90,pcadd2_n_91,pcadd2_n_92,pcadd2_n_93}),
        .\q_reg[3]_10 ({pcadd2_n_120,pcadd2_n_121,pcadd2_n_122,pcadd2_n_123}),
        .\q_reg[3]_11 ({pcadd2_n_124,pcadd2_n_125,pcadd2_n_126,pcadd2_n_127}),
        .\q_reg[3]_12 ({pcadd2_n_128,pcadd2_n_129,pcadd2_n_130,pcadd2_n_131}),
        .\q_reg[3]_13 ({pcadd2_n_132,pcadd2_n_133}),
        .\q_reg[3]_2 ({pcadd2_n_94,pcadd2_n_95,pcadd2_n_96,pcadd2_n_97}),
        .\q_reg[3]_3 ({pcadd2_n_98,pcadd2_n_99,pcadd2_n_100,pcadd2_n_101}),
        .\q_reg[3]_4 ({pcadd2_n_102,pcadd2_n_103,pcadd2_n_104,pcadd2_n_105}),
        .\q_reg[3]_5 (pcadd2_n_106),
        .\q_reg[3]_6 ({pcadd2_n_107,pcadd2_n_108,pcadd2_n_109}),
        .\q_reg[3]_7 ({pcadd2_n_110,pcadd2_n_111}),
        .\q_reg[3]_8 ({pcadd2_n_112,pcadd2_n_113,pcadd2_n_114,pcadd2_n_115}),
        .\q_reg[3]_9 ({pcadd2_n_116,pcadd2_n_117,pcadd2_n_118,pcadd2_n_119}),
        .r15(r15),
        .rd10(rd10[29:1]),
        .rd20({rd20[27],rd20[23:21],rd20[19:5],rd20[3:1]}),
        .wd({wd[27],wd[23:21],wd[19:5],wd[3:1]}));
  flopr pcreg
       (.ADDRA(RA2),
        .\ALUResult_OBUF[28]_inst_i_1_0 (SrcA),
        .\ALUResult_OBUF[31]_inst_i_1_0 ({p_0_in[31:8],p_0_in[6:0]}),
        .\ALUResult_OBUF[31]_inst_i_1_1 ({p_2_in[31:8],p_2_in[6:0]}),
        .CO(i_alu_n_31),
        .DI(pcreg_n_276),
        .Instr_OBUF({Instr_OBUF[27:24],Instr_OBUF[21:8],Instr_OBUF[5:0]}),
        .MemWrite(MemWrite),
        .O(O),
        .PC(PC[31:1]),
        .RA3(RA3),
        .RegWrite(RegWrite),
        .Result0_carry__6(pcreg_n_281),
        .\Result0_inferred__0/i__carry__6 (pcreg_n_282),
        .Result_OBUF({Result_OBUF[31:8],Result_OBUF[6:0]}),
        .S({pcreg_n_80,pcreg_n_81,pcreg_n_82,pcreg_n_83}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .d1(d1),
        .en(en),
        .mem_reg_r1_0_15_0_5_i_15_0(mem_reg_r1_0_15_0_5_i_15),
        .mem_reg_r1_0_15_0_5_i_15_1(mem_reg_r1_0_15_0_5_i_15_0),
        .p_0_in(ALUResult_OBUF[7]),
        .q(q),
        .\q[0]_i_2__0 (i_alu_n_63),
        .\q[0]_i_48_0 (rf_n_64),
        .\q[0]_i_49_0 (rf_n_71),
        .\q_reg[0]_0 (PC[0]),
        .\q_reg[0]_1 (pcreg_n_280),
        .\q_reg[0]_2 (\q_reg[0] ),
        .\q_reg[2]_0 (pcreg_n_275),
        .\q_reg[3]_0 ({pcreg_n_32,pcreg_n_33,pcreg_n_34,pcreg_n_35}),
        .\q_reg[3]_1 (Instr_OBUF[23]),
        .\q_reg[3]_10 ({pcreg_n_60,pcreg_n_61,pcreg_n_62,pcreg_n_63}),
        .\q_reg[3]_11 ({pcreg_n_64,pcreg_n_65,pcreg_n_66,pcreg_n_67}),
        .\q_reg[3]_12 ({pcreg_n_68,pcreg_n_69,pcreg_n_70,pcreg_n_71}),
        .\q_reg[3]_13 ({pcreg_n_72,pcreg_n_73,pcreg_n_74,pcreg_n_75}),
        .\q_reg[3]_14 ({pcreg_n_76,pcreg_n_77,pcreg_n_78,pcreg_n_79}),
        .\q_reg[3]_15 ({pcreg_n_84,pcreg_n_85,pcreg_n_86,pcreg_n_87}),
        .\q_reg[3]_16 ({pcreg_n_89,pcreg_n_90,pcreg_n_91,pcreg_n_92}),
        .\q_reg[3]_17 ({pcreg_n_93,pcreg_n_94,pcreg_n_95,pcreg_n_96}),
        .\q_reg[3]_18 (RA1),
        .\q_reg[3]_19 ({pcreg_n_272,pcreg_n_273}),
        .\q_reg[3]_2 ({pcreg_n_37,pcreg_n_38,pcreg_n_39,pcreg_n_40}),
        .\q_reg[3]_20 ({pcreg_n_277,pcreg_n_278,pcreg_n_279}),
        .\q_reg[3]_21 ({pcreg_n_284,pcreg_n_285,pcreg_n_286,pcreg_n_287}),
        .\q_reg[3]_3 (aD2M4dsP),
        .\q_reg[3]_4 (pcreg_n_42),
        .\q_reg[3]_5 (pcreg_n_43),
        .\q_reg[3]_6 ({pcreg_n_44,pcreg_n_45,pcreg_n_46,pcreg_n_47}),
        .\q_reg[3]_7 ({pcreg_n_48,pcreg_n_49,pcreg_n_50,pcreg_n_51}),
        .\q_reg[3]_8 ({pcreg_n_52,pcreg_n_53,pcreg_n_54,pcreg_n_55}),
        .\q_reg[3]_9 ({pcreg_n_56,pcreg_n_57,pcreg_n_58,pcreg_n_59}),
        .\q_reg[5]_0 (\q_reg[5] ),
        .\q_reg[6]_0 (Instr_OBUF[6]),
        .\q_reg[6]_1 (ALUResult_OBUF[31]),
        .\q_reg[6]_10 (ALUResult_OBUF[14]),
        .\q_reg[6]_11 (ALUResult_OBUF[15]),
        .\q_reg[6]_12 (ALUResult_OBUF[16]),
        .\q_reg[6]_13 (ALUResult_OBUF[17]),
        .\q_reg[6]_14 (ALUResult_OBUF[18]),
        .\q_reg[6]_15 (ALUResult_OBUF[19]),
        .\q_reg[6]_16 (ALUResult_OBUF[20]),
        .\q_reg[6]_17 (ALUResult_OBUF[21]),
        .\q_reg[6]_18 (ALUResult_OBUF[22]),
        .\q_reg[6]_19 (ALUResult_OBUF[23]),
        .\q_reg[6]_2 (ALUResult_OBUF[30]),
        .\q_reg[6]_20 (ALUResult_OBUF[24]),
        .\q_reg[6]_21 (ALUResult_OBUF[25]),
        .\q_reg[6]_22 (ALUResult_OBUF[26]),
        .\q_reg[6]_23 (ALUResult_OBUF[27]),
        .\q_reg[6]_24 (ALUResult_OBUF[29]),
        .\q_reg[6]_25 (ALUResult_OBUF[0]),
        .\q_reg[6]_26 (ALUResult_OBUF[28]),
        .\q_reg[6]_27 (ALUResult_OBUF[6:2]),
        .\q_reg[6]_28 (\q_reg[6] ),
        .\q_reg[6]_29 (pcreg_n_225),
        .\q_reg[6]_3 (ALUResult_OBUF[1]),
        .\q_reg[6]_30 (\q_reg[6]_0 ),
        .\q_reg[6]_31 (Instr_OBUF[7]),
        .\q_reg[6]_32 (\q_reg[6]_1 ),
        .\q_reg[6]_33 (pcreg_n_233),
        .\q_reg[6]_4 (ALUResult_OBUF[9]),
        .\q_reg[6]_5 (ALUResult_OBUF[10]),
        .\q_reg[6]_6 (ALUResult_OBUF[11]),
        .\q_reg[6]_7 (ALUResult_OBUF[8]),
        .\q_reg[6]_8 (ALUResult_OBUF[12]),
        .\q_reg[6]_9 (ALUResult_OBUF[13]),
        .\q_reg[7]_0 (Instr_OBUF[22]),
        .\q_reg[7]_1 (\q_reg[7] ),
        .r15(r15),
        .rd(rd),
        .rd10(rd10),
        .rd20(rd20),
        .reset(reset),
        .wd({wd[31:29],wd[0]}),
        .wd3(wd3));
  regfile rf
       (.ADDRA(RA2),
        .ADDRD({RA3,Instr_OBUF[8]}),
        .RegWrite(RegWrite),
        .\WriteData[20] (pcreg_n_43),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\q[1]_i_6 (RA1),
        .\q_reg[3] (rf_n_64),
        .\q_reg[3]_0 (rf_n_71),
        .r15({r15[28],r15[26:24],r15[22],r15[20],r15[16],r15[4]}),
        .rd10(rd10),
        .rd20(rd20),
        .wd({wd[28],wd[26:24],wd[20],wd[4]}),
        .wd3(wd3));
endmodule

module dmem
   (Result_OBUF,
    rd,
    \Result[7] ,
    p_0_in,
    clk_IBUF_BUFG,
    wd,
    MemWrite);
  output [0:0]Result_OBUF;
  output [31:0]rd;
  input \Result[7] ;
  input [5:0]p_0_in;
  input clk_IBUF_BUFG;
  input [31:0]wd;
  input MemWrite;

  wire MemWrite;
  wire \Result[7] ;
  wire [0:0]Result_OBUF;
  wire clk_IBUF_BUFG;
  wire [5:0]p_0_in;
  wire [31:0]rd;
  wire [31:0]wd;

  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[7]_inst_i_1 
       (.I0(rd[7]),
        .I1(\Result[7] ),
        .I2(p_0_in[5]),
        .O(Result_OBUF));
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
       (.A0(p_0_in[0]),
        .A1(p_0_in[1]),
        .A2(p_0_in[2]),
        .A3(p_0_in[3]),
        .A4(p_0_in[4]),
        .A5(p_0_in[5]),
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
  RAM64X1S_HD302 mem_reg_0_63_10_10
       (.A0(p_0_in[0]),
        .A1(p_0_in[1]),
        .A2(p_0_in[2]),
        .A3(p_0_in[3]),
        .A4(p_0_in[4]),
        .A5(p_0_in[5]),
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
  RAM64X1S_HD303 mem_reg_0_63_11_11
       (.A0(p_0_in[0]),
        .A1(p_0_in[1]),
        .A2(p_0_in[2]),
        .A3(p_0_in[3]),
        .A4(p_0_in[4]),
        .A5(p_0_in[5]),
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
  RAM64X1S_HD304 mem_reg_0_63_12_12
       (.A0(p_0_in[0]),
        .A1(p_0_in[1]),
        .A2(p_0_in[2]),
        .A3(p_0_in[3]),
        .A4(p_0_in[4]),
        .A5(p_0_in[5]),
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
  RAM64X1S_HD305 mem_reg_0_63_13_13
       (.A0(p_0_in[0]),
        .A1(p_0_in[1]),
        .A2(p_0_in[2]),
        .A3(p_0_in[3]),
        .A4(p_0_in[4]),
        .A5(p_0_in[5]),
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
  RAM64X1S_HD306 mem_reg_0_63_14_14
       (.A0(p_0_in[0]),
        .A1(p_0_in[1]),
        .A2(p_0_in[2]),
        .A3(p_0_in[3]),
        .A4(p_0_in[4]),
        .A5(p_0_in[5]),
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
  RAM64X1S_HD307 mem_reg_0_63_15_15
       (.A0(p_0_in[0]),
        .A1(p_0_in[1]),
        .A2(p_0_in[2]),
        .A3(p_0_in[3]),
        .A4(p_0_in[4]),
        .A5(p_0_in[5]),
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
  RAM64X1S_HD308 mem_reg_0_63_16_16
       (.A0(p_0_in[0]),
        .A1(p_0_in[1]),
        .A2(p_0_in[2]),
        .A3(p_0_in[3]),
        .A4(p_0_in[4]),
        .A5(p_0_in[5]),
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
  RAM64X1S_HD309 mem_reg_0_63_17_17
       (.A0(p_0_in[0]),
        .A1(p_0_in[1]),
        .A2(p_0_in[2]),
        .A3(p_0_in[3]),
        .A4(p_0_in[4]),
        .A5(p_0_in[5]),
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
  RAM64X1S_HD310 mem_reg_0_63_18_18
       (.A0(p_0_in[0]),
        .A1(p_0_in[1]),
        .A2(p_0_in[2]),
        .A3(p_0_in[3]),
        .A4(p_0_in[4]),
        .A5(p_0_in[5]),
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
  RAM64X1S_HD311 mem_reg_0_63_19_19
       (.A0(p_0_in[0]),
        .A1(p_0_in[1]),
        .A2(p_0_in[2]),
        .A3(p_0_in[3]),
        .A4(p_0_in[4]),
        .A5(p_0_in[5]),
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
  RAM64X1S_HD312 mem_reg_0_63_1_1
       (.A0(p_0_in[0]),
        .A1(p_0_in[1]),
        .A2(p_0_in[2]),
        .A3(p_0_in[3]),
        .A4(p_0_in[4]),
        .A5(p_0_in[5]),
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
  RAM64X1S_HD313 mem_reg_0_63_20_20
       (.A0(p_0_in[0]),
        .A1(p_0_in[1]),
        .A2(p_0_in[2]),
        .A3(p_0_in[3]),
        .A4(p_0_in[4]),
        .A5(p_0_in[5]),
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
  RAM64X1S_HD314 mem_reg_0_63_21_21
       (.A0(p_0_in[0]),
        .A1(p_0_in[1]),
        .A2(p_0_in[2]),
        .A3(p_0_in[3]),
        .A4(p_0_in[4]),
        .A5(p_0_in[5]),
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
  RAM64X1S_HD315 mem_reg_0_63_22_22
       (.A0(p_0_in[0]),
        .A1(p_0_in[1]),
        .A2(p_0_in[2]),
        .A3(p_0_in[3]),
        .A4(p_0_in[4]),
        .A5(p_0_in[5]),
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
  RAM64X1S_HD316 mem_reg_0_63_23_23
       (.A0(p_0_in[0]),
        .A1(p_0_in[1]),
        .A2(p_0_in[2]),
        .A3(p_0_in[3]),
        .A4(p_0_in[4]),
        .A5(p_0_in[5]),
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
  RAM64X1S_HD317 mem_reg_0_63_24_24
       (.A0(p_0_in[0]),
        .A1(p_0_in[1]),
        .A2(p_0_in[2]),
        .A3(p_0_in[3]),
        .A4(p_0_in[4]),
        .A5(p_0_in[5]),
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
  RAM64X1S_HD318 mem_reg_0_63_25_25
       (.A0(p_0_in[0]),
        .A1(p_0_in[1]),
        .A2(p_0_in[2]),
        .A3(p_0_in[3]),
        .A4(p_0_in[4]),
        .A5(p_0_in[5]),
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
  RAM64X1S_HD319 mem_reg_0_63_26_26
       (.A0(p_0_in[0]),
        .A1(p_0_in[1]),
        .A2(p_0_in[2]),
        .A3(p_0_in[3]),
        .A4(p_0_in[4]),
        .A5(p_0_in[5]),
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
  RAM64X1S_HD320 mem_reg_0_63_27_27
       (.A0(p_0_in[0]),
        .A1(p_0_in[1]),
        .A2(p_0_in[2]),
        .A3(p_0_in[3]),
        .A4(p_0_in[4]),
        .A5(p_0_in[5]),
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
  RAM64X1S_HD321 mem_reg_0_63_28_28
       (.A0(p_0_in[0]),
        .A1(p_0_in[1]),
        .A2(p_0_in[2]),
        .A3(p_0_in[3]),
        .A4(p_0_in[4]),
        .A5(p_0_in[5]),
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
  RAM64X1S_HD322 mem_reg_0_63_29_29
       (.A0(p_0_in[0]),
        .A1(p_0_in[1]),
        .A2(p_0_in[2]),
        .A3(p_0_in[3]),
        .A4(p_0_in[4]),
        .A5(p_0_in[5]),
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
  RAM64X1S_HD323 mem_reg_0_63_2_2
       (.A0(p_0_in[0]),
        .A1(p_0_in[1]),
        .A2(p_0_in[2]),
        .A3(p_0_in[3]),
        .A4(p_0_in[4]),
        .A5(p_0_in[5]),
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
  RAM64X1S_HD324 mem_reg_0_63_30_30
       (.A0(p_0_in[0]),
        .A1(p_0_in[1]),
        .A2(p_0_in[2]),
        .A3(p_0_in[3]),
        .A4(p_0_in[4]),
        .A5(p_0_in[5]),
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
  RAM64X1S_HD325 mem_reg_0_63_31_31
       (.A0(p_0_in[0]),
        .A1(p_0_in[1]),
        .A2(p_0_in[2]),
        .A3(p_0_in[3]),
        .A4(p_0_in[4]),
        .A5(p_0_in[5]),
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
  RAM64X1S_HD326 mem_reg_0_63_3_3
       (.A0(p_0_in[0]),
        .A1(p_0_in[1]),
        .A2(p_0_in[2]),
        .A3(p_0_in[3]),
        .A4(p_0_in[4]),
        .A5(p_0_in[5]),
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
  RAM64X1S_HD327 mem_reg_0_63_4_4
       (.A0(p_0_in[0]),
        .A1(p_0_in[1]),
        .A2(p_0_in[2]),
        .A3(p_0_in[3]),
        .A4(p_0_in[4]),
        .A5(p_0_in[5]),
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
  RAM64X1S_HD328 mem_reg_0_63_5_5
       (.A0(p_0_in[0]),
        .A1(p_0_in[1]),
        .A2(p_0_in[2]),
        .A3(p_0_in[3]),
        .A4(p_0_in[4]),
        .A5(p_0_in[5]),
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
  RAM64X1S_HD329 mem_reg_0_63_6_6
       (.A0(p_0_in[0]),
        .A1(p_0_in[1]),
        .A2(p_0_in[2]),
        .A3(p_0_in[3]),
        .A4(p_0_in[4]),
        .A5(p_0_in[5]),
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
  RAM64X1S_HD330 mem_reg_0_63_7_7
       (.A0(p_0_in[0]),
        .A1(p_0_in[1]),
        .A2(p_0_in[2]),
        .A3(p_0_in[3]),
        .A4(p_0_in[4]),
        .A5(p_0_in[5]),
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
  RAM64X1S_HD331 mem_reg_0_63_8_8
       (.A0(p_0_in[0]),
        .A1(p_0_in[1]),
        .A2(p_0_in[2]),
        .A3(p_0_in[3]),
        .A4(p_0_in[4]),
        .A5(p_0_in[5]),
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
  RAM64X1S_HD332 mem_reg_0_63_9_9
       (.A0(p_0_in[0]),
        .A1(p_0_in[1]),
        .A2(p_0_in[2]),
        .A3(p_0_in[3]),
        .A4(p_0_in[4]),
        .A5(p_0_in[5]),
        .D(wd[9]),
        .O(rd[9]),
        .WCLK(clk_IBUF_BUFG),
        .WE(MemWrite));
endmodule

module flopenr
   (\q_reg[0]_0 ,
    \q_reg[1]_0 ,
    ALUFlags,
    Instr_OBUF,
    \q_reg[0]_1 ,
    O,
    \q_reg[1]_1 ,
    clk_IBUF_BUFG,
    reset_IBUF);
  output \q_reg[0]_0 ;
  output \q_reg[1]_0 ;
  input [0:0]ALUFlags;
  input [0:0]Instr_OBUF;
  input \q_reg[0]_1 ;
  input [0:0]O;
  input \q_reg[1]_1 ;
  input clk_IBUF_BUFG;
  input reset_IBUF;

  wire [0:0]ALUFlags;
  wire [0:0]Instr_OBUF;
  wire [0:0]O;
  wire clk_IBUF_BUFG;
  wire \q[0]_i_1_n_0 ;
  wire \q[1]_i_1_n_0 ;
  wire \q_reg[0]_0 ;
  wire \q_reg[0]_1 ;
  wire \q_reg[1]_0 ;
  wire \q_reg[1]_1 ;
  wire reset_IBUF;

  LUT4 #(
    .INIT(16'hBF80)) 
    \q[0]_i_1 
       (.I0(ALUFlags),
        .I1(Instr_OBUF),
        .I2(\q_reg[0]_1 ),
        .I3(\q_reg[0]_0 ),
        .O(\q[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \q[1]_i_1 
       (.I0(O),
        .I1(\q_reg[1]_1 ),
        .I2(Instr_OBUF),
        .I3(\q_reg[0]_1 ),
        .I4(\q_reg[1]_0 ),
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
        .Q(\q_reg[1]_0 ));
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
    .INIT(64'h00FEFFFF00FE0000)) 
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
    PC,
    \q_reg[3]_0 ,
    \q_reg[3]_1 ,
    \q_reg[3]_2 ,
    \q_reg[3]_3 ,
    \q_reg[3]_4 ,
    \q_reg[3]_5 ,
    \q_reg[3]_6 ,
    \q_reg[3]_7 ,
    \q_reg[3]_8 ,
    \q_reg[3]_9 ,
    \q_reg[3]_10 ,
    \q_reg[3]_11 ,
    \q_reg[3]_12 ,
    \q_reg[3]_13 ,
    \q_reg[3]_14 ,
    S,
    \q_reg[3]_15 ,
    \q_reg[6]_0 ,
    \q_reg[3]_16 ,
    \q_reg[3]_17 ,
    wd3,
    \q_reg[7]_0 ,
    \q_reg[6]_1 ,
    d1,
    \q_reg[6]_2 ,
    \q_reg[6]_3 ,
    \q_reg[6]_4 ,
    \q_reg[6]_5 ,
    \q_reg[6]_6 ,
    \q_reg[6]_7 ,
    \q_reg[6]_8 ,
    \q_reg[6]_9 ,
    \q_reg[6]_10 ,
    \q_reg[6]_11 ,
    \q_reg[6]_12 ,
    \q_reg[6]_13 ,
    \q_reg[6]_14 ,
    \q_reg[6]_15 ,
    \q_reg[6]_16 ,
    \q_reg[6]_17 ,
    \q_reg[6]_18 ,
    \q_reg[6]_19 ,
    \q_reg[6]_20 ,
    \q_reg[6]_21 ,
    \q_reg[6]_22 ,
    \q_reg[6]_23 ,
    \q_reg[6]_24 ,
    \q_reg[6]_25 ,
    \q_reg[6]_26 ,
    \q_reg[6]_27 ,
    Result_OBUF,
    \q_reg[6]_28 ,
    \q_reg[7]_1 ,
    \q_reg[6]_29 ,
    \q_reg[6]_30 ,
    \q_reg[6]_31 ,
    \q_reg[6]_32 ,
    ADDRA,
    \q_reg[6]_33 ,
    wd,
    Instr_OBUF,
    RA3,
    \q_reg[5]_0 ,
    RegWrite,
    en,
    \q_reg[3]_18 ,
    \q_reg[3]_19 ,
    MemWrite,
    \q_reg[2]_0 ,
    DI,
    \q_reg[3]_20 ,
    \q_reg[0]_1 ,
    Result0_carry__6,
    \Result0_inferred__0/i__carry__6 ,
    O,
    \q_reg[3]_21 ,
    clk_IBUF_BUFG,
    reset,
    r15,
    rd10,
    rd20,
    rd,
    p_0_in,
    \ALUResult_OBUF[28]_inst_i_1_0 ,
    \ALUResult_OBUF[31]_inst_i_1_0 ,
    \ALUResult_OBUF[31]_inst_i_1_1 ,
    \q[0]_i_48_0 ,
    \q[0]_i_49_0 ,
    q,
    \q_reg[0]_2 ,
    mem_reg_r1_0_15_0_5_i_15_0,
    mem_reg_r1_0_15_0_5_i_15_1,
    CO,
    \q[0]_i_2__0 );
  output \q_reg[0]_0 ;
  output [30:0]PC;
  output [3:0]\q_reg[3]_0 ;
  output \q_reg[3]_1 ;
  output [3:0]\q_reg[3]_2 ;
  output [0:0]\q_reg[3]_3 ;
  output \q_reg[3]_4 ;
  output \q_reg[3]_5 ;
  output [3:0]\q_reg[3]_6 ;
  output [3:0]\q_reg[3]_7 ;
  output [3:0]\q_reg[3]_8 ;
  output [3:0]\q_reg[3]_9 ;
  output [3:0]\q_reg[3]_10 ;
  output [3:0]\q_reg[3]_11 ;
  output [3:0]\q_reg[3]_12 ;
  output [3:0]\q_reg[3]_13 ;
  output [3:0]\q_reg[3]_14 ;
  output [3:0]S;
  output [3:0]\q_reg[3]_15 ;
  output \q_reg[6]_0 ;
  output [3:0]\q_reg[3]_16 ;
  output [3:0]\q_reg[3]_17 ;
  output [31:0]wd3;
  output \q_reg[7]_0 ;
  output \q_reg[6]_1 ;
  output [30:0]d1;
  output \q_reg[6]_2 ;
  output \q_reg[6]_3 ;
  output \q_reg[6]_4 ;
  output \q_reg[6]_5 ;
  output \q_reg[6]_6 ;
  output \q_reg[6]_7 ;
  output \q_reg[6]_8 ;
  output \q_reg[6]_9 ;
  output \q_reg[6]_10 ;
  output \q_reg[6]_11 ;
  output \q_reg[6]_12 ;
  output \q_reg[6]_13 ;
  output \q_reg[6]_14 ;
  output \q_reg[6]_15 ;
  output \q_reg[6]_16 ;
  output \q_reg[6]_17 ;
  output \q_reg[6]_18 ;
  output \q_reg[6]_19 ;
  output \q_reg[6]_20 ;
  output \q_reg[6]_21 ;
  output \q_reg[6]_22 ;
  output \q_reg[6]_23 ;
  output \q_reg[6]_24 ;
  output \q_reg[6]_25 ;
  output \q_reg[6]_26 ;
  output [4:0]\q_reg[6]_27 ;
  output [30:0]Result_OBUF;
  output \q_reg[6]_28 ;
  output \q_reg[7]_1 ;
  output \q_reg[6]_29 ;
  output \q_reg[6]_30 ;
  output \q_reg[6]_31 ;
  output \q_reg[6]_32 ;
  output [3:0]ADDRA;
  output \q_reg[6]_33 ;
  output [3:0]wd;
  output [23:0]Instr_OBUF;
  output [2:0]RA3;
  output \q_reg[5]_0 ;
  output RegWrite;
  output en;
  output [3:0]\q_reg[3]_18 ;
  output [1:0]\q_reg[3]_19 ;
  output MemWrite;
  output [0:0]\q_reg[2]_0 ;
  output [0:0]DI;
  output [2:0]\q_reg[3]_20 ;
  output [0:0]\q_reg[0]_1 ;
  output [0:0]Result0_carry__6;
  output [0:0]\Result0_inferred__0/i__carry__6 ;
  output [0:0]O;
  output [3:0]\q_reg[3]_21 ;
  input clk_IBUF_BUFG;
  input reset;
  input [30:0]r15;
  input [31:0]rd10;
  input [31:0]rd20;
  input [31:0]rd;
  input [0:0]p_0_in;
  input [27:0]\ALUResult_OBUF[28]_inst_i_1_0 ;
  input [30:0]\ALUResult_OBUF[31]_inst_i_1_0 ;
  input [30:0]\ALUResult_OBUF[31]_inst_i_1_1 ;
  input \q[0]_i_48_0 ;
  input \q[0]_i_49_0 ;
  input [0:0]q;
  input \q_reg[0]_2 ;
  input mem_reg_r1_0_15_0_5_i_15_0;
  input mem_reg_r1_0_15_0_5_i_15_1;
  input [0:0]CO;
  input [0:0]\q[0]_i_2__0 ;

  wire [3:0]ADDRA;
  wire \ALUResult_OBUF[0]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[0]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[0]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[10]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[10]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[10]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[10]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[11]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[11]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[11]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[11]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[12]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[12]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[12]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[13]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[13]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[13]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[14]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[14]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[14]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[14]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[14]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[15]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[15]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[15]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[15]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[16]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[16]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[16]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[16]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[17]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[17]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[17]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[17]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[18]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[18]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[18]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[18]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[19]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[19]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[19]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[19]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[1]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[1]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[1]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[20]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[20]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[20]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[21]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[21]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[21]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[21]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[22]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[22]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[22]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[23]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[23]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[23]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[23]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[23]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[24]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[24]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[24]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[24]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[24]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[24]_inst_i_8_n_0 ;
  wire \ALUResult_OBUF[25]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[25]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[25]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[25]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[26]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[26]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[26]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[26]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[27]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[27]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[27]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[27]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[27]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[27]_inst_i_8_n_0 ;
  wire [27:0]\ALUResult_OBUF[28]_inst_i_1_0 ;
  wire \ALUResult_OBUF[28]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[28]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[28]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[28]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[28]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[29]_inst_i_10_n_0 ;
  wire \ALUResult_OBUF[29]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[29]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[29]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[29]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[29]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[29]_inst_i_8_n_0 ;
  wire \ALUResult_OBUF[29]_inst_i_9_n_0 ;
  wire \ALUResult_OBUF[2]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[2]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[2]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[2]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[30]_inst_i_10_n_0 ;
  wire \ALUResult_OBUF[30]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[30]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[30]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[30]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[30]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[30]_inst_i_8_n_0 ;
  wire \ALUResult_OBUF[30]_inst_i_9_n_0 ;
  wire \ALUResult_OBUF[31]_inst_i_10_n_0 ;
  wire \ALUResult_OBUF[31]_inst_i_11_n_0 ;
  wire [30:0]\ALUResult_OBUF[31]_inst_i_1_0 ;
  wire [30:0]\ALUResult_OBUF[31]_inst_i_1_1 ;
  wire \ALUResult_OBUF[31]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[31]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[31]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[31]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[31]_inst_i_8_n_0 ;
  wire \ALUResult_OBUF[31]_inst_i_9_n_0 ;
  wire \ALUResult_OBUF[3]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[3]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[3]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[4]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[4]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[4]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[5]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[5]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[5]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[5]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[6]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[6]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[6]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[7]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[7]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[8]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[8]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[8]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[8]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[8]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[9]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[9]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[9]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[9]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[9]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[9]_inst_i_8_n_0 ;
  wire [0:0]CO;
  wire [0:0]DI;
  wire [23:0]Instr_OBUF;
  wire MemWrite;
  wire [0:0]O;
  wire [30:0]PC;
  wire [2:0]RA3;
  wire RegWrite;
  wire Result0_carry__0_i_10_n_0;
  wire Result0_carry__0_i_12_n_0;
  wire [0:0]Result0_carry__6;
  wire Result0_carry__6_i_9_n_0;
  wire Result0_carry_i_13_n_0;
  wire Result0_carry_i_14_n_0;
  wire Result0_carry_i_15_n_0;
  wire [0:0]\Result0_inferred__0/i__carry__6 ;
  wire [30:0]Result_OBUF;
  wire [3:0]S;
  wire [30:0]SrcA;
  wire [30:0]SrcB;
  wire clk_IBUF_BUFG;
  wire [30:0]d1;
  wire en;
  wire [28:1]\i_alu/aD2M4dsP ;
  wire mem_reg_r1_0_15_0_5_i_15_0;
  wire mem_reg_r1_0_15_0_5_i_15_1;
  wire mem_reg_r1_0_15_0_5_i_15_n_0;
  wire mem_reg_r1_0_15_0_5_i_16_n_0;
  wire mem_reg_r1_0_15_0_5_i_17_n_0;
  wire mem_reg_r1_0_15_0_5_i_18_n_0;
  wire [0:0]p_0_in;
  wire [0:0]q;
  wire \q[0]_i_100_n_0 ;
  wire \q[0]_i_101_n_0 ;
  wire \q[0]_i_102_n_0 ;
  wire \q[0]_i_103_n_0 ;
  wire \q[0]_i_104_n_0 ;
  wire \q[0]_i_105_n_0 ;
  wire \q[0]_i_106_n_0 ;
  wire \q[0]_i_107_n_0 ;
  wire \q[0]_i_108_n_0 ;
  wire \q[0]_i_109_n_0 ;
  wire \q[0]_i_110_n_0 ;
  wire \q[0]_i_111_n_0 ;
  wire \q[0]_i_112_n_0 ;
  wire \q[0]_i_113_n_0 ;
  wire \q[0]_i_114_n_0 ;
  wire \q[0]_i_115_n_0 ;
  wire \q[0]_i_116_n_0 ;
  wire \q[0]_i_117_n_0 ;
  wire \q[0]_i_118_n_0 ;
  wire \q[0]_i_119_n_0 ;
  wire \q[0]_i_120_n_0 ;
  wire \q[0]_i_121_n_0 ;
  wire \q[0]_i_122_n_0 ;
  wire \q[0]_i_123_n_0 ;
  wire \q[0]_i_124_n_0 ;
  wire \q[0]_i_125_n_0 ;
  wire \q[0]_i_126_n_0 ;
  wire \q[0]_i_127_n_0 ;
  wire \q[0]_i_14_n_0 ;
  wire \q[0]_i_15_n_0 ;
  wire \q[0]_i_16_n_0 ;
  wire \q[0]_i_17_n_0 ;
  wire \q[0]_i_18_n_0 ;
  wire \q[0]_i_19_n_0 ;
  wire \q[0]_i_1_n_0 ;
  wire \q[0]_i_20_n_0 ;
  wire \q[0]_i_21_n_0 ;
  wire \q[0]_i_22_n_0 ;
  wire \q[0]_i_23_n_0 ;
  wire \q[0]_i_24_n_0 ;
  wire \q[0]_i_25_n_0 ;
  wire \q[0]_i_26_n_0 ;
  wire \q[0]_i_27_n_0 ;
  wire \q[0]_i_28_n_0 ;
  wire \q[0]_i_29_n_0 ;
  wire [0:0]\q[0]_i_2__0 ;
  wire \q[0]_i_30_n_0 ;
  wire \q[0]_i_31_n_0 ;
  wire \q[0]_i_32_n_0 ;
  wire \q[0]_i_33_n_0 ;
  wire \q[0]_i_34_n_0 ;
  wire \q[0]_i_35_n_0 ;
  wire \q[0]_i_36_n_0 ;
  wire \q[0]_i_45_n_0 ;
  wire \q[0]_i_46_n_0 ;
  wire \q[0]_i_47_n_0 ;
  wire \q[0]_i_48_0 ;
  wire \q[0]_i_48_n_0 ;
  wire \q[0]_i_49_0 ;
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
  wire \q[0]_i_5_n_0 ;
  wire \q[0]_i_60_n_0 ;
  wire \q[0]_i_61_n_0 ;
  wire \q[0]_i_62_n_0 ;
  wire \q[0]_i_63_n_0 ;
  wire \q[0]_i_64_n_0 ;
  wire \q[0]_i_65_n_0 ;
  wire \q[0]_i_66_n_0 ;
  wire \q[0]_i_67_n_0 ;
  wire \q[0]_i_68_n_0 ;
  wire \q[0]_i_69_n_0 ;
  wire \q[0]_i_6_n_0 ;
  wire \q[0]_i_70_n_0 ;
  wire \q[0]_i_71_n_0 ;
  wire \q[0]_i_72_n_0 ;
  wire \q[0]_i_73_n_0 ;
  wire \q[0]_i_74_n_0 ;
  wire \q[0]_i_75_n_0 ;
  wire \q[0]_i_76_n_0 ;
  wire \q[0]_i_77_n_0 ;
  wire \q[0]_i_78_n_0 ;
  wire \q[0]_i_79_n_0 ;
  wire \q[0]_i_7_n_0 ;
  wire \q[0]_i_80_n_0 ;
  wire \q[0]_i_81_n_0 ;
  wire \q[0]_i_82_n_0 ;
  wire \q[0]_i_83_n_0 ;
  wire \q[0]_i_84_n_0 ;
  wire \q[0]_i_85_n_0 ;
  wire \q[0]_i_86_n_0 ;
  wire \q[0]_i_87_n_0 ;
  wire \q[0]_i_88_n_0 ;
  wire \q[0]_i_89_n_0 ;
  wire \q[0]_i_8_n_0 ;
  wire \q[0]_i_90_n_0 ;
  wire \q[0]_i_91_n_0 ;
  wire \q[0]_i_92_n_0 ;
  wire \q[0]_i_93_n_0 ;
  wire \q[0]_i_98_n_0 ;
  wire \q[0]_i_99_n_0 ;
  wire \q[0]_i_9_n_0 ;
  wire \q[13]_i_2_n_0 ;
  wire \q[13]_i_3_n_0 ;
  wire \q[13]_i_4_n_0 ;
  wire \q[13]_i_5_n_0 ;
  wire \q[17]_i_2_n_0 ;
  wire \q[17]_i_3_n_0 ;
  wire \q[17]_i_4_n_0 ;
  wire \q[17]_i_5_n_0 ;
  wire \q[1]_i_2__0_n_0 ;
  wire \q[1]_i_3__0_n_0 ;
  wire \q[1]_i_4__0_n_0 ;
  wire \q[1]_i_5_n_0 ;
  wire \q[1]_i_6__0_n_0 ;
  wire \q[1]_i_6_n_0 ;
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
  wire \q_reg[0]_2 ;
  wire \q_reg[13]_i_1_n_0 ;
  wire \q_reg[13]_i_1_n_4 ;
  wire \q_reg[13]_i_1_n_5 ;
  wire \q_reg[13]_i_1_n_6 ;
  wire \q_reg[13]_i_1_n_7 ;
  wire \q_reg[17]_i_1_n_0 ;
  wire \q_reg[17]_i_1_n_4 ;
  wire \q_reg[17]_i_1_n_5 ;
  wire \q_reg[17]_i_1_n_6 ;
  wire \q_reg[17]_i_1_n_7 ;
  wire \q_reg[1]_i_1_n_0 ;
  wire \q_reg[1]_i_1_n_4 ;
  wire \q_reg[1]_i_1_n_5 ;
  wire \q_reg[1]_i_1_n_6 ;
  wire \q_reg[1]_i_1_n_7 ;
  wire \q_reg[21]_i_1_n_0 ;
  wire \q_reg[21]_i_1_n_4 ;
  wire \q_reg[21]_i_1_n_5 ;
  wire \q_reg[21]_i_1_n_6 ;
  wire \q_reg[21]_i_1_n_7 ;
  wire \q_reg[25]_i_1_n_0 ;
  wire \q_reg[25]_i_1_n_4 ;
  wire \q_reg[25]_i_1_n_5 ;
  wire \q_reg[25]_i_1_n_6 ;
  wire \q_reg[25]_i_1_n_7 ;
  wire \q_reg[29]_i_1_n_5 ;
  wire \q_reg[29]_i_1_n_6 ;
  wire \q_reg[29]_i_1_n_7 ;
  wire [0:0]\q_reg[2]_0 ;
  wire [3:0]\q_reg[3]_0 ;
  wire \q_reg[3]_1 ;
  wire [3:0]\q_reg[3]_10 ;
  wire [3:0]\q_reg[3]_11 ;
  wire [3:0]\q_reg[3]_12 ;
  wire [3:0]\q_reg[3]_13 ;
  wire [3:0]\q_reg[3]_14 ;
  wire [3:0]\q_reg[3]_15 ;
  wire [3:0]\q_reg[3]_16 ;
  wire [3:0]\q_reg[3]_17 ;
  wire [3:0]\q_reg[3]_18 ;
  wire [1:0]\q_reg[3]_19 ;
  wire [3:0]\q_reg[3]_2 ;
  wire [2:0]\q_reg[3]_20 ;
  wire [3:0]\q_reg[3]_21 ;
  wire [0:0]\q_reg[3]_3 ;
  wire \q_reg[3]_4 ;
  wire \q_reg[3]_5 ;
  wire [3:0]\q_reg[3]_6 ;
  wire [3:0]\q_reg[3]_7 ;
  wire [3:0]\q_reg[3]_8 ;
  wire [3:0]\q_reg[3]_9 ;
  wire \q_reg[5]_0 ;
  wire \q_reg[5]_i_1_n_0 ;
  wire \q_reg[5]_i_1_n_4 ;
  wire \q_reg[5]_i_1_n_5 ;
  wire \q_reg[5]_i_1_n_6 ;
  wire \q_reg[5]_i_1_n_7 ;
  wire \q_reg[6]_0 ;
  wire \q_reg[6]_1 ;
  wire \q_reg[6]_10 ;
  wire \q_reg[6]_11 ;
  wire \q_reg[6]_12 ;
  wire \q_reg[6]_13 ;
  wire \q_reg[6]_14 ;
  wire \q_reg[6]_15 ;
  wire \q_reg[6]_16 ;
  wire \q_reg[6]_17 ;
  wire \q_reg[6]_18 ;
  wire \q_reg[6]_19 ;
  wire \q_reg[6]_2 ;
  wire \q_reg[6]_20 ;
  wire \q_reg[6]_21 ;
  wire \q_reg[6]_22 ;
  wire \q_reg[6]_23 ;
  wire \q_reg[6]_24 ;
  wire \q_reg[6]_25 ;
  wire \q_reg[6]_26 ;
  wire [4:0]\q_reg[6]_27 ;
  wire \q_reg[6]_28 ;
  wire \q_reg[6]_29 ;
  wire \q_reg[6]_3 ;
  wire \q_reg[6]_30 ;
  wire \q_reg[6]_31 ;
  wire \q_reg[6]_32 ;
  wire \q_reg[6]_33 ;
  wire \q_reg[6]_4 ;
  wire \q_reg[6]_5 ;
  wire \q_reg[6]_6 ;
  wire \q_reg[6]_7 ;
  wire \q_reg[6]_8 ;
  wire \q_reg[6]_9 ;
  wire \q_reg[7]_0 ;
  wire \q_reg[7]_1 ;
  wire \q_reg[9]_i_1_n_0 ;
  wire \q_reg[9]_i_1_n_4 ;
  wire \q_reg[9]_i_1_n_5 ;
  wire \q_reg[9]_i_1_n_6 ;
  wire \q_reg[9]_i_1_n_7 ;
  wire [30:0]r15;
  wire [31:0]rd;
  wire [31:0]rd10;
  wire [31:0]rd20;
  wire reset;
  wire [3:0]wd;
  wire [31:0]wd3;
  wire y0_carry__0_i_1_n_0;
  wire y0_carry__1_i_1_n_0;
  wire y0_carry__2_i_1_n_0;
  wire y0_carry__3_i_1_n_0;
  wire y0_carry__4_i_1_n_0;
  wire y0_carry__5_i_1_n_0;
  wire y0_carry_i_1_n_0;
  wire y0_carry_i_3_n_0;
  wire [3:1]\NLW_q_reg[0]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_q_reg[0]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_q_reg[13]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_q_reg[17]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_q_reg[1]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_q_reg[1]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_q_reg[1]_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_q_reg[1]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_q_reg[1]_i_5_O_UNCONNECTED ;
  wire [2:0]\NLW_q_reg[21]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_q_reg[25]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_q_reg[29]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_q_reg[29]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_q_reg[5]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_q_reg[9]_i_1_CO_UNCONNECTED ;
  wire [2:0]NLW_y0_carry__0_i_1_CO_UNCONNECTED;
  wire [2:0]NLW_y0_carry__1_i_1_CO_UNCONNECTED;
  wire [2:0]NLW_y0_carry__2_i_1_CO_UNCONNECTED;
  wire [2:0]NLW_y0_carry__3_i_1_CO_UNCONNECTED;
  wire [2:0]NLW_y0_carry__4_i_1_CO_UNCONNECTED;
  wire [2:0]NLW_y0_carry__5_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_y0_carry__6_i_1_CO_UNCONNECTED;
  wire [3:3]NLW_y0_carry__6_i_1_O_UNCONNECTED;
  wire [2:0]NLW_y0_carry_i_1_CO_UNCONNECTED;

  MUXF7 \ALUResult_OBUF[0]_inst_i_1 
       (.I0(\ALUResult_OBUF[0]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[0]_inst_i_3_n_0 ),
        .O(\q_reg[6]_25 ),
        .S(\q_reg[6]_28 ));
  LUT6 #(
    .INIT(64'hFFD8AAD8AAD800D8)) 
    \ALUResult_OBUF[0]_inst_i_2 
       (.I0(\q_reg[7]_1 ),
        .I1(\ALUResult_OBUF[31]_inst_i_1_1 [0]),
        .I2(\ALUResult_OBUF[31]_inst_i_1_0 [0]),
        .I3(\q_reg[6]_29 ),
        .I4(SrcA[0]),
        .I5(SrcB[0]),
        .O(\ALUResult_OBUF[0]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h383BCBC8)) 
    \ALUResult_OBUF[0]_inst_i_3 
       (.I0(\ALUResult_OBUF[0]_inst_i_5_n_0 ),
        .I1(\q_reg[7]_1 ),
        .I2(\q_reg[6]_29 ),
        .I3(SrcA[0]),
        .I4(SrcB[0]),
        .O(\ALUResult_OBUF[0]_inst_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[0]_inst_i_4 
       (.I0(\q_reg[0]_0 ),
        .I1(\q_reg[3]_4 ),
        .I2(rd10[0]),
        .O(SrcA[0]));
  LUT5 #(
    .INIT(32'h00AACFEE)) 
    \ALUResult_OBUF[0]_inst_i_5 
       (.I0(SrcB[0]),
        .I1(\q_reg[6]_0 ),
        .I2(\ALUResult_OBUF[8]_inst_i_7_n_0 ),
        .I3(\q_reg[6]_31 ),
        .I4(\ALUResult_OBUF[9]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[0]_inst_i_5_n_0 ));
  MUXF7 \ALUResult_OBUF[10]_inst_i_1 
       (.I0(\ALUResult_OBUF[10]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[10]_inst_i_3_n_0 ),
        .O(\q_reg[6]_5 ),
        .S(\q_reg[6]_28 ));
  LUT6 #(
    .INIT(64'hB2FFB2F0B20FB200)) 
    \ALUResult_OBUF[10]_inst_i_2 
       (.I0(\ALUResult_OBUF[28]_inst_i_1_0 [9]),
        .I1(\i_alu/aD2M4dsP [10]),
        .I2(\q_reg[7]_1 ),
        .I3(\q_reg[6]_29 ),
        .I4(\ALUResult_OBUF[31]_inst_i_1_0 [9]),
        .I5(\ALUResult_OBUF[31]_inst_i_1_1 [9]),
        .O(\ALUResult_OBUF[10]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCB38C83B)) 
    \ALUResult_OBUF[10]_inst_i_3 
       (.I0(\ALUResult_OBUF[10]_inst_i_5_n_0 ),
        .I1(\q_reg[7]_1 ),
        .I2(\q_reg[6]_29 ),
        .I3(\i_alu/aD2M4dsP [10]),
        .I4(\ALUResult_OBUF[28]_inst_i_1_0 [9]),
        .O(\ALUResult_OBUF[10]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FAFACCCCFCFC)) 
    \ALUResult_OBUF[10]_inst_i_5 
       (.I0(\ALUResult_OBUF[14]_inst_i_7_n_0 ),
        .I1(\ALUResult_OBUF[10]_inst_i_6_n_0 ),
        .I2(\q_reg[6]_0 ),
        .I3(SrcB[6]),
        .I4(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .I5(\q_reg[6]_31 ),
        .O(\ALUResult_OBUF[10]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8A80)) 
    \ALUResult_OBUF[10]_inst_i_6 
       (.I0(Result0_carry__0_i_10_n_0),
        .I1(r15[9]),
        .I2(\q_reg[3]_5 ),
        .I3(rd20[10]),
        .O(\ALUResult_OBUF[10]_inst_i_6_n_0 ));
  MUXF7 \ALUResult_OBUF[11]_inst_i_1 
       (.I0(\ALUResult_OBUF[11]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[11]_inst_i_3_n_0 ),
        .O(\q_reg[6]_6 ),
        .S(\q_reg[6]_28 ));
  LUT6 #(
    .INIT(64'hB2FFB2F0B20FB200)) 
    \ALUResult_OBUF[11]_inst_i_2 
       (.I0(\ALUResult_OBUF[28]_inst_i_1_0 [10]),
        .I1(\i_alu/aD2M4dsP [11]),
        .I2(\q_reg[7]_1 ),
        .I3(\q_reg[6]_29 ),
        .I4(\ALUResult_OBUF[31]_inst_i_1_0 [10]),
        .I5(\ALUResult_OBUF[31]_inst_i_1_1 [10]),
        .O(\ALUResult_OBUF[11]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCB38C83B)) 
    \ALUResult_OBUF[11]_inst_i_3 
       (.I0(\ALUResult_OBUF[11]_inst_i_5_n_0 ),
        .I1(\q_reg[7]_1 ),
        .I2(\q_reg[6]_29 ),
        .I3(\i_alu/aD2M4dsP [11]),
        .I4(\ALUResult_OBUF[28]_inst_i_1_0 [10]),
        .O(\ALUResult_OBUF[11]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00FF4E4E)) 
    \ALUResult_OBUF[11]_inst_i_5 
       (.I0(\q_reg[6]_31 ),
        .I1(\ALUResult_OBUF[11]_inst_i_6_n_0 ),
        .I2(\i_alu/aD2M4dsP [15]),
        .I3(\q_reg[3]_3 ),
        .I4(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[11]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8A80)) 
    \ALUResult_OBUF[11]_inst_i_6 
       (.I0(Result0_carry__0_i_10_n_0),
        .I1(r15[10]),
        .I2(\q_reg[3]_5 ),
        .I3(rd20[11]),
        .O(\ALUResult_OBUF[11]_inst_i_6_n_0 ));
  MUXF7 \ALUResult_OBUF[12]_inst_i_1 
       (.I0(\ALUResult_OBUF[12]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[12]_inst_i_3_n_0 ),
        .O(\q_reg[6]_8 ),
        .S(\q_reg[6]_28 ));
  LUT6 #(
    .INIT(64'hFFAAAA00D8D8D8D8)) 
    \ALUResult_OBUF[12]_inst_i_2 
       (.I0(\q_reg[7]_1 ),
        .I1(\ALUResult_OBUF[31]_inst_i_1_1 [11]),
        .I2(\ALUResult_OBUF[31]_inst_i_1_0 [11]),
        .I3(SrcB[12]),
        .I4(\ALUResult_OBUF[28]_inst_i_1_0 [11]),
        .I5(\q_reg[6]_29 ),
        .O(\ALUResult_OBUF[12]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h383BCBC8)) 
    \ALUResult_OBUF[12]_inst_i_3 
       (.I0(\ALUResult_OBUF[12]_inst_i_5_n_0 ),
        .I1(\q_reg[7]_1 ),
        .I2(\q_reg[6]_29 ),
        .I3(\ALUResult_OBUF[28]_inst_i_1_0 [11]),
        .I4(SrcB[12]),
        .O(\ALUResult_OBUF[12]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h3333F0AA)) 
    \ALUResult_OBUF[12]_inst_i_5 
       (.I0(\ALUResult_OBUF[16]_inst_i_7_n_0 ),
        .I1(\i_alu/aD2M4dsP [8]),
        .I2(SrcB[16]),
        .I3(\q_reg[6]_31 ),
        .I4(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[12]_inst_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \ALUResult_OBUF[13]_inst_i_1 
       (.I0(\ALUResult_OBUF[13]_inst_i_2_n_0 ),
        .I1(\q_reg[6]_28 ),
        .I2(\ALUResult_OBUF[13]_inst_i_3_n_0 ),
        .O(\q_reg[6]_9 ));
  LUT6 #(
    .INIT(64'hB2FFB2F0B20FB200)) 
    \ALUResult_OBUF[13]_inst_i_2 
       (.I0(\ALUResult_OBUF[28]_inst_i_1_0 [12]),
        .I1(\i_alu/aD2M4dsP [13]),
        .I2(\q_reg[7]_1 ),
        .I3(\q_reg[6]_29 ),
        .I4(\ALUResult_OBUF[31]_inst_i_1_0 [12]),
        .I5(\ALUResult_OBUF[31]_inst_i_1_1 [12]),
        .O(\ALUResult_OBUF[13]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFD55DD55DD55D)) 
    \ALUResult_OBUF[13]_inst_i_3 
       (.I0(\ALUResult_OBUF[27]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[23]_inst_i_5_n_0 ),
        .I2(\ALUResult_OBUF[28]_inst_i_1_0 [12]),
        .I3(\i_alu/aD2M4dsP [13]),
        .I4(\ALUResult_OBUF[13]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[23]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[13]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00FF4E4E)) 
    \ALUResult_OBUF[13]_inst_i_5 
       (.I0(\q_reg[6]_31 ),
        .I1(\ALUResult_OBUF[17]_inst_i_6_n_0 ),
        .I2(\i_alu/aD2M4dsP [17]),
        .I3(\i_alu/aD2M4dsP [9]),
        .I4(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[13]_inst_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \ALUResult_OBUF[14]_inst_i_1 
       (.I0(\ALUResult_OBUF[14]_inst_i_2_n_0 ),
        .I1(\q_reg[6]_28 ),
        .I2(\ALUResult_OBUF[14]_inst_i_3_n_0 ),
        .O(\q_reg[6]_10 ));
  LUT6 #(
    .INIT(64'hAA00FFAAD8D8D8D8)) 
    \ALUResult_OBUF[14]_inst_i_2 
       (.I0(\q_reg[7]_1 ),
        .I1(\ALUResult_OBUF[31]_inst_i_1_1 [13]),
        .I2(\ALUResult_OBUF[31]_inst_i_1_0 [13]),
        .I3(\ALUResult_OBUF[28]_inst_i_1_0 [13]),
        .I4(\i_alu/aD2M4dsP [14]),
        .I5(\q_reg[6]_29 ),
        .O(\ALUResult_OBUF[14]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD5D5D5)) 
    \ALUResult_OBUF[14]_inst_i_3 
       (.I0(\ALUResult_OBUF[27]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[23]_inst_i_5_n_0 ),
        .I2(\ALUResult_OBUF[14]_inst_i_5_n_0 ),
        .I3(\ALUResult_OBUF[14]_inst_i_6_n_0 ),
        .I4(\ALUResult_OBUF[23]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[14]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \ALUResult_OBUF[14]_inst_i_5 
       (.I0(rd10[14]),
        .I1(\q_reg[3]_1 ),
        .I2(r15[13]),
        .I3(\i_alu/aD2M4dsP [14]),
        .O(\ALUResult_OBUF[14]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00FF4E4E)) 
    \ALUResult_OBUF[14]_inst_i_6 
       (.I0(\q_reg[6]_31 ),
        .I1(\ALUResult_OBUF[14]_inst_i_7_n_0 ),
        .I2(\i_alu/aD2M4dsP [18]),
        .I3(\i_alu/aD2M4dsP [10]),
        .I4(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[14]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8A80)) 
    \ALUResult_OBUF[14]_inst_i_7 
       (.I0(Result0_carry__0_i_10_n_0),
        .I1(r15[13]),
        .I2(\q_reg[3]_5 ),
        .I3(rd20[14]),
        .O(\ALUResult_OBUF[14]_inst_i_7_n_0 ));
  MUXF7 \ALUResult_OBUF[15]_inst_i_1 
       (.I0(\ALUResult_OBUF[15]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[15]_inst_i_3_n_0 ),
        .O(\q_reg[6]_11 ),
        .S(\q_reg[6]_28 ));
  LUT6 #(
    .INIT(64'hB2FFB2F0B20FB200)) 
    \ALUResult_OBUF[15]_inst_i_2 
       (.I0(\ALUResult_OBUF[28]_inst_i_1_0 [14]),
        .I1(\i_alu/aD2M4dsP [15]),
        .I2(\q_reg[7]_1 ),
        .I3(\q_reg[6]_29 ),
        .I4(\ALUResult_OBUF[31]_inst_i_1_0 [14]),
        .I5(\ALUResult_OBUF[31]_inst_i_1_1 [14]),
        .O(\ALUResult_OBUF[15]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCBC8383B)) 
    \ALUResult_OBUF[15]_inst_i_3 
       (.I0(\ALUResult_OBUF[15]_inst_i_5_n_0 ),
        .I1(\q_reg[7]_1 ),
        .I2(\q_reg[6]_29 ),
        .I3(\ALUResult_OBUF[28]_inst_i_1_0 [14]),
        .I4(\i_alu/aD2M4dsP [15]),
        .O(\ALUResult_OBUF[15]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00FF4E4E)) 
    \ALUResult_OBUF[15]_inst_i_5 
       (.I0(\q_reg[6]_31 ),
        .I1(\ALUResult_OBUF[15]_inst_i_6_n_0 ),
        .I2(\i_alu/aD2M4dsP [19]),
        .I3(\i_alu/aD2M4dsP [11]),
        .I4(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[15]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8A80)) 
    \ALUResult_OBUF[15]_inst_i_6 
       (.I0(Result0_carry__0_i_10_n_0),
        .I1(r15[14]),
        .I2(\q_reg[3]_5 ),
        .I3(rd20[15]),
        .O(\ALUResult_OBUF[15]_inst_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \ALUResult_OBUF[16]_inst_i_1 
       (.I0(\ALUResult_OBUF[16]_inst_i_2_n_0 ),
        .I1(\q_reg[6]_28 ),
        .I2(\ALUResult_OBUF[16]_inst_i_3_n_0 ),
        .O(\q_reg[6]_12 ));
  LUT6 #(
    .INIT(64'hFFAAAA00D8D8D8D8)) 
    \ALUResult_OBUF[16]_inst_i_2 
       (.I0(\q_reg[7]_1 ),
        .I1(\ALUResult_OBUF[31]_inst_i_1_1 [15]),
        .I2(\ALUResult_OBUF[31]_inst_i_1_0 [15]),
        .I3(SrcB[16]),
        .I4(\ALUResult_OBUF[28]_inst_i_1_0 [15]),
        .I5(\q_reg[6]_29 ),
        .O(\ALUResult_OBUF[16]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5DD55DD55DD5)) 
    \ALUResult_OBUF[16]_inst_i_3 
       (.I0(\ALUResult_OBUF[27]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[23]_inst_i_5_n_0 ),
        .I2(\ALUResult_OBUF[28]_inst_i_1_0 [15]),
        .I3(SrcB[16]),
        .I4(\ALUResult_OBUF[16]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[23]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[16]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFCE020000CE02)) 
    \ALUResult_OBUF[16]_inst_i_5 
       (.I0(Result0_carry__0_i_10_n_0),
        .I1(\q_reg[6]_31 ),
        .I2(\q[0]_i_48_0 ),
        .I3(SrcB[20]),
        .I4(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[16]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[16]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8A80)) 
    \ALUResult_OBUF[16]_inst_i_7 
       (.I0(Result0_carry__0_i_10_n_0),
        .I1(r15[11]),
        .I2(\q_reg[3]_5 ),
        .I3(rd20[12]),
        .O(\ALUResult_OBUF[16]_inst_i_7_n_0 ));
  MUXF7 \ALUResult_OBUF[17]_inst_i_1 
       (.I0(\ALUResult_OBUF[17]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[17]_inst_i_3_n_0 ),
        .O(\q_reg[6]_13 ),
        .S(\q_reg[6]_28 ));
  LUT6 #(
    .INIT(64'hB2FFB2F0B20FB200)) 
    \ALUResult_OBUF[17]_inst_i_2 
       (.I0(\ALUResult_OBUF[28]_inst_i_1_0 [16]),
        .I1(\i_alu/aD2M4dsP [17]),
        .I2(\q_reg[7]_1 ),
        .I3(\q_reg[6]_29 ),
        .I4(\ALUResult_OBUF[31]_inst_i_1_0 [16]),
        .I5(\ALUResult_OBUF[31]_inst_i_1_1 [16]),
        .O(\ALUResult_OBUF[17]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCBC8383B)) 
    \ALUResult_OBUF[17]_inst_i_3 
       (.I0(\ALUResult_OBUF[17]_inst_i_5_n_0 ),
        .I1(\q_reg[7]_1 ),
        .I2(\q_reg[6]_29 ),
        .I3(\ALUResult_OBUF[28]_inst_i_1_0 [16]),
        .I4(\i_alu/aD2M4dsP [17]),
        .O(\ALUResult_OBUF[17]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hCCCCF0AA)) 
    \ALUResult_OBUF[17]_inst_i_5 
       (.I0(\ALUResult_OBUF[21]_inst_i_6_n_0 ),
        .I1(\ALUResult_OBUF[17]_inst_i_6_n_0 ),
        .I2(SrcB[21]),
        .I3(\q_reg[6]_31 ),
        .I4(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[17]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8A80)) 
    \ALUResult_OBUF[17]_inst_i_6 
       (.I0(Result0_carry__0_i_10_n_0),
        .I1(r15[12]),
        .I2(\q_reg[3]_5 ),
        .I3(rd20[13]),
        .O(\ALUResult_OBUF[17]_inst_i_6_n_0 ));
  MUXF7 \ALUResult_OBUF[18]_inst_i_1 
       (.I0(\ALUResult_OBUF[18]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[18]_inst_i_3_n_0 ),
        .O(\q_reg[6]_14 ),
        .S(\q_reg[6]_28 ));
  LUT6 #(
    .INIT(64'hAA00FFAAD8D8D8D8)) 
    \ALUResult_OBUF[18]_inst_i_2 
       (.I0(\q_reg[7]_1 ),
        .I1(\ALUResult_OBUF[31]_inst_i_1_1 [17]),
        .I2(\ALUResult_OBUF[31]_inst_i_1_0 [17]),
        .I3(\ALUResult_OBUF[28]_inst_i_1_0 [17]),
        .I4(\i_alu/aD2M4dsP [18]),
        .I5(\q_reg[6]_29 ),
        .O(\ALUResult_OBUF[18]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCBC8383B)) 
    \ALUResult_OBUF[18]_inst_i_3 
       (.I0(\ALUResult_OBUF[18]_inst_i_5_n_0 ),
        .I1(\q_reg[7]_1 ),
        .I2(\q_reg[6]_29 ),
        .I3(\ALUResult_OBUF[28]_inst_i_1_0 [17]),
        .I4(\i_alu/aD2M4dsP [18]),
        .O(\ALUResult_OBUF[18]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h3333F0AA)) 
    \ALUResult_OBUF[18]_inst_i_5 
       (.I0(\ALUResult_OBUF[18]_inst_i_6_n_0 ),
        .I1(\i_alu/aD2M4dsP [14]),
        .I2(SrcB[22]),
        .I3(\q_reg[6]_31 ),
        .I4(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[18]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8A80)) 
    \ALUResult_OBUF[18]_inst_i_6 
       (.I0(Result0_carry__0_i_10_n_0),
        .I1(r15[17]),
        .I2(\q_reg[3]_5 ),
        .I3(rd20[18]),
        .O(\ALUResult_OBUF[18]_inst_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \ALUResult_OBUF[19]_inst_i_1 
       (.I0(\ALUResult_OBUF[19]_inst_i_2_n_0 ),
        .I1(\q_reg[6]_28 ),
        .I2(\ALUResult_OBUF[19]_inst_i_3_n_0 ),
        .O(\q_reg[6]_15 ));
  LUT6 #(
    .INIT(64'hB2FFB2F0B20FB200)) 
    \ALUResult_OBUF[19]_inst_i_2 
       (.I0(\ALUResult_OBUF[28]_inst_i_1_0 [18]),
        .I1(\i_alu/aD2M4dsP [19]),
        .I2(\q_reg[7]_1 ),
        .I3(\q_reg[6]_29 ),
        .I4(\ALUResult_OBUF[31]_inst_i_1_0 [18]),
        .I5(\ALUResult_OBUF[31]_inst_i_1_1 [18]),
        .O(\ALUResult_OBUF[19]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFD55DD55DD55D)) 
    \ALUResult_OBUF[19]_inst_i_3 
       (.I0(\ALUResult_OBUF[27]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[23]_inst_i_5_n_0 ),
        .I2(\ALUResult_OBUF[28]_inst_i_1_0 [18]),
        .I3(\i_alu/aD2M4dsP [19]),
        .I4(\ALUResult_OBUF[19]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[23]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[19]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00FFE4E4)) 
    \ALUResult_OBUF[19]_inst_i_5 
       (.I0(\q_reg[6]_31 ),
        .I1(\ALUResult_OBUF[19]_inst_i_6_n_0 ),
        .I2(SrcB[23]),
        .I3(\i_alu/aD2M4dsP [15]),
        .I4(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[19]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8A80)) 
    \ALUResult_OBUF[19]_inst_i_6 
       (.I0(Result0_carry__0_i_10_n_0),
        .I1(r15[18]),
        .I2(\q_reg[3]_5 ),
        .I3(rd20[19]),
        .O(\ALUResult_OBUF[19]_inst_i_6_n_0 ));
  MUXF7 \ALUResult_OBUF[1]_inst_i_1 
       (.I0(\ALUResult_OBUF[1]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[1]_inst_i_3_n_0 ),
        .O(\q_reg[6]_3 ),
        .S(\q_reg[6]_28 ));
  LUT6 #(
    .INIT(64'hAAFF00AAD8D8D8D8)) 
    \ALUResult_OBUF[1]_inst_i_2 
       (.I0(\q_reg[7]_1 ),
        .I1(\ALUResult_OBUF[31]_inst_i_1_1 [1]),
        .I2(\ALUResult_OBUF[31]_inst_i_1_0 [1]),
        .I3(\i_alu/aD2M4dsP [1]),
        .I4(\ALUResult_OBUF[28]_inst_i_1_0 [0]),
        .I5(\q_reg[6]_29 ),
        .O(\ALUResult_OBUF[1]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hC7C43437)) 
    \ALUResult_OBUF[1]_inst_i_3 
       (.I0(\ALUResult_OBUF[1]_inst_i_5_n_0 ),
        .I1(\q_reg[7]_1 ),
        .I2(\q_reg[6]_29 ),
        .I3(\ALUResult_OBUF[28]_inst_i_1_0 [0]),
        .I4(\i_alu/aD2M4dsP [1]),
        .O(\ALUResult_OBUF[1]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFAEEFFEE)) 
    \ALUResult_OBUF[1]_inst_i_5 
       (.I0(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .I1(\i_alu/aD2M4dsP [1]),
        .I2(\q_reg[6]_0 ),
        .I3(\q_reg[6]_31 ),
        .I4(SrcB[5]),
        .O(\ALUResult_OBUF[1]_inst_i_5_n_0 ));
  MUXF7 \ALUResult_OBUF[20]_inst_i_1 
       (.I0(\ALUResult_OBUF[20]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[20]_inst_i_3_n_0 ),
        .O(\q_reg[6]_16 ),
        .S(\q_reg[6]_28 ));
  LUT6 #(
    .INIT(64'hE8FFE8F0E80FE800)) 
    \ALUResult_OBUF[20]_inst_i_2 
       (.I0(\ALUResult_OBUF[28]_inst_i_1_0 [19]),
        .I1(SrcB[20]),
        .I2(\q_reg[7]_1 ),
        .I3(\q_reg[6]_29 ),
        .I4(\ALUResult_OBUF[31]_inst_i_1_0 [19]),
        .I5(\ALUResult_OBUF[31]_inst_i_1_1 [19]),
        .O(\ALUResult_OBUF[20]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h383BCBC8)) 
    \ALUResult_OBUF[20]_inst_i_3 
       (.I0(\ALUResult_OBUF[20]_inst_i_5_n_0 ),
        .I1(\q_reg[7]_1 ),
        .I2(\q_reg[6]_29 ),
        .I3(\ALUResult_OBUF[28]_inst_i_1_0 [19]),
        .I4(SrcB[20]),
        .O(\ALUResult_OBUF[20]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \ALUResult_OBUF[20]_inst_i_5 
       (.I0(\q_reg[6]_31 ),
        .I1(SrcB[20]),
        .I2(SrcB[24]),
        .I3(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .I4(SrcB[16]),
        .O(\ALUResult_OBUF[20]_inst_i_5_n_0 ));
  MUXF7 \ALUResult_OBUF[21]_inst_i_1 
       (.I0(\ALUResult_OBUF[21]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[21]_inst_i_3_n_0 ),
        .O(\q_reg[6]_17 ),
        .S(\q_reg[6]_28 ));
  LUT6 #(
    .INIT(64'hE8FFE8F0E80FE800)) 
    \ALUResult_OBUF[21]_inst_i_2 
       (.I0(\ALUResult_OBUF[28]_inst_i_1_0 [20]),
        .I1(SrcB[21]),
        .I2(\q_reg[7]_1 ),
        .I3(\q_reg[6]_29 ),
        .I4(\ALUResult_OBUF[31]_inst_i_1_0 [20]),
        .I5(\ALUResult_OBUF[31]_inst_i_1_1 [20]),
        .O(\ALUResult_OBUF[21]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h383BCBC8)) 
    \ALUResult_OBUF[21]_inst_i_3 
       (.I0(\ALUResult_OBUF[21]_inst_i_5_n_0 ),
        .I1(\q_reg[7]_1 ),
        .I2(\q_reg[6]_29 ),
        .I3(\ALUResult_OBUF[28]_inst_i_1_0 [20]),
        .I4(SrcB[21]),
        .O(\ALUResult_OBUF[21]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \ALUResult_OBUF[21]_inst_i_5 
       (.I0(\ALUResult_OBUF[25]_inst_i_6_n_0 ),
        .I1(SrcB[25]),
        .I2(\ALUResult_OBUF[21]_inst_i_6_n_0 ),
        .I3(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .I4(\q_reg[6]_31 ),
        .O(\ALUResult_OBUF[21]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8A80)) 
    \ALUResult_OBUF[21]_inst_i_6 
       (.I0(Result0_carry__0_i_10_n_0),
        .I1(r15[16]),
        .I2(\q_reg[3]_5 ),
        .I3(rd20[17]),
        .O(\ALUResult_OBUF[21]_inst_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \ALUResult_OBUF[22]_inst_i_1 
       (.I0(\ALUResult_OBUF[22]_inst_i_2_n_0 ),
        .I1(\q_reg[6]_28 ),
        .I2(\ALUResult_OBUF[22]_inst_i_3_n_0 ),
        .O(\q_reg[6]_18 ));
  LUT6 #(
    .INIT(64'hE8FFE8F0E80FE800)) 
    \ALUResult_OBUF[22]_inst_i_2 
       (.I0(\ALUResult_OBUF[28]_inst_i_1_0 [21]),
        .I1(SrcB[22]),
        .I2(\q_reg[7]_1 ),
        .I3(\q_reg[6]_29 ),
        .I4(\ALUResult_OBUF[31]_inst_i_1_0 [21]),
        .I5(\ALUResult_OBUF[31]_inst_i_1_1 [21]),
        .O(\ALUResult_OBUF[22]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5DD55DD55DD5)) 
    \ALUResult_OBUF[22]_inst_i_3 
       (.I0(\ALUResult_OBUF[27]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[23]_inst_i_5_n_0 ),
        .I2(\ALUResult_OBUF[28]_inst_i_1_0 [21]),
        .I3(SrcB[22]),
        .I4(\ALUResult_OBUF[22]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[23]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[22]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFCE02CE02)) 
    \ALUResult_OBUF[22]_inst_i_5 
       (.I0(Result0_carry__0_i_10_n_0),
        .I1(\q_reg[6]_31 ),
        .I2(\q[0]_i_49_0 ),
        .I3(SrcB[26]),
        .I4(\i_alu/aD2M4dsP [18]),
        .I5(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[22]_inst_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \ALUResult_OBUF[23]_inst_i_1 
       (.I0(\ALUResult_OBUF[23]_inst_i_2_n_0 ),
        .I1(\q_reg[6]_28 ),
        .I2(\ALUResult_OBUF[23]_inst_i_3_n_0 ),
        .O(\q_reg[6]_19 ));
  LUT6 #(
    .INIT(64'hFFAAAA00D8D8D8D8)) 
    \ALUResult_OBUF[23]_inst_i_2 
       (.I0(\q_reg[7]_1 ),
        .I1(\ALUResult_OBUF[31]_inst_i_1_1 [22]),
        .I2(\ALUResult_OBUF[31]_inst_i_1_0 [22]),
        .I3(SrcB[23]),
        .I4(\ALUResult_OBUF[28]_inst_i_1_0 [22]),
        .I5(\q_reg[6]_29 ),
        .O(\ALUResult_OBUF[23]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5DD55DD55DD5)) 
    \ALUResult_OBUF[23]_inst_i_3 
       (.I0(\ALUResult_OBUF[27]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[23]_inst_i_5_n_0 ),
        .I2(\ALUResult_OBUF[28]_inst_i_1_0 [22]),
        .I3(SrcB[23]),
        .I4(\ALUResult_OBUF[23]_inst_i_6_n_0 ),
        .I5(\ALUResult_OBUF[23]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[23]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000038440BCC)) 
    \ALUResult_OBUF[23]_inst_i_5 
       (.I0(PC[1]),
        .I1(PC[4]),
        .I2(PC[5]),
        .I3(PC[2]),
        .I4(PC[3]),
        .I5(PC[6]),
        .O(\ALUResult_OBUF[23]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00FF4E4E)) 
    \ALUResult_OBUF[23]_inst_i_6 
       (.I0(\q_reg[6]_31 ),
        .I1(\ALUResult_OBUF[27]_inst_i_8_n_0 ),
        .I2(\i_alu/aD2M4dsP [27]),
        .I3(\i_alu/aD2M4dsP [19]),
        .I4(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[23]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0011511115510000)) 
    \ALUResult_OBUF[23]_inst_i_7 
       (.I0(PC[6]),
        .I1(PC[4]),
        .I2(PC[1]),
        .I3(PC[2]),
        .I4(PC[3]),
        .I5(PC[5]),
        .O(\ALUResult_OBUF[23]_inst_i_7_n_0 ));
  MUXF7 \ALUResult_OBUF[24]_inst_i_1 
       (.I0(\ALUResult_OBUF[24]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[24]_inst_i_3_n_0 ),
        .O(\q_reg[6]_20 ),
        .S(\q_reg[6]_28 ));
  LUT6 #(
    .INIT(64'hE8FFE8F0E80FE800)) 
    \ALUResult_OBUF[24]_inst_i_2 
       (.I0(\ALUResult_OBUF[28]_inst_i_1_0 [23]),
        .I1(SrcB[24]),
        .I2(\q_reg[7]_1 ),
        .I3(\q_reg[6]_29 ),
        .I4(\ALUResult_OBUF[31]_inst_i_1_0 [23]),
        .I5(\ALUResult_OBUF[31]_inst_i_1_1 [23]),
        .O(\ALUResult_OBUF[24]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h383BCBC8)) 
    \ALUResult_OBUF[24]_inst_i_3 
       (.I0(\ALUResult_OBUF[24]_inst_i_5_n_0 ),
        .I1(\q_reg[7]_1 ),
        .I2(\q_reg[6]_29 ),
        .I3(\ALUResult_OBUF[28]_inst_i_1_0 [23]),
        .I4(SrcB[24]),
        .O(\ALUResult_OBUF[24]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF3030FFB8)) 
    \ALUResult_OBUF[24]_inst_i_5 
       (.I0(\ALUResult_OBUF[24]_inst_i_6_n_0 ),
        .I1(\q_reg[6]_31 ),
        .I2(\ALUResult_OBUF[24]_inst_i_7_n_0 ),
        .I3(\q_reg[6]_0 ),
        .I4(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[24]_inst_i_8_n_0 ),
        .O(\ALUResult_OBUF[24]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult_OBUF[24]_inst_i_6 
       (.I0(Result0_carry__0_i_10_n_0),
        .I1(rd20[28]),
        .I2(\q_reg[3]_5 ),
        .I3(r15[27]),
        .O(\ALUResult_OBUF[24]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult_OBUF[24]_inst_i_7 
       (.I0(Result0_carry__0_i_10_n_0),
        .I1(rd20[24]),
        .I2(\q_reg[3]_5 ),
        .I3(r15[23]),
        .O(\ALUResult_OBUF[24]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8080800000008000)) 
    \ALUResult_OBUF[24]_inst_i_8 
       (.I0(Result0_carry__0_i_10_n_0),
        .I1(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .I2(\q_reg[6]_31 ),
        .I3(rd20[20]),
        .I4(\q_reg[3]_5 ),
        .I5(r15[19]),
        .O(\ALUResult_OBUF[24]_inst_i_8_n_0 ));
  MUXF7 \ALUResult_OBUF[25]_inst_i_1 
       (.I0(\ALUResult_OBUF[25]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[25]_inst_i_3_n_0 ),
        .O(\q_reg[6]_21 ),
        .S(\q_reg[6]_28 ));
  LUT6 #(
    .INIT(64'hFFAAAA00D8D8D8D8)) 
    \ALUResult_OBUF[25]_inst_i_2 
       (.I0(\q_reg[7]_1 ),
        .I1(\ALUResult_OBUF[31]_inst_i_1_1 [24]),
        .I2(\ALUResult_OBUF[31]_inst_i_1_0 [24]),
        .I3(SrcB[25]),
        .I4(\ALUResult_OBUF[28]_inst_i_1_0 [24]),
        .I5(\q_reg[6]_29 ),
        .O(\ALUResult_OBUF[25]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h383BCBC8)) 
    \ALUResult_OBUF[25]_inst_i_3 
       (.I0(\ALUResult_OBUF[25]_inst_i_5_n_0 ),
        .I1(\q_reg[7]_1 ),
        .I2(\q_reg[6]_29 ),
        .I3(\ALUResult_OBUF[28]_inst_i_1_0 [24]),
        .I4(SrcB[25]),
        .O(\ALUResult_OBUF[25]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00D8D80000CCCC)) 
    \ALUResult_OBUF[25]_inst_i_5 
       (.I0(\q_reg[6]_0 ),
        .I1(SrcB[25]),
        .I2(SrcB[29]),
        .I3(\ALUResult_OBUF[25]_inst_i_6_n_0 ),
        .I4(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .I5(\q_reg[6]_31 ),
        .O(\ALUResult_OBUF[25]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8A80)) 
    \ALUResult_OBUF[25]_inst_i_6 
       (.I0(Result0_carry__0_i_10_n_0),
        .I1(r15[20]),
        .I2(\q_reg[3]_5 ),
        .I3(rd20[21]),
        .O(\ALUResult_OBUF[25]_inst_i_6_n_0 ));
  MUXF7 \ALUResult_OBUF[26]_inst_i_1 
       (.I0(\ALUResult_OBUF[26]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[26]_inst_i_3_n_0 ),
        .O(\q_reg[6]_22 ),
        .S(\q_reg[6]_28 ));
  LUT6 #(
    .INIT(64'hE8FFE8F0E80FE800)) 
    \ALUResult_OBUF[26]_inst_i_2 
       (.I0(\ALUResult_OBUF[28]_inst_i_1_0 [25]),
        .I1(SrcB[26]),
        .I2(\q_reg[7]_1 ),
        .I3(\q_reg[6]_29 ),
        .I4(\ALUResult_OBUF[31]_inst_i_1_0 [25]),
        .I5(\ALUResult_OBUF[31]_inst_i_1_1 [25]),
        .O(\ALUResult_OBUF[26]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h383BCBC8)) 
    \ALUResult_OBUF[26]_inst_i_3 
       (.I0(\ALUResult_OBUF[26]_inst_i_5_n_0 ),
        .I1(\q_reg[7]_1 ),
        .I2(\q_reg[6]_29 ),
        .I3(\ALUResult_OBUF[28]_inst_i_1_0 [25]),
        .I4(SrcB[26]),
        .O(\ALUResult_OBUF[26]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFE222E2)) 
    \ALUResult_OBUF[26]_inst_i_5 
       (.I0(\ALUResult_OBUF[26]_inst_i_6_n_0 ),
        .I1(\q_reg[6]_31 ),
        .I2(SrcB[30]),
        .I3(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .I4(SrcB[22]),
        .O(\ALUResult_OBUF[26]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult_OBUF[26]_inst_i_6 
       (.I0(Result0_carry__0_i_10_n_0),
        .I1(rd20[26]),
        .I2(\q_reg[3]_5 ),
        .I3(r15[25]),
        .O(\ALUResult_OBUF[26]_inst_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \ALUResult_OBUF[27]_inst_i_1 
       (.I0(\ALUResult_OBUF[27]_inst_i_2_n_0 ),
        .I1(\q_reg[6]_28 ),
        .I2(\ALUResult_OBUF[27]_inst_i_3_n_0 ),
        .O(\q_reg[6]_23 ));
  LUT6 #(
    .INIT(64'hAA00FFAAD8D8D8D8)) 
    \ALUResult_OBUF[27]_inst_i_2 
       (.I0(\q_reg[7]_1 ),
        .I1(\ALUResult_OBUF[31]_inst_i_1_1 [26]),
        .I2(\ALUResult_OBUF[31]_inst_i_1_0 [26]),
        .I3(\ALUResult_OBUF[28]_inst_i_1_0 [26]),
        .I4(\i_alu/aD2M4dsP [27]),
        .I5(\q_reg[6]_29 ),
        .O(\ALUResult_OBUF[27]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55555555FDF75D57)) 
    \ALUResult_OBUF[27]_inst_i_3 
       (.I0(\ALUResult_OBUF[27]_inst_i_5_n_0 ),
        .I1(\i_alu/aD2M4dsP [27]),
        .I2(\q_reg[7]_1 ),
        .I3(\ALUResult_OBUF[28]_inst_i_1_0 [26]),
        .I4(\ALUResult_OBUF[27]_inst_i_6_n_0 ),
        .I5(\q_reg[6]_29 ),
        .O(\ALUResult_OBUF[27]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000070788AB)) 
    \ALUResult_OBUF[27]_inst_i_5 
       (.I0(PC[5]),
        .I1(PC[2]),
        .I2(PC[4]),
        .I3(PC[1]),
        .I4(PC[3]),
        .I5(PC[6]),
        .O(\ALUResult_OBUF[27]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hF03300AA)) 
    \ALUResult_OBUF[27]_inst_i_6 
       (.I0(\ALUResult_OBUF[27]_inst_i_7_n_0 ),
        .I1(Result0_carry__6_i_9_n_0),
        .I2(\ALUResult_OBUF[27]_inst_i_8_n_0 ),
        .I3(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .I4(\q_reg[6]_31 ),
        .O(\ALUResult_OBUF[27]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8A80)) 
    \ALUResult_OBUF[27]_inst_i_7 
       (.I0(Result0_carry__0_i_10_n_0),
        .I1(r15[26]),
        .I2(\q_reg[3]_5 ),
        .I3(rd20[27]),
        .O(\ALUResult_OBUF[27]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h8A80)) 
    \ALUResult_OBUF[27]_inst_i_8 
       (.I0(Result0_carry__0_i_10_n_0),
        .I1(r15[22]),
        .I2(\q_reg[3]_5 ),
        .I3(rd20[23]),
        .O(\ALUResult_OBUF[27]_inst_i_8_n_0 ));
  MUXF7 \ALUResult_OBUF[28]_inst_i_1 
       (.I0(\ALUResult_OBUF[28]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[28]_inst_i_3_n_0 ),
        .O(\q_reg[6]_26 ),
        .S(\q_reg[6]_28 ));
  LUT6 #(
    .INIT(64'hAA00FFAAD8D8D8D8)) 
    \ALUResult_OBUF[28]_inst_i_2 
       (.I0(\q_reg[7]_1 ),
        .I1(\ALUResult_OBUF[31]_inst_i_1_1 [27]),
        .I2(\ALUResult_OBUF[31]_inst_i_1_0 [27]),
        .I3(\ALUResult_OBUF[28]_inst_i_1_0 [27]),
        .I4(\i_alu/aD2M4dsP [28]),
        .I5(\q_reg[6]_29 ),
        .O(\ALUResult_OBUF[28]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCBC8383B)) 
    \ALUResult_OBUF[28]_inst_i_3 
       (.I0(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I1(\q_reg[7]_1 ),
        .I2(\q_reg[6]_29 ),
        .I3(\ALUResult_OBUF[28]_inst_i_1_0 [27]),
        .I4(\i_alu/aD2M4dsP [28]),
        .O(\ALUResult_OBUF[28]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA8080000)) 
    \ALUResult_OBUF[28]_inst_i_5 
       (.I0(Result0_carry__0_i_10_n_0),
        .I1(rd20[24]),
        .I2(\q_reg[3]_5 ),
        .I3(r15[23]),
        .I4(\ALUResult_OBUF[28]_inst_i_6_n_0 ),
        .I5(\ALUResult_OBUF[28]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[28]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \ALUResult_OBUF[28]_inst_i_6 
       (.I0(PC[4]),
        .I1(PC[2]),
        .I2(PC[1]),
        .I3(PC[6]),
        .I4(PC[3]),
        .I5(PC[5]),
        .O(\ALUResult_OBUF[28]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2A082A0808082A2A)) 
    \ALUResult_OBUF[28]_inst_i_7 
       (.I0(\ALUResult_OBUF[31]_inst_i_11_n_0 ),
        .I1(\ALUResult_OBUF[30]_inst_i_10_n_0 ),
        .I2(Result0_carry__6_i_9_n_0),
        .I3(SrcB[0]),
        .I4(\i_alu/aD2M4dsP [28]),
        .I5(\ALUResult_OBUF[5]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[28]_inst_i_7_n_0 ));
  MUXF7 \ALUResult_OBUF[29]_inst_i_1 
       (.I0(\ALUResult_OBUF[29]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[29]_inst_i_3_n_0 ),
        .O(\q_reg[6]_24 ),
        .S(\q_reg[6]_28 ));
  LUT6 #(
    .INIT(64'h00000000000D000A)) 
    \ALUResult_OBUF[29]_inst_i_10 
       (.I0(PC[2]),
        .I1(PC[1]),
        .I2(PC[5]),
        .I3(PC[3]),
        .I4(PC[4]),
        .I5(PC[6]),
        .O(\ALUResult_OBUF[29]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hE8FFE8F0E80FE800)) 
    \ALUResult_OBUF[29]_inst_i_2 
       (.I0(SrcA[29]),
        .I1(SrcB[29]),
        .I2(\q_reg[7]_1 ),
        .I3(\q_reg[6]_29 ),
        .I4(\ALUResult_OBUF[31]_inst_i_1_0 [28]),
        .I5(\ALUResult_OBUF[31]_inst_i_1_1 [28]),
        .O(\ALUResult_OBUF[29]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h383BCBC8)) 
    \ALUResult_OBUF[29]_inst_i_3 
       (.I0(\ALUResult_OBUF[29]_inst_i_5_n_0 ),
        .I1(\q_reg[7]_1 ),
        .I2(\q_reg[6]_29 ),
        .I3(SrcA[29]),
        .I4(SrcB[29]),
        .O(\ALUResult_OBUF[29]_inst_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[29]_inst_i_4 
       (.I0(r15[28]),
        .I1(\q_reg[3]_4 ),
        .I2(rd10[29]),
        .O(SrcA[29]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0002)) 
    \ALUResult_OBUF[29]_inst_i_5 
       (.I0(\ALUResult_OBUF[31]_inst_i_11_n_0 ),
        .I1(\ALUResult_OBUF[29]_inst_i_6_n_0 ),
        .I2(\ALUResult_OBUF[30]_inst_i_8_n_0 ),
        .I3(\ALUResult_OBUF[29]_inst_i_7_n_0 ),
        .I4(\ALUResult_OBUF[29]_inst_i_8_n_0 ),
        .I5(\ALUResult_OBUF[29]_inst_i_9_n_0 ),
        .O(\ALUResult_OBUF[29]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001515555)) 
    \ALUResult_OBUF[29]_inst_i_6 
       (.I0(\ALUResult_OBUF[29]_inst_i_10_n_0 ),
        .I1(rd20[1]),
        .I2(\q_reg[3]_5 ),
        .I3(r15[0]),
        .I4(Result0_carry__0_i_10_n_0),
        .I5(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .O(\ALUResult_OBUF[29]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000222AAA2A)) 
    \ALUResult_OBUF[29]_inst_i_7 
       (.I0(\ALUResult_OBUF[30]_inst_i_9_n_0 ),
        .I1(Result0_carry__0_i_10_n_0),
        .I2(rd20[29]),
        .I3(\q_reg[3]_5 ),
        .I4(r15[28]),
        .I5(\q_reg[6]_0 ),
        .O(\ALUResult_OBUF[29]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4044400000000000)) 
    \ALUResult_OBUF[29]_inst_i_8 
       (.I0(\q_reg[6]_31 ),
        .I1(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .I2(r15[28]),
        .I3(\q_reg[3]_5 ),
        .I4(rd20[29]),
        .I5(Result0_carry__0_i_10_n_0),
        .O(\ALUResult_OBUF[29]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8088800000000000)) 
    \ALUResult_OBUF[29]_inst_i_9 
       (.I0(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[5]_inst_i_6_n_0 ),
        .I2(r15[24]),
        .I3(\q_reg[3]_5 ),
        .I4(rd20[25]),
        .I5(Result0_carry__0_i_10_n_0),
        .O(\ALUResult_OBUF[29]_inst_i_9_n_0 ));
  MUXF7 \ALUResult_OBUF[2]_inst_i_1 
       (.I0(\ALUResult_OBUF[2]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[2]_inst_i_3_n_0 ),
        .O(\q_reg[6]_27 [0]),
        .S(\q_reg[6]_28 ));
  LUT6 #(
    .INIT(64'hAA00FFAAD8D8D8D8)) 
    \ALUResult_OBUF[2]_inst_i_2 
       (.I0(\q_reg[7]_1 ),
        .I1(\ALUResult_OBUF[31]_inst_i_1_1 [2]),
        .I2(\ALUResult_OBUF[31]_inst_i_1_0 [2]),
        .I3(\ALUResult_OBUF[28]_inst_i_1_0 [1]),
        .I4(\i_alu/aD2M4dsP [2]),
        .I5(\q_reg[6]_29 ),
        .O(\ALUResult_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF01FF0100F100F1F)) 
    \ALUResult_OBUF[2]_inst_i_3 
       (.I0(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[2]_inst_i_6_n_0 ),
        .I2(\q_reg[7]_1 ),
        .I3(\q_reg[6]_29 ),
        .I4(\ALUResult_OBUF[28]_inst_i_1_0 [1]),
        .I5(\i_alu/aD2M4dsP [2]),
        .O(\ALUResult_OBUF[2]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \ALUResult_OBUF[2]_inst_i_5 
       (.I0(PC[5]),
        .I1(PC[3]),
        .I2(PC[6]),
        .I3(PC[1]),
        .I4(PC[2]),
        .I5(PC[4]),
        .O(\ALUResult_OBUF[2]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h505C)) 
    \ALUResult_OBUF[2]_inst_i_6 
       (.I0(SrcB[6]),
        .I1(\i_alu/aD2M4dsP [2]),
        .I2(\q_reg[6]_31 ),
        .I3(\q_reg[6]_0 ),
        .O(\ALUResult_OBUF[2]_inst_i_6_n_0 ));
  MUXF7 \ALUResult_OBUF[30]_inst_i_1 
       (.I0(\ALUResult_OBUF[30]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[30]_inst_i_3_n_0 ),
        .O(\q_reg[6]_2 ),
        .S(\q_reg[6]_28 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \ALUResult_OBUF[30]_inst_i_10 
       (.I0(PC[2]),
        .I1(PC[4]),
        .I2(PC[5]),
        .I3(PC[1]),
        .I4(PC[6]),
        .I5(PC[3]),
        .O(\ALUResult_OBUF[30]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAAA00D8D8D8D8)) 
    \ALUResult_OBUF[30]_inst_i_2 
       (.I0(\q_reg[7]_1 ),
        .I1(\ALUResult_OBUF[31]_inst_i_1_1 [29]),
        .I2(\ALUResult_OBUF[31]_inst_i_1_0 [29]),
        .I3(SrcB[30]),
        .I4(SrcA[30]),
        .I5(\q_reg[6]_29 ),
        .O(\ALUResult_OBUF[30]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h383BCBC8)) 
    \ALUResult_OBUF[30]_inst_i_3 
       (.I0(\ALUResult_OBUF[30]_inst_i_5_n_0 ),
        .I1(\q_reg[7]_1 ),
        .I2(\q_reg[6]_29 ),
        .I3(SrcA[30]),
        .I4(SrcB[30]),
        .O(\ALUResult_OBUF[30]_inst_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[30]_inst_i_4 
       (.I0(r15[29]),
        .I1(\q_reg[3]_1 ),
        .I2(rd10[30]),
        .O(SrcA[30]));
  LUT6 #(
    .INIT(64'hABAAABABAAAAAAAA)) 
    \ALUResult_OBUF[30]_inst_i_5 
       (.I0(\ALUResult_OBUF[30]_inst_i_6_n_0 ),
        .I1(\ALUResult_OBUF[30]_inst_i_7_n_0 ),
        .I2(\ALUResult_OBUF[30]_inst_i_8_n_0 ),
        .I3(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I4(\i_alu/aD2M4dsP [2]),
        .I5(\ALUResult_OBUF[31]_inst_i_11_n_0 ),
        .O(\ALUResult_OBUF[30]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEEAAAEA00000000)) 
    \ALUResult_OBUF[30]_inst_i_6 
       (.I0(Result0_carry__0_i_12_n_0),
        .I1(Result0_carry__0_i_10_n_0),
        .I2(rd20[26]),
        .I3(\q_reg[3]_5 ),
        .I4(r15[25]),
        .I5(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[30]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000222AAA2A)) 
    \ALUResult_OBUF[30]_inst_i_7 
       (.I0(\ALUResult_OBUF[30]_inst_i_9_n_0 ),
        .I1(Result0_carry__0_i_10_n_0),
        .I2(rd20[30]),
        .I3(\q_reg[3]_5 ),
        .I4(r15[29]),
        .I5(\q_reg[6]_0 ),
        .O(\ALUResult_OBUF[30]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0202022222220222)) 
    \ALUResult_OBUF[30]_inst_i_8 
       (.I0(\ALUResult_OBUF[30]_inst_i_10_n_0 ),
        .I1(\q_reg[6]_0 ),
        .I2(Result0_carry__0_i_10_n_0),
        .I3(rd20[31]),
        .I4(\q_reg[3]_5 ),
        .I5(r15[30]),
        .O(\ALUResult_OBUF[30]_inst_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \ALUResult_OBUF[30]_inst_i_9 
       (.I0(PC[3]),
        .I1(PC[6]),
        .I2(PC[5]),
        .I3(PC[4]),
        .O(\ALUResult_OBUF[30]_inst_i_9_n_0 ));
  MUXF7 \ALUResult_OBUF[31]_inst_i_1 
       (.I0(\ALUResult_OBUF[31]_inst_i_3_n_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_4_n_0 ),
        .O(\q_reg[6]_1 ),
        .S(\q_reg[6]_28 ));
  LUT6 #(
    .INIT(64'hFFEFFFEEFFFFFFFF)) 
    \ALUResult_OBUF[31]_inst_i_10 
       (.I0(PC[5]),
        .I1(PC[6]),
        .I2(PC[2]),
        .I3(PC[4]),
        .I4(PC[1]),
        .I5(PC[3]),
        .O(\ALUResult_OBUF[31]_inst_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \ALUResult_OBUF[31]_inst_i_11 
       (.I0(PC[4]),
        .I1(PC[1]),
        .I2(PC[6]),
        .I3(PC[3]),
        .I4(PC[5]),
        .O(\ALUResult_OBUF[31]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0101222203030123)) 
    \ALUResult_OBUF[31]_inst_i_2 
       (.I0(PC[5]),
        .I1(PC[6]),
        .I2(PC[4]),
        .I3(PC[1]),
        .I4(PC[3]),
        .I5(PC[2]),
        .O(\q_reg[6]_28 ));
  LUT6 #(
    .INIT(64'hAA00FFAAD8D8D8D8)) 
    \ALUResult_OBUF[31]_inst_i_3 
       (.I0(\q_reg[7]_1 ),
        .I1(\ALUResult_OBUF[31]_inst_i_1_1 [30]),
        .I2(\ALUResult_OBUF[31]_inst_i_1_0 [30]),
        .I3(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I4(Result0_carry__6_i_9_n_0),
        .I5(\q_reg[6]_29 ),
        .O(\ALUResult_OBUF[31]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hCBC8383B)) 
    \ALUResult_OBUF[31]_inst_i_4 
       (.I0(\ALUResult_OBUF[31]_inst_i_7_n_0 ),
        .I1(\q_reg[7]_1 ),
        .I2(\q_reg[6]_29 ),
        .I3(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I4(Result0_carry__6_i_9_n_0),
        .O(\ALUResult_OBUF[31]_inst_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[31]_inst_i_5 
       (.I0(r15[30]),
        .I1(\q_reg[3]_1 ),
        .I2(rd10[31]),
        .O(\ALUResult_OBUF[31]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF88B00101)) 
    \ALUResult_OBUF[31]_inst_i_6 
       (.I0(PC[5]),
        .I1(PC[3]),
        .I2(PC[2]),
        .I3(PC[1]),
        .I4(PC[4]),
        .I5(PC[6]),
        .O(\q_reg[6]_29 ));
  LUT6 #(
    .INIT(64'hEFEEEFFFEEEEEEEE)) 
    \ALUResult_OBUF[31]_inst_i_7 
       (.I0(\ALUResult_OBUF[31]_inst_i_8_n_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .I2(Result0_carry__6_i_9_n_0),
        .I3(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I4(\i_alu/aD2M4dsP [3]),
        .I5(\ALUResult_OBUF[31]_inst_i_11_n_0 ),
        .O(\ALUResult_OBUF[31]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4044400000000000)) 
    \ALUResult_OBUF[31]_inst_i_8 
       (.I0(\q_reg[6]_31 ),
        .I1(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .I2(r15[30]),
        .I3(\q_reg[3]_5 ),
        .I4(rd20[31]),
        .I5(Result0_carry__0_i_10_n_0),
        .O(\ALUResult_OBUF[31]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8880008000000000)) 
    \ALUResult_OBUF[31]_inst_i_9 
       (.I0(\q_reg[6]_31 ),
        .I1(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .I2(rd20[27]),
        .I3(\q_reg[3]_5 ),
        .I4(r15[26]),
        .I5(Result0_carry__0_i_10_n_0),
        .O(\ALUResult_OBUF[31]_inst_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \ALUResult_OBUF[3]_inst_i_1 
       (.I0(\ALUResult_OBUF[3]_inst_i_2_n_0 ),
        .I1(\q_reg[6]_28 ),
        .I2(\ALUResult_OBUF[3]_inst_i_3_n_0 ),
        .O(\q_reg[6]_27 [1]));
  LUT6 #(
    .INIT(64'hAA00FFAAD8D8D8D8)) 
    \ALUResult_OBUF[3]_inst_i_2 
       (.I0(\q_reg[7]_1 ),
        .I1(\ALUResult_OBUF[31]_inst_i_1_1 [3]),
        .I2(\ALUResult_OBUF[31]_inst_i_1_0 [3]),
        .I3(\ALUResult_OBUF[28]_inst_i_1_0 [2]),
        .I4(\i_alu/aD2M4dsP [3]),
        .I5(\q_reg[6]_29 ),
        .O(\ALUResult_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFD55DD55DD55D)) 
    \ALUResult_OBUF[3]_inst_i_3 
       (.I0(\ALUResult_OBUF[27]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[23]_inst_i_5_n_0 ),
        .I2(\ALUResult_OBUF[28]_inst_i_1_0 [2]),
        .I3(\i_alu/aD2M4dsP [3]),
        .I4(\ALUResult_OBUF[3]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[23]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAFBBBB)) 
    \ALUResult_OBUF[3]_inst_i_5 
       (.I0(Result0_carry__0_i_12_n_0),
        .I1(\i_alu/aD2M4dsP [3]),
        .I2(\q_reg[3]_3 ),
        .I3(\q_reg[6]_0 ),
        .I4(\q_reg[6]_31 ),
        .I5(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[3]_inst_i_5_n_0 ));
  MUXF7 \ALUResult_OBUF[4]_inst_i_1 
       (.I0(\ALUResult_OBUF[4]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[4]_inst_i_3_n_0 ),
        .O(\q_reg[6]_27 [2]),
        .S(\q_reg[6]_28 ));
  LUT6 #(
    .INIT(64'hD4FFD4F0D40FD400)) 
    \ALUResult_OBUF[4]_inst_i_2 
       (.I0(\i_alu/aD2M4dsP [4]),
        .I1(\ALUResult_OBUF[28]_inst_i_1_0 [3]),
        .I2(\q_reg[7]_1 ),
        .I3(\q_reg[6]_29 ),
        .I4(\ALUResult_OBUF[31]_inst_i_1_0 [4]),
        .I5(\ALUResult_OBUF[31]_inst_i_1_1 [4]),
        .O(\ALUResult_OBUF[4]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCB38C83B)) 
    \ALUResult_OBUF[4]_inst_i_3 
       (.I0(\ALUResult_OBUF[4]_inst_i_5_n_0 ),
        .I1(\q_reg[7]_1 ),
        .I2(\q_reg[6]_29 ),
        .I3(\i_alu/aD2M4dsP [4]),
        .I4(\ALUResult_OBUF[28]_inst_i_1_0 [3]),
        .O(\ALUResult_OBUF[4]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hCCCC0F55)) 
    \ALUResult_OBUF[4]_inst_i_5 
       (.I0(\ALUResult_OBUF[8]_inst_i_7_n_0 ),
        .I1(SrcB[0]),
        .I2(\i_alu/aD2M4dsP [8]),
        .I3(\q_reg[6]_31 ),
        .I4(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[4]_inst_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \ALUResult_OBUF[5]_inst_i_1 
       (.I0(\ALUResult_OBUF[5]_inst_i_2_n_0 ),
        .I1(\q_reg[6]_28 ),
        .I2(\ALUResult_OBUF[5]_inst_i_3_n_0 ),
        .O(\q_reg[6]_27 [3]));
  LUT6 #(
    .INIT(64'hE8FFE8F0E80FE800)) 
    \ALUResult_OBUF[5]_inst_i_2 
       (.I0(\ALUResult_OBUF[28]_inst_i_1_0 [4]),
        .I1(SrcB[5]),
        .I2(\q_reg[7]_1 ),
        .I3(\q_reg[6]_29 ),
        .I4(\ALUResult_OBUF[31]_inst_i_1_0 [5]),
        .I5(\ALUResult_OBUF[31]_inst_i_1_1 [5]),
        .O(\ALUResult_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5DD55DD55DD5)) 
    \ALUResult_OBUF[5]_inst_i_3 
       (.I0(\ALUResult_OBUF[27]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[23]_inst_i_5_n_0 ),
        .I2(\ALUResult_OBUF[28]_inst_i_1_0 [4]),
        .I3(SrcB[5]),
        .I4(\ALUResult_OBUF[5]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[23]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[5]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8A80)) 
    \ALUResult_OBUF[5]_inst_i_4 
       (.I0(Result0_carry__0_i_10_n_0),
        .I1(r15[4]),
        .I2(\q_reg[3]_5 ),
        .I3(rd20[5]),
        .O(SrcB[5]));
  LUT6 #(
    .INIT(64'h7474777777747774)) 
    \ALUResult_OBUF[5]_inst_i_5 
       (.I0(\i_alu/aD2M4dsP [1]),
        .I1(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .I2(Result0_carry__0_i_12_n_0),
        .I3(SrcB[5]),
        .I4(\i_alu/aD2M4dsP [9]),
        .I5(\ALUResult_OBUF[5]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[5]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \ALUResult_OBUF[5]_inst_i_6 
       (.I0(PC[3]),
        .I1(PC[4]),
        .I2(PC[6]),
        .I3(PC[5]),
        .O(\ALUResult_OBUF[5]_inst_i_6_n_0 ));
  MUXF7 \ALUResult_OBUF[6]_inst_i_1 
       (.I0(\ALUResult_OBUF[6]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[6]_inst_i_3_n_0 ),
        .O(\q_reg[6]_27 [4]),
        .S(\q_reg[6]_28 ));
  LUT6 #(
    .INIT(64'hE8FFE8F0E80FE800)) 
    \ALUResult_OBUF[6]_inst_i_2 
       (.I0(\ALUResult_OBUF[28]_inst_i_1_0 [5]),
        .I1(SrcB[6]),
        .I2(\q_reg[7]_1 ),
        .I3(\q_reg[6]_29 ),
        .I4(\ALUResult_OBUF[31]_inst_i_1_0 [6]),
        .I5(\ALUResult_OBUF[31]_inst_i_1_1 [6]),
        .O(\ALUResult_OBUF[6]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h383BCBC8)) 
    \ALUResult_OBUF[6]_inst_i_3 
       (.I0(\ALUResult_OBUF[6]_inst_i_5_n_0 ),
        .I1(\q_reg[7]_1 ),
        .I2(\q_reg[6]_29 ),
        .I3(\ALUResult_OBUF[28]_inst_i_1_0 [5]),
        .I4(SrcB[6]),
        .O(\ALUResult_OBUF[6]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8A80)) 
    \ALUResult_OBUF[6]_inst_i_4 
       (.I0(Result0_carry__0_i_10_n_0),
        .I1(r15[5]),
        .I2(\q_reg[3]_5 ),
        .I3(rd20[6]),
        .O(SrcB[6]));
  LUT6 #(
    .INIT(64'h0000FFFFF2D0F2D0)) 
    \ALUResult_OBUF[6]_inst_i_5 
       (.I0(\q_reg[6]_31 ),
        .I1(\q_reg[6]_0 ),
        .I2(SrcB[6]),
        .I3(\ALUResult_OBUF[10]_inst_i_6_n_0 ),
        .I4(\i_alu/aD2M4dsP [2]),
        .I5(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[6]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFD55DD55DD55D)) 
    \ALUResult_OBUF[7]_inst_i_3 
       (.I0(\ALUResult_OBUF[27]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[23]_inst_i_5_n_0 ),
        .I2(\ALUResult_OBUF[28]_inst_i_1_0 [6]),
        .I3(\q_reg[3]_3 ),
        .I4(\ALUResult_OBUF[7]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[23]_inst_i_7_n_0 ),
        .O(\q_reg[6]_33 ));
  LUT5 #(
    .INIT(32'h00FFE4E4)) 
    \ALUResult_OBUF[7]_inst_i_5 
       (.I0(\q_reg[6]_31 ),
        .I1(\ALUResult_OBUF[7]_inst_i_6_n_0 ),
        .I2(\ALUResult_OBUF[11]_inst_i_6_n_0 ),
        .I3(\i_alu/aD2M4dsP [3]),
        .I4(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[7]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8A80)) 
    \ALUResult_OBUF[7]_inst_i_6 
       (.I0(Result0_carry__0_i_10_n_0),
        .I1(r15[6]),
        .I2(\q_reg[3]_5 ),
        .I3(rd20[7]),
        .O(\ALUResult_OBUF[7]_inst_i_6_n_0 ));
  MUXF7 \ALUResult_OBUF[8]_inst_i_1 
       (.I0(\ALUResult_OBUF[8]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[8]_inst_i_3_n_0 ),
        .O(\q_reg[6]_7 ),
        .S(\q_reg[6]_28 ));
  LUT6 #(
    .INIT(64'hAA00FFAAD8D8D8D8)) 
    \ALUResult_OBUF[8]_inst_i_2 
       (.I0(\q_reg[7]_1 ),
        .I1(\ALUResult_OBUF[31]_inst_i_1_1 [7]),
        .I2(\ALUResult_OBUF[31]_inst_i_1_0 [7]),
        .I3(\ALUResult_OBUF[28]_inst_i_1_0 [7]),
        .I4(\i_alu/aD2M4dsP [8]),
        .I5(\q_reg[6]_29 ),
        .O(\ALUResult_OBUF[8]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCB38C83B)) 
    \ALUResult_OBUF[8]_inst_i_3 
       (.I0(\ALUResult_OBUF[8]_inst_i_5_n_0 ),
        .I1(\q_reg[7]_1 ),
        .I2(\q_reg[6]_29 ),
        .I3(\i_alu/aD2M4dsP [8]),
        .I4(\ALUResult_OBUF[28]_inst_i_1_0 [7]),
        .O(\ALUResult_OBUF[8]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h3300F0AA)) 
    \ALUResult_OBUF[8]_inst_i_5 
       (.I0(\ALUResult_OBUF[8]_inst_i_6_n_0 ),
        .I1(\ALUResult_OBUF[8]_inst_i_7_n_0 ),
        .I2(SrcB[12]),
        .I3(\q_reg[6]_31 ),
        .I4(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[8]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8A80)) 
    \ALUResult_OBUF[8]_inst_i_6 
       (.I0(Result0_carry__0_i_10_n_0),
        .I1(r15[7]),
        .I2(\q_reg[3]_5 ),
        .I3(rd20[8]),
        .O(\ALUResult_OBUF[8]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h1DFF)) 
    \ALUResult_OBUF[8]_inst_i_7 
       (.I0(rd20[4]),
        .I1(\q_reg[3]_5 ),
        .I2(r15[3]),
        .I3(Result0_carry__0_i_10_n_0),
        .O(\ALUResult_OBUF[8]_inst_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \ALUResult_OBUF[9]_inst_i_1 
       (.I0(\ALUResult_OBUF[9]_inst_i_2_n_0 ),
        .I1(\q_reg[6]_28 ),
        .I2(\ALUResult_OBUF[9]_inst_i_3_n_0 ),
        .O(\q_reg[6]_4 ));
  LUT6 #(
    .INIT(64'hAA00FFAAD8D8D8D8)) 
    \ALUResult_OBUF[9]_inst_i_2 
       (.I0(\q_reg[7]_1 ),
        .I1(\ALUResult_OBUF[31]_inst_i_1_1 [8]),
        .I2(\ALUResult_OBUF[31]_inst_i_1_0 [8]),
        .I3(\ALUResult_OBUF[28]_inst_i_1_0 [8]),
        .I4(\i_alu/aD2M4dsP [9]),
        .I5(\q_reg[6]_29 ),
        .O(\ALUResult_OBUF[9]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFD55DD55DD55D)) 
    \ALUResult_OBUF[9]_inst_i_3 
       (.I0(\ALUResult_OBUF[27]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[23]_inst_i_5_n_0 ),
        .I2(\ALUResult_OBUF[28]_inst_i_1_0 [8]),
        .I3(\i_alu/aD2M4dsP [9]),
        .I4(\ALUResult_OBUF[9]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[23]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[9]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2222222222FF2F2F)) 
    \ALUResult_OBUF[9]_inst_i_5 
       (.I0(\ALUResult_OBUF[9]_inst_i_6_n_0 ),
        .I1(\ALUResult_OBUF[9]_inst_i_7_n_0 ),
        .I2(\ALUResult_OBUF[9]_inst_i_8_n_0 ),
        .I3(\i_alu/aD2M4dsP [13]),
        .I4(\q_reg[6]_31 ),
        .I5(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[9]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDCBDFFFFFFFF)) 
    \ALUResult_OBUF[9]_inst_i_6 
       (.I0(PC[2]),
        .I1(PC[4]),
        .I2(PC[5]),
        .I3(PC[1]),
        .I4(PC[6]),
        .I5(PC[3]),
        .O(\ALUResult_OBUF[9]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBBBFFFBFFFFFFFFF)) 
    \ALUResult_OBUF[9]_inst_i_7 
       (.I0(\q_reg[6]_0 ),
        .I1(\q_reg[6]_31 ),
        .I2(rd20[5]),
        .I3(\q_reg[3]_5 ),
        .I4(r15[4]),
        .I5(Result0_carry__0_i_10_n_0),
        .O(\ALUResult_OBUF[9]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h47FF)) 
    \ALUResult_OBUF[9]_inst_i_8 
       (.I0(r15[8]),
        .I1(\q_reg[3]_5 ),
        .I2(rd20[9]),
        .I3(Result0_carry__0_i_10_n_0),
        .O(\ALUResult_OBUF[9]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000004434B2B0)) 
    \Instr_OBUF[0]_inst_i_1 
       (.I0(PC[5]),
        .I1(PC[3]),
        .I2(PC[2]),
        .I3(PC[1]),
        .I4(PC[4]),
        .I5(PC[6]),
        .O(Instr_OBUF[0]));
  LUT6 #(
    .INIT(64'h0020020000000000)) 
    \Instr_OBUF[11]_inst_i_1 
       (.I0(PC[5]),
        .I1(PC[6]),
        .I2(PC[2]),
        .I3(PC[4]),
        .I4(PC[1]),
        .I5(PC[3]),
        .O(\q_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h0000000049113834)) 
    \Instr_OBUF[12]_inst_i_1 
       (.I0(PC[3]),
        .I1(PC[2]),
        .I2(PC[4]),
        .I3(PC[5]),
        .I4(PC[1]),
        .I5(PC[6]),
        .O(Instr_OBUF[6]));
  LUT6 #(
    .INIT(64'h0400054045541404)) 
    \Instr_OBUF[13]_inst_i_1 
       (.I0(PC[6]),
        .I1(PC[3]),
        .I2(PC[4]),
        .I3(PC[1]),
        .I4(PC[2]),
        .I5(PC[5]),
        .O(Instr_OBUF[7]));
  LUT6 #(
    .INIT(64'h000000004826A820)) 
    \Instr_OBUF[14]_inst_i_1 
       (.I0(PC[4]),
        .I1(PC[1]),
        .I2(PC[3]),
        .I3(PC[2]),
        .I4(PC[5]),
        .I5(PC[6]),
        .O(Instr_OBUF[8]));
  LUT6 #(
    .INIT(64'h0044044040400440)) 
    \Instr_OBUF[15]_inst_i_1 
       (.I0(PC[6]),
        .I1(PC[5]),
        .I2(PC[2]),
        .I3(PC[4]),
        .I4(PC[1]),
        .I5(PC[3]),
        .O(Instr_OBUF[9]));
  LUT6 #(
    .INIT(64'h0000402400002080)) 
    \Instr_OBUF[16]_inst_i_1 
       (.I0(PC[4]),
        .I1(PC[5]),
        .I2(PC[3]),
        .I3(PC[2]),
        .I4(PC[6]),
        .I5(PC[1]),
        .O(Instr_OBUF[10]));
  LUT6 #(
    .INIT(64'h1000040400040000)) 
    \Instr_OBUF[17]_inst_i_1 
       (.I0(PC[6]),
        .I1(PC[4]),
        .I2(PC[1]),
        .I3(PC[3]),
        .I4(PC[2]),
        .I5(PC[5]),
        .O(Instr_OBUF[11]));
  LUT6 #(
    .INIT(64'h1000440004100400)) 
    \Instr_OBUF[18]_inst_i_1 
       (.I0(PC[6]),
        .I1(PC[4]),
        .I2(PC[1]),
        .I3(PC[3]),
        .I4(PC[5]),
        .I5(PC[2]),
        .O(Instr_OBUF[12]));
  LUT6 #(
    .INIT(64'h0400040000000A00)) 
    \Instr_OBUF[19]_inst_i_1 
       (.I0(PC[4]),
        .I1(PC[3]),
        .I2(PC[6]),
        .I3(PC[5]),
        .I4(PC[1]),
        .I5(PC[2]),
        .O(Instr_OBUF[13]));
  LUT6 #(
    .INIT(64'h00000000148F8F9A)) 
    \Instr_OBUF[1]_inst_i_1 
       (.I0(PC[2]),
        .I1(PC[1]),
        .I2(PC[5]),
        .I3(PC[3]),
        .I4(PC[4]),
        .I5(PC[6]),
        .O(Instr_OBUF[1]));
  LUT6 #(
    .INIT(64'h00000000441810A0)) 
    \Instr_OBUF[20]_inst_i_1 
       (.I0(PC[4]),
        .I1(PC[3]),
        .I2(PC[1]),
        .I3(PC[2]),
        .I4(PC[5]),
        .I5(PC[6]),
        .O(Instr_OBUF[14]));
  LUT6 #(
    .INIT(64'h00000000202AED6F)) 
    \Instr_OBUF[21]_inst_i_1 
       (.I0(PC[5]),
        .I1(PC[3]),
        .I2(PC[2]),
        .I3(PC[1]),
        .I4(PC[4]),
        .I5(PC[6]),
        .O(Instr_OBUF[15]));
  LUT6 #(
    .INIT(64'h0040041004004010)) 
    \Instr_OBUF[22]_inst_i_1 
       (.I0(PC[6]),
        .I1(PC[3]),
        .I2(PC[1]),
        .I3(PC[4]),
        .I4(PC[2]),
        .I5(PC[5]),
        .O(Instr_OBUF[16]));
  LUT6 #(
    .INIT(64'h1333131310133133)) 
    \Instr_OBUF[23]_inst_i_1 
       (.I0(PC[4]),
        .I1(PC[6]),
        .I2(PC[3]),
        .I3(PC[5]),
        .I4(PC[1]),
        .I5(PC[2]),
        .O(Instr_OBUF[17]));
  LUT6 #(
    .INIT(64'h00000000033BF79F)) 
    \Instr_OBUF[24]_inst_i_1 
       (.I0(PC[1]),
        .I1(PC[4]),
        .I2(PC[5]),
        .I3(PC[2]),
        .I4(PC[3]),
        .I5(PC[6]),
        .O(Instr_OBUF[18]));
  LUT6 #(
    .INIT(64'h0000000024405819)) 
    \Instr_OBUF[25]_inst_i_1 
       (.I0(PC[3]),
        .I1(PC[4]),
        .I2(PC[1]),
        .I3(PC[5]),
        .I4(PC[2]),
        .I5(PC[6]),
        .O(Instr_OBUF[19]));
  LUT5 #(
    .INIT(32'h00010100)) 
    \Instr_OBUF[26]_inst_i_1 
       (.I0(PC[6]),
        .I1(PC[3]),
        .I2(PC[5]),
        .I3(PC[2]),
        .I4(PC[4]),
        .O(\q_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h0000148000000000)) 
    \Instr_OBUF[27]_inst_i_1 
       (.I0(PC[2]),
        .I1(PC[3]),
        .I2(PC[1]),
        .I3(PC[4]),
        .I4(PC[6]),
        .I5(PC[5]),
        .O(\q_reg[3]_1 ));
  LUT6 #(
    .INIT(64'h0000400000400000)) 
    \Instr_OBUF[28]_inst_i_1 
       (.I0(PC[6]),
        .I1(PC[1]),
        .I2(PC[2]),
        .I3(PC[3]),
        .I4(PC[5]),
        .I5(PC[4]),
        .O(Instr_OBUF[20]));
  LUT6 #(
    .INIT(64'h0551155515511555)) 
    \Instr_OBUF[29]_inst_i_1 
       (.I0(PC[6]),
        .I1(PC[2]),
        .I2(PC[4]),
        .I3(PC[3]),
        .I4(PC[5]),
        .I5(PC[1]),
        .O(Instr_OBUF[21]));
  LUT6 #(
    .INIT(64'h00000000228095E6)) 
    \Instr_OBUF[2]_inst_i_1 
       (.I0(PC[2]),
        .I1(PC[5]),
        .I2(PC[1]),
        .I3(PC[4]),
        .I4(PC[3]),
        .I5(PC[6]),
        .O(Instr_OBUF[2]));
  LUT6 #(
    .INIT(64'h0555155515551555)) 
    \Instr_OBUF[30]_inst_i_1 
       (.I0(PC[6]),
        .I1(PC[2]),
        .I2(PC[4]),
        .I3(PC[3]),
        .I4(PC[5]),
        .I5(PC[1]),
        .O(Instr_OBUF[22]));
  LUT6 #(
    .INIT(64'h0015550515555555)) 
    \Instr_OBUF[31]_inst_i_1 
       (.I0(PC[6]),
        .I1(PC[1]),
        .I2(PC[5]),
        .I3(PC[4]),
        .I4(PC[3]),
        .I5(PC[2]),
        .O(Instr_OBUF[23]));
  LUT6 #(
    .INIT(64'h0201012000010100)) 
    \Instr_OBUF[3]_inst_i_1 
       (.I0(PC[5]),
        .I1(PC[6]),
        .I2(PC[3]),
        .I3(PC[4]),
        .I4(PC[2]),
        .I5(PC[1]),
        .O(Instr_OBUF[3]));
  LUT6 #(
    .INIT(64'h0040040000400040)) 
    \Instr_OBUF[5]_inst_i_1 
       (.I0(PC[6]),
        .I1(PC[3]),
        .I2(PC[2]),
        .I3(PC[4]),
        .I4(PC[1]),
        .I5(PC[5]),
        .O(Instr_OBUF[4]));
  LUT6 #(
    .INIT(64'h0000202002000020)) 
    \Instr_OBUF[6]_inst_i_1 
       (.I0(PC[3]),
        .I1(PC[6]),
        .I2(PC[1]),
        .I3(PC[5]),
        .I4(PC[4]),
        .I5(PC[2]),
        .O(Instr_OBUF[5]));
  LUT6 #(
    .INIT(64'h000000080C040404)) 
    \Instr_OBUF[9]_inst_i_1 
       (.I0(PC[5]),
        .I1(PC[3]),
        .I2(PC[6]),
        .I3(PC[1]),
        .I4(PC[2]),
        .I5(PC[4]),
        .O(\q_reg[6]_31 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDBFBB540)) 
    Result0_carry__0_i_10
       (.I0(PC[1]),
        .I1(PC[4]),
        .I2(PC[2]),
        .I3(PC[5]),
        .I4(PC[3]),
        .I5(PC[6]),
        .O(Result0_carry__0_i_10_n_0));
  LUT5 #(
    .INIT(32'h0000757F)) 
    Result0_carry__0_i_11
       (.I0(Result0_carry__0_i_10_n_0),
        .I1(r15[3]),
        .I2(\q_reg[3]_5 ),
        .I3(rd20[4]),
        .I4(Result0_carry__0_i_12_n_0),
        .O(\i_alu/aD2M4dsP [4]));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    Result0_carry__0_i_12
       (.I0(PC[5]),
        .I1(PC[3]),
        .I2(PC[2]),
        .I3(PC[1]),
        .I4(PC[4]),
        .I5(PC[6]),
        .O(Result0_carry__0_i_12_n_0));
  LUT4 #(
    .INIT(16'hE21D)) 
    Result0_carry__0_i_5
       (.I0(rd10[7]),
        .I1(\q_reg[3]_4 ),
        .I2(r15[6]),
        .I3(\q_reg[3]_3 ),
        .O(\q_reg[3]_6 [3]));
  LUT6 #(
    .INIT(64'h111E22D2EEEE2222)) 
    Result0_carry__0_i_6
       (.I0(rd10[6]),
        .I1(\q_reg[3]_4 ),
        .I2(rd20[6]),
        .I3(\q_reg[3]_5 ),
        .I4(r15[5]),
        .I5(Result0_carry__0_i_10_n_0),
        .O(\q_reg[3]_6 [2]));
  LUT6 #(
    .INIT(64'h111E22D2EEEE2222)) 
    Result0_carry__0_i_7
       (.I0(rd10[5]),
        .I1(\q_reg[3]_4 ),
        .I2(rd20[5]),
        .I3(\q_reg[3]_5 ),
        .I4(r15[4]),
        .I5(Result0_carry__0_i_10_n_0),
        .O(\q_reg[3]_6 [1]));
  LUT4 #(
    .INIT(16'hE21D)) 
    Result0_carry__0_i_8
       (.I0(rd10[4]),
        .I1(\q_reg[3]_4 ),
        .I2(r15[3]),
        .I3(\i_alu/aD2M4dsP [4]),
        .O(\q_reg[3]_6 [0]));
  LUT5 #(
    .INIT(32'h00001DFF)) 
    Result0_carry__0_i_9
       (.I0(rd20[7]),
        .I1(\q_reg[3]_5 ),
        .I2(r15[6]),
        .I3(Result0_carry__0_i_10_n_0),
        .I4(\q_reg[6]_0 ),
        .O(\q_reg[3]_3 ));
  LUT5 #(
    .INIT(32'h00001DFF)) 
    Result0_carry__1_i_10
       (.I0(rd20[10]),
        .I1(\q_reg[3]_5 ),
        .I2(r15[9]),
        .I3(Result0_carry__0_i_10_n_0),
        .I4(\q_reg[6]_0 ),
        .O(\i_alu/aD2M4dsP [10]));
  LUT5 #(
    .INIT(32'h000057F7)) 
    Result0_carry__1_i_11
       (.I0(Result0_carry__0_i_10_n_0),
        .I1(rd20[9]),
        .I2(\q_reg[3]_5 ),
        .I3(r15[8]),
        .I4(\q_reg[6]_0 ),
        .O(\i_alu/aD2M4dsP [9]));
  LUT5 #(
    .INIT(32'h00001DFF)) 
    Result0_carry__1_i_12
       (.I0(rd20[8]),
        .I1(\q_reg[3]_5 ),
        .I2(r15[7]),
        .I3(Result0_carry__0_i_10_n_0),
        .I4(\q_reg[6]_0 ),
        .O(\i_alu/aD2M4dsP [8]));
  LUT4 #(
    .INIT(16'hE21D)) 
    Result0_carry__1_i_5
       (.I0(rd10[11]),
        .I1(\q_reg[3]_1 ),
        .I2(r15[10]),
        .I3(\i_alu/aD2M4dsP [11]),
        .O(\q_reg[3]_8 [3]));
  LUT4 #(
    .INIT(16'hE21D)) 
    Result0_carry__1_i_6
       (.I0(rd10[10]),
        .I1(\q_reg[3]_1 ),
        .I2(r15[9]),
        .I3(\i_alu/aD2M4dsP [10]),
        .O(\q_reg[3]_8 [2]));
  LUT4 #(
    .INIT(16'hE21D)) 
    Result0_carry__1_i_7
       (.I0(rd10[9]),
        .I1(\q_reg[3]_1 ),
        .I2(r15[8]),
        .I3(\i_alu/aD2M4dsP [9]),
        .O(\q_reg[3]_8 [1]));
  LUT4 #(
    .INIT(16'hE21D)) 
    Result0_carry__1_i_8
       (.I0(rd10[8]),
        .I1(\q_reg[3]_1 ),
        .I2(r15[7]),
        .I3(\i_alu/aD2M4dsP [8]),
        .O(\q_reg[3]_8 [0]));
  LUT5 #(
    .INIT(32'h00001DFF)) 
    Result0_carry__1_i_9
       (.I0(rd20[11]),
        .I1(\q_reg[3]_5 ),
        .I2(r15[10]),
        .I3(Result0_carry__0_i_10_n_0),
        .I4(\q_reg[6]_0 ),
        .O(\i_alu/aD2M4dsP [11]));
  LUT5 #(
    .INIT(32'h00001DFF)) 
    Result0_carry__2_i_10
       (.I0(rd20[14]),
        .I1(\q_reg[3]_5 ),
        .I2(r15[13]),
        .I3(Result0_carry__0_i_10_n_0),
        .I4(\q_reg[6]_0 ),
        .O(\i_alu/aD2M4dsP [14]));
  LUT5 #(
    .INIT(32'h00001DFF)) 
    Result0_carry__2_i_11
       (.I0(rd20[13]),
        .I1(\q_reg[3]_5 ),
        .I2(r15[12]),
        .I3(Result0_carry__0_i_10_n_0),
        .I4(\q_reg[6]_0 ),
        .O(\i_alu/aD2M4dsP [13]));
  LUT5 #(
    .INIT(32'hFEAEAAAA)) 
    Result0_carry__2_i_12
       (.I0(\q_reg[6]_0 ),
        .I1(rd20[12]),
        .I2(\q_reg[3]_5 ),
        .I3(r15[11]),
        .I4(Result0_carry__0_i_10_n_0),
        .O(SrcB[12]));
  LUT4 #(
    .INIT(16'hE21D)) 
    Result0_carry__2_i_5
       (.I0(rd10[15]),
        .I1(\q_reg[3]_1 ),
        .I2(r15[14]),
        .I3(\i_alu/aD2M4dsP [15]),
        .O(\q_reg[3]_10 [3]));
  LUT4 #(
    .INIT(16'hE21D)) 
    Result0_carry__2_i_6
       (.I0(rd10[14]),
        .I1(\q_reg[3]_1 ),
        .I2(r15[13]),
        .I3(\i_alu/aD2M4dsP [14]),
        .O(\q_reg[3]_10 [2]));
  LUT4 #(
    .INIT(16'hE21D)) 
    Result0_carry__2_i_7
       (.I0(rd10[13]),
        .I1(\q_reg[3]_1 ),
        .I2(r15[12]),
        .I3(\i_alu/aD2M4dsP [13]),
        .O(\q_reg[3]_10 [1]));
  LUT4 #(
    .INIT(16'h47B8)) 
    Result0_carry__2_i_8
       (.I0(r15[11]),
        .I1(\q_reg[3]_1 ),
        .I2(rd10[12]),
        .I3(SrcB[12]),
        .O(\q_reg[3]_10 [0]));
  LUT5 #(
    .INIT(32'h00001DFF)) 
    Result0_carry__2_i_9
       (.I0(rd20[15]),
        .I1(\q_reg[3]_5 ),
        .I2(r15[14]),
        .I3(Result0_carry__0_i_10_n_0),
        .I4(\q_reg[6]_0 ),
        .O(\i_alu/aD2M4dsP [15]));
  LUT5 #(
    .INIT(32'h00001DFF)) 
    Result0_carry__3_i_10
       (.I0(rd20[18]),
        .I1(\q_reg[3]_5 ),
        .I2(r15[17]),
        .I3(Result0_carry__0_i_10_n_0),
        .I4(\q_reg[6]_0 ),
        .O(\i_alu/aD2M4dsP [18]));
  LUT5 #(
    .INIT(32'h00001DFF)) 
    Result0_carry__3_i_11
       (.I0(rd20[17]),
        .I1(\q_reg[3]_5 ),
        .I2(r15[16]),
        .I3(Result0_carry__0_i_10_n_0),
        .I4(\q_reg[6]_0 ),
        .O(\i_alu/aD2M4dsP [17]));
  LUT5 #(
    .INIT(32'hFFFFE200)) 
    Result0_carry__3_i_12
       (.I0(rd20[16]),
        .I1(\q_reg[3]_5 ),
        .I2(r15[15]),
        .I3(Result0_carry__0_i_10_n_0),
        .I4(\q_reg[6]_0 ),
        .O(SrcB[16]));
  LUT4 #(
    .INIT(16'hE21D)) 
    Result0_carry__3_i_5
       (.I0(rd10[19]),
        .I1(\q_reg[3]_1 ),
        .I2(r15[18]),
        .I3(\i_alu/aD2M4dsP [19]),
        .O(\q_reg[3]_12 [3]));
  LUT4 #(
    .INIT(16'hE21D)) 
    Result0_carry__3_i_6
       (.I0(rd10[18]),
        .I1(\q_reg[3]_1 ),
        .I2(r15[17]),
        .I3(\i_alu/aD2M4dsP [18]),
        .O(\q_reg[3]_12 [2]));
  LUT4 #(
    .INIT(16'hE21D)) 
    Result0_carry__3_i_7
       (.I0(rd10[17]),
        .I1(\q_reg[3]_1 ),
        .I2(r15[16]),
        .I3(\i_alu/aD2M4dsP [17]),
        .O(\q_reg[3]_12 [1]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    Result0_carry__3_i_8
       (.I0(rd10[16]),
        .I1(\q_reg[3]_1 ),
        .I2(r15[15]),
        .I3(SrcB[16]),
        .O(\q_reg[3]_12 [0]));
  LUT5 #(
    .INIT(32'h00001DFF)) 
    Result0_carry__3_i_9
       (.I0(rd20[19]),
        .I1(\q_reg[3]_5 ),
        .I2(r15[18]),
        .I3(Result0_carry__0_i_10_n_0),
        .I4(\q_reg[6]_0 ),
        .O(\i_alu/aD2M4dsP [19]));
  LUT5 #(
    .INIT(32'hFFFFE200)) 
    Result0_carry__4_i_10
       (.I0(rd20[22]),
        .I1(\q_reg[3]_5 ),
        .I2(r15[21]),
        .I3(Result0_carry__0_i_10_n_0),
        .I4(\q_reg[6]_0 ),
        .O(SrcB[22]));
  LUT5 #(
    .INIT(32'hFEAEAAAA)) 
    Result0_carry__4_i_11
       (.I0(\q_reg[6]_0 ),
        .I1(rd20[21]),
        .I2(\q_reg[3]_5 ),
        .I3(r15[20]),
        .I4(Result0_carry__0_i_10_n_0),
        .O(SrcB[21]));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    Result0_carry__4_i_12
       (.I0(r15[19]),
        .I1(\q_reg[3]_5 ),
        .I2(rd20[20]),
        .I3(Result0_carry__0_i_10_n_0),
        .I4(\q_reg[6]_0 ),
        .O(SrcB[20]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    Result0_carry__4_i_5
       (.I0(rd10[23]),
        .I1(\q_reg[3]_1 ),
        .I2(r15[22]),
        .I3(SrcB[23]),
        .O(\q_reg[3]_21 [3]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    Result0_carry__4_i_6
       (.I0(rd10[22]),
        .I1(\q_reg[3]_1 ),
        .I2(r15[21]),
        .I3(SrcB[22]),
        .O(\q_reg[3]_21 [2]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    Result0_carry__4_i_7
       (.I0(rd10[21]),
        .I1(\q_reg[3]_1 ),
        .I2(r15[20]),
        .I3(SrcB[21]),
        .O(\q_reg[3]_21 [1]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    Result0_carry__4_i_8
       (.I0(rd10[20]),
        .I1(\q_reg[3]_1 ),
        .I2(r15[19]),
        .I3(SrcB[20]),
        .O(\q_reg[3]_21 [0]));
  LUT5 #(
    .INIT(32'hFEAEAAAA)) 
    Result0_carry__4_i_9
       (.I0(\q_reg[6]_0 ),
        .I1(rd20[23]),
        .I2(\q_reg[3]_5 ),
        .I3(r15[22]),
        .I4(Result0_carry__0_i_10_n_0),
        .O(SrcB[23]));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    Result0_carry__5_i_10
       (.I0(\q_reg[6]_0 ),
        .I1(r15[25]),
        .I2(\q_reg[3]_5 ),
        .I3(rd20[26]),
        .I4(Result0_carry__0_i_10_n_0),
        .O(SrcB[26]));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    Result0_carry__5_i_11
       (.I0(\q_reg[6]_0 ),
        .I1(r15[24]),
        .I2(\q_reg[3]_5 ),
        .I3(rd20[25]),
        .I4(Result0_carry__0_i_10_n_0),
        .O(SrcB[25]));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    Result0_carry__5_i_12
       (.I0(\q_reg[6]_0 ),
        .I1(r15[23]),
        .I2(\q_reg[3]_5 ),
        .I3(rd20[24]),
        .I4(Result0_carry__0_i_10_n_0),
        .O(SrcB[24]));
  LUT4 #(
    .INIT(16'hE21D)) 
    Result0_carry__5_i_5
       (.I0(rd10[27]),
        .I1(\q_reg[3]_1 ),
        .I2(r15[26]),
        .I3(\i_alu/aD2M4dsP [27]),
        .O(\q_reg[3]_16 [3]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    Result0_carry__5_i_6
       (.I0(rd10[26]),
        .I1(\q_reg[3]_1 ),
        .I2(r15[25]),
        .I3(SrcB[26]),
        .O(\q_reg[3]_16 [2]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    Result0_carry__5_i_7
       (.I0(rd10[25]),
        .I1(\q_reg[3]_1 ),
        .I2(r15[24]),
        .I3(SrcB[25]),
        .O(\q_reg[3]_16 [1]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    Result0_carry__5_i_8
       (.I0(rd10[24]),
        .I1(\q_reg[3]_1 ),
        .I2(r15[23]),
        .I3(SrcB[24]),
        .O(\q_reg[3]_16 [0]));
  LUT5 #(
    .INIT(32'h00001DFF)) 
    Result0_carry__5_i_9
       (.I0(rd20[27]),
        .I1(\q_reg[3]_5 ),
        .I2(r15[26]),
        .I3(Result0_carry__0_i_10_n_0),
        .I4(\q_reg[6]_0 ),
        .O(\i_alu/aD2M4dsP [27]));
  LUT3 #(
    .INIT(8'h1D)) 
    Result0_carry__6_i_1
       (.I0(rd10[31]),
        .I1(\q_reg[3]_1 ),
        .I2(r15[30]),
        .O(\q_reg[3]_20 [2]));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    Result0_carry__6_i_10
       (.I0(\q_reg[6]_0 ),
        .I1(r15[29]),
        .I2(\q_reg[3]_5 ),
        .I3(rd20[30]),
        .I4(Result0_carry__0_i_10_n_0),
        .O(SrcB[30]));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    Result0_carry__6_i_11
       (.I0(\q_reg[6]_0 ),
        .I1(r15[28]),
        .I2(\q_reg[3]_5 ),
        .I3(rd20[29]),
        .I4(Result0_carry__0_i_10_n_0),
        .O(SrcB[29]));
  LUT5 #(
    .INIT(32'h000047FF)) 
    Result0_carry__6_i_12
       (.I0(r15[27]),
        .I1(\q_reg[3]_5 ),
        .I2(rd20[28]),
        .I3(Result0_carry__0_i_10_n_0),
        .I4(\q_reg[6]_0 ),
        .O(\i_alu/aD2M4dsP [28]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__6_i_2
       (.I0(r15[29]),
        .I1(\q_reg[3]_1 ),
        .I2(rd10[30]),
        .O(\q_reg[3]_20 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry__6_i_3
       (.I0(r15[28]),
        .I1(\q_reg[3]_1 ),
        .I2(rd10[29]),
        .O(\q_reg[3]_20 [0]));
  LUT4 #(
    .INIT(16'hB847)) 
    Result0_carry__6_i_5
       (.I0(r15[30]),
        .I1(\q_reg[3]_1 ),
        .I2(rd10[31]),
        .I3(Result0_carry__6_i_9_n_0),
        .O(\q_reg[3]_0 [3]));
  LUT4 #(
    .INIT(16'h47B8)) 
    Result0_carry__6_i_6
       (.I0(r15[29]),
        .I1(\q_reg[3]_1 ),
        .I2(rd10[30]),
        .I3(SrcB[30]),
        .O(\q_reg[3]_0 [2]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    Result0_carry__6_i_7
       (.I0(rd10[29]),
        .I1(\q_reg[3]_1 ),
        .I2(r15[28]),
        .I3(SrcB[29]),
        .O(\q_reg[3]_0 [1]));
  LUT4 #(
    .INIT(16'hB847)) 
    Result0_carry__6_i_8
       (.I0(r15[27]),
        .I1(\q_reg[3]_1 ),
        .I2(rd10[28]),
        .I3(\i_alu/aD2M4dsP [28]),
        .O(\q_reg[3]_0 [0]));
  LUT5 #(
    .INIT(32'h000047FF)) 
    Result0_carry__6_i_9
       (.I0(r15[30]),
        .I1(\q_reg[3]_5 ),
        .I2(rd20[31]),
        .I3(Result0_carry__0_i_10_n_0),
        .I4(\q_reg[6]_0 ),
        .O(Result0_carry__6_i_9_n_0));
  LUT5 #(
    .INIT(32'h222EEE2E)) 
    Result0_carry_i_10
       (.I0(Result0_carry_i_13_n_0),
        .I1(Result0_carry__0_i_10_n_0),
        .I2(rd20[2]),
        .I3(\q_reg[3]_5 ),
        .I4(r15[1]),
        .O(\i_alu/aD2M4dsP [2]));
  LUT6 #(
    .INIT(64'h4747FFFF4747FF00)) 
    Result0_carry_i_11
       (.I0(r15[0]),
        .I1(\q_reg[3]_5 ),
        .I2(rd20[1]),
        .I3(\q_reg[3]_4 ),
        .I4(Result0_carry__0_i_10_n_0),
        .I5(Result0_carry_i_14_n_0),
        .O(\i_alu/aD2M4dsP [1]));
  LUT6 #(
    .INIT(64'hB8B80000B8B800FF)) 
    Result0_carry_i_12
       (.I0(\q_reg[0]_0 ),
        .I1(\q_reg[3]_5 ),
        .I2(rd20[0]),
        .I3(Result0_carry_i_15_n_0),
        .I4(Result0_carry__0_i_10_n_0),
        .I5(\q_reg[3]_4 ),
        .O(SrcB[0]));
  LUT6 #(
    .INIT(64'hEAFFBEBEFEEEEFEF)) 
    Result0_carry_i_13
       (.I0(PC[6]),
        .I1(PC[3]),
        .I2(PC[4]),
        .I3(PC[1]),
        .I4(PC[5]),
        .I5(PC[2]),
        .O(Result0_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'hEAEAFFEAFFABBEEB)) 
    Result0_carry_i_14
       (.I0(PC[6]),
        .I1(PC[4]),
        .I2(PC[3]),
        .I3(PC[5]),
        .I4(PC[1]),
        .I5(PC[2]),
        .O(Result0_carry_i_14_n_0));
  LUT6 #(
    .INIT(64'hEEFFEAEFBFBBEAFF)) 
    Result0_carry_i_15
       (.I0(PC[6]),
        .I1(PC[4]),
        .I2(PC[1]),
        .I3(PC[2]),
        .I4(PC[3]),
        .I5(PC[5]),
        .O(Result0_carry_i_15_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    Result0_carry_i_4
       (.I0(\q_reg[0]_0 ),
        .I1(\q_reg[3]_4 ),
        .I2(rd10[0]),
        .O(DI));
  LUT4 #(
    .INIT(16'hE21D)) 
    Result0_carry_i_5
       (.I0(rd10[3]),
        .I1(\q_reg[3]_4 ),
        .I2(r15[2]),
        .I3(\i_alu/aD2M4dsP [3]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'hB847)) 
    Result0_carry_i_6
       (.I0(r15[1]),
        .I1(\q_reg[3]_4 ),
        .I2(rd10[2]),
        .I3(\i_alu/aD2M4dsP [2]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'hB847)) 
    Result0_carry_i_7
       (.I0(r15[0]),
        .I1(\q_reg[3]_4 ),
        .I2(rd10[1]),
        .I3(\i_alu/aD2M4dsP [1]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    Result0_carry_i_8
       (.I0(rd10[0]),
        .I1(\q_reg[3]_4 ),
        .I2(\q_reg[0]_0 ),
        .I3(SrcB[0]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h0100011111111111)) 
    Result0_carry_i_9
       (.I0(\q_reg[7]_0 ),
        .I1(\q_reg[6]_0 ),
        .I2(r15[2]),
        .I3(\q_reg[3]_5 ),
        .I4(rd20[3]),
        .I5(Result0_carry__0_i_10_n_0),
        .O(\i_alu/aD2M4dsP [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[0]_inst_i_1 
       (.I0(rd[0]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_25 ),
        .O(Result_OBUF[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[10]_inst_i_1 
       (.I0(rd[10]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_5 ),
        .O(Result_OBUF[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[11]_inst_i_1 
       (.I0(rd[11]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_6 ),
        .O(Result_OBUF[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[12]_inst_i_1 
       (.I0(rd[12]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_8 ),
        .O(Result_OBUF[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[13]_inst_i_1 
       (.I0(rd[13]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_9 ),
        .O(Result_OBUF[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[14]_inst_i_1 
       (.I0(rd[14]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_10 ),
        .O(Result_OBUF[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[15]_inst_i_1 
       (.I0(rd[15]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_11 ),
        .O(Result_OBUF[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[16]_inst_i_1 
       (.I0(rd[16]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_12 ),
        .O(Result_OBUF[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[17]_inst_i_1 
       (.I0(rd[17]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_13 ),
        .O(Result_OBUF[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[18]_inst_i_1 
       (.I0(rd[18]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_14 ),
        .O(Result_OBUF[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[19]_inst_i_1 
       (.I0(rd[19]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_15 ),
        .O(Result_OBUF[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[1]_inst_i_1 
       (.I0(rd[1]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_3 ),
        .O(Result_OBUF[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[20]_inst_i_1 
       (.I0(rd[20]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_16 ),
        .O(Result_OBUF[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[21]_inst_i_1 
       (.I0(rd[21]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_17 ),
        .O(Result_OBUF[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[22]_inst_i_1 
       (.I0(rd[22]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_18 ),
        .O(Result_OBUF[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[23]_inst_i_1 
       (.I0(rd[23]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_19 ),
        .O(Result_OBUF[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[24]_inst_i_1 
       (.I0(rd[24]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_20 ),
        .O(Result_OBUF[23]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[25]_inst_i_1 
       (.I0(rd[25]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_21 ),
        .O(Result_OBUF[24]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[26]_inst_i_1 
       (.I0(rd[26]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_22 ),
        .O(Result_OBUF[25]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[27]_inst_i_1 
       (.I0(rd[27]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_23 ),
        .O(Result_OBUF[26]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[28]_inst_i_1 
       (.I0(rd[28]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_26 ),
        .O(Result_OBUF[27]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[29]_inst_i_1 
       (.I0(rd[29]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_24 ),
        .O(Result_OBUF[28]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[2]_inst_i_1 
       (.I0(rd[2]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_27 [0]),
        .O(Result_OBUF[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[30]_inst_i_1 
       (.I0(rd[30]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_2 ),
        .O(Result_OBUF[29]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[31]_inst_i_1 
       (.I0(rd[31]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_1 ),
        .O(Result_OBUF[30]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[3]_inst_i_1 
       (.I0(rd[3]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_27 [1]),
        .O(Result_OBUF[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[4]_inst_i_1 
       (.I0(rd[4]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_27 [2]),
        .O(Result_OBUF[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[5]_inst_i_1 
       (.I0(rd[5]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_27 [3]),
        .O(Result_OBUF[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[6]_inst_i_1 
       (.I0(rd[6]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_27 [4]),
        .O(Result_OBUF[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[8]_inst_i_1 
       (.I0(rd[8]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_7 ),
        .O(Result_OBUF[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Result_OBUF[9]_inst_i_1 
       (.I0(rd[9]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_4 ),
        .O(Result_OBUF[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \WriteData_OBUF[0]_inst_i_1 
       (.I0(\q_reg[0]_0 ),
        .I1(\q_reg[3]_5 ),
        .I2(rd20[0]),
        .O(wd[0]));
  LUT3 #(
    .INIT(8'hE2)) 
    \WriteData_OBUF[29]_inst_i_1 
       (.I0(rd20[29]),
        .I1(\q_reg[3]_5 ),
        .I2(r15[28]),
        .O(wd[1]));
  LUT3 #(
    .INIT(8'hE2)) 
    \WriteData_OBUF[30]_inst_i_1 
       (.I0(rd20[30]),
        .I1(\q_reg[3]_5 ),
        .I2(r15[29]),
        .O(wd[2]));
  LUT3 #(
    .INIT(8'hE2)) 
    \WriteData_OBUF[31]_inst_i_1 
       (.I0(rd20[31]),
        .I1(\q_reg[3]_5 ),
        .I2(r15[30]),
        .O(wd[3]));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \WriteData_OBUF[31]_inst_i_2 
       (.I0(PC[2]),
        .I1(PC[5]),
        .I2(PC[1]),
        .I3(PC[4]),
        .I4(PC[3]),
        .I5(PC[6]),
        .O(\q_reg[3]_5 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    i__carry__0_i_3
       (.I0(r15[6]),
        .I1(\q_reg[3]_4 ),
        .I2(rd10[7]),
        .I3(\q_reg[3]_3 ),
        .O(\q_reg[3]_2 [3]));
  LUT6 #(
    .INIT(64'hED47B847ED474747)) 
    i__carry__0_i_4
       (.I0(r15[5]),
        .I1(\q_reg[3]_4 ),
        .I2(rd10[6]),
        .I3(Result0_carry__0_i_10_n_0),
        .I4(\q_reg[3]_5 ),
        .I5(rd20[6]),
        .O(\q_reg[3]_2 [2]));
  LUT6 #(
    .INIT(64'hED47B847ED474747)) 
    i__carry__0_i_5
       (.I0(r15[4]),
        .I1(\q_reg[3]_4 ),
        .I2(rd10[5]),
        .I3(Result0_carry__0_i_10_n_0),
        .I4(\q_reg[3]_5 ),
        .I5(rd20[5]),
        .O(\q_reg[3]_2 [1]));
  LUT4 #(
    .INIT(16'h656A)) 
    i__carry__0_i_6
       (.I0(\i_alu/aD2M4dsP [4]),
        .I1(r15[3]),
        .I2(\q_reg[3]_4 ),
        .I3(rd10[4]),
        .O(\q_reg[3]_2 [0]));
  LUT4 #(
    .INIT(16'h656A)) 
    i__carry__1_i_5
       (.I0(\i_alu/aD2M4dsP [11]),
        .I1(r15[10]),
        .I2(\q_reg[3]_1 ),
        .I3(rd10[11]),
        .O(\q_reg[3]_7 [3]));
  LUT4 #(
    .INIT(16'h656A)) 
    i__carry__1_i_6
       (.I0(\i_alu/aD2M4dsP [10]),
        .I1(r15[9]),
        .I2(\q_reg[3]_1 ),
        .I3(rd10[10]),
        .O(\q_reg[3]_7 [2]));
  LUT4 #(
    .INIT(16'h47B8)) 
    i__carry__1_i_7
       (.I0(r15[8]),
        .I1(\q_reg[3]_1 ),
        .I2(rd10[9]),
        .I3(\i_alu/aD2M4dsP [9]),
        .O(\q_reg[3]_7 [1]));
  LUT4 #(
    .INIT(16'h656A)) 
    i__carry__1_i_8
       (.I0(\i_alu/aD2M4dsP [8]),
        .I1(r15[7]),
        .I2(\q_reg[3]_1 ),
        .I3(rd10[8]),
        .O(\q_reg[3]_7 [0]));
  LUT4 #(
    .INIT(16'h47B8)) 
    i__carry__2_i_5
       (.I0(r15[14]),
        .I1(\q_reg[3]_1 ),
        .I2(rd10[15]),
        .I3(\i_alu/aD2M4dsP [15]),
        .O(\q_reg[3]_9 [3]));
  LUT4 #(
    .INIT(16'h656A)) 
    i__carry__2_i_6
       (.I0(\i_alu/aD2M4dsP [14]),
        .I1(r15[13]),
        .I2(\q_reg[3]_1 ),
        .I3(rd10[14]),
        .O(\q_reg[3]_9 [2]));
  LUT4 #(
    .INIT(16'h47B8)) 
    i__carry__2_i_7
       (.I0(r15[12]),
        .I1(\q_reg[3]_1 ),
        .I2(rd10[13]),
        .I3(\i_alu/aD2M4dsP [13]),
        .O(\q_reg[3]_9 [1]));
  LUT4 #(
    .INIT(16'hE21D)) 
    i__carry__2_i_8
       (.I0(rd10[12]),
        .I1(\q_reg[3]_1 ),
        .I2(r15[11]),
        .I3(SrcB[12]),
        .O(\q_reg[3]_9 [0]));
  LUT4 #(
    .INIT(16'h47B8)) 
    i__carry__3_i_5
       (.I0(r15[18]),
        .I1(\q_reg[3]_1 ),
        .I2(rd10[19]),
        .I3(\i_alu/aD2M4dsP [19]),
        .O(\q_reg[3]_11 [3]));
  LUT4 #(
    .INIT(16'h47B8)) 
    i__carry__3_i_6
       (.I0(r15[17]),
        .I1(\q_reg[3]_1 ),
        .I2(rd10[18]),
        .I3(\i_alu/aD2M4dsP [18]),
        .O(\q_reg[3]_11 [2]));
  LUT4 #(
    .INIT(16'h47B8)) 
    i__carry__3_i_7
       (.I0(r15[16]),
        .I1(\q_reg[3]_1 ),
        .I2(rd10[17]),
        .I3(\i_alu/aD2M4dsP [17]),
        .O(\q_reg[3]_11 [1]));
  LUT4 #(
    .INIT(16'hB847)) 
    i__carry__3_i_8
       (.I0(r15[15]),
        .I1(\q_reg[3]_1 ),
        .I2(rd10[16]),
        .I3(SrcB[16]),
        .O(\q_reg[3]_11 [0]));
  LUT4 #(
    .INIT(16'hB847)) 
    i__carry__4_i_5
       (.I0(r15[22]),
        .I1(\q_reg[3]_1 ),
        .I2(rd10[23]),
        .I3(SrcB[23]),
        .O(\q_reg[3]_13 [3]));
  LUT4 #(
    .INIT(16'hB847)) 
    i__carry__4_i_6
       (.I0(r15[21]),
        .I1(\q_reg[3]_1 ),
        .I2(rd10[22]),
        .I3(SrcB[22]),
        .O(\q_reg[3]_13 [2]));
  LUT4 #(
    .INIT(16'hB847)) 
    i__carry__4_i_7
       (.I0(r15[20]),
        .I1(\q_reg[3]_1 ),
        .I2(rd10[21]),
        .I3(SrcB[21]),
        .O(\q_reg[3]_13 [1]));
  LUT4 #(
    .INIT(16'hB847)) 
    i__carry__4_i_8
       (.I0(r15[19]),
        .I1(\q_reg[3]_1 ),
        .I2(rd10[20]),
        .I3(SrcB[20]),
        .O(\q_reg[3]_13 [0]));
  LUT4 #(
    .INIT(16'h656A)) 
    i__carry__5_i_5
       (.I0(\i_alu/aD2M4dsP [27]),
        .I1(r15[26]),
        .I2(\q_reg[3]_4 ),
        .I3(rd10[27]),
        .O(\q_reg[3]_14 [3]));
  LUT4 #(
    .INIT(16'hB847)) 
    i__carry__5_i_6
       (.I0(r15[25]),
        .I1(\q_reg[3]_4 ),
        .I2(rd10[26]),
        .I3(SrcB[26]),
        .O(\q_reg[3]_14 [2]));
  LUT4 #(
    .INIT(16'hB847)) 
    i__carry__5_i_7
       (.I0(r15[24]),
        .I1(\q_reg[3]_4 ),
        .I2(rd10[25]),
        .I3(SrcB[25]),
        .O(\q_reg[3]_14 [1]));
  LUT4 #(
    .INIT(16'hB847)) 
    i__carry__5_i_8
       (.I0(r15[23]),
        .I1(\q_reg[3]_4 ),
        .I2(rd10[24]),
        .I3(SrcB[24]),
        .O(\q_reg[3]_14 [0]));
  LUT3 #(
    .INIT(8'h1D)) 
    i__carry__6_i_1
       (.I0(rd10[31]),
        .I1(\q_reg[3]_4 ),
        .I2(r15[30]),
        .O(\q_reg[3]_19 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__6_i_2
       (.I0(r15[29]),
        .I1(\q_reg[3]_4 ),
        .I2(rd10[30]),
        .O(\q_reg[3]_19 [0]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    i__carry__6_i_5
       (.I0(rd10[31]),
        .I1(\q_reg[3]_4 ),
        .I2(r15[30]),
        .I3(Result0_carry__6_i_9_n_0),
        .O(\q_reg[3]_15 [3]));
  LUT4 #(
    .INIT(16'hE21D)) 
    i__carry__6_i_6
       (.I0(rd10[30]),
        .I1(\q_reg[3]_4 ),
        .I2(r15[29]),
        .I3(SrcB[30]),
        .O(\q_reg[3]_15 [2]));
  LUT4 #(
    .INIT(16'hB847)) 
    i__carry__6_i_7
       (.I0(r15[28]),
        .I1(\q_reg[3]_4 ),
        .I2(rd10[29]),
        .I3(SrcB[29]),
        .O(\q_reg[3]_15 [1]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    i__carry__6_i_8
       (.I0(rd10[28]),
        .I1(\q_reg[3]_4 ),
        .I2(r15[27]),
        .I3(\i_alu/aD2M4dsP [28]),
        .O(\q_reg[3]_15 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_4
       (.I0(\q_reg[0]_0 ),
        .I1(\q_reg[3]_4 ),
        .I2(rd10[0]),
        .O(\q_reg[0]_1 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    i__carry_i_5
       (.I0(r15[2]),
        .I1(\q_reg[3]_4 ),
        .I2(rd10[3]),
        .I3(\i_alu/aD2M4dsP [3]),
        .O(\q_reg[3]_17 [3]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    i__carry_i_6
       (.I0(rd10[2]),
        .I1(\q_reg[3]_4 ),
        .I2(r15[1]),
        .I3(\i_alu/aD2M4dsP [2]),
        .O(\q_reg[3]_17 [2]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    i__carry_i_7
       (.I0(rd10[1]),
        .I1(\q_reg[3]_4 ),
        .I2(r15[0]),
        .I3(\i_alu/aD2M4dsP [1]),
        .O(\q_reg[3]_17 [1]));
  LUT4 #(
    .INIT(16'hB847)) 
    i__carry_i_8
       (.I0(\q_reg[0]_0 ),
        .I1(\q_reg[3]_4 ),
        .I2(rd10[0]),
        .I3(SrcB[0]),
        .O(\q_reg[3]_17 [0]));
  LUT6 #(
    .INIT(64'h0000000000010100)) 
    mem_reg_0_63_0_0_i_1
       (.I0(PC[6]),
        .I1(PC[3]),
        .I2(PC[5]),
        .I3(PC[2]),
        .I4(PC[4]),
        .I5(PC[1]),
        .O(MemWrite));
  LUT6 #(
    .INIT(64'h0000AA2A00000000)) 
    mem_reg_r1_0_15_0_5_i_1
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(Instr_OBUF[16]),
        .I2(Instr_OBUF[18]),
        .I3(Instr_OBUF[17]),
        .I4(\q_reg[6]_0 ),
        .I5(mem_reg_r1_0_15_0_5_i_16_n_0),
        .O(RegWrite));
  LUT6 #(
    .INIT(64'h0000000002268000)) 
    mem_reg_r1_0_15_0_5_i_10
       (.I0(PC[5]),
        .I1(PC[2]),
        .I2(PC[3]),
        .I3(PC[1]),
        .I4(PC[4]),
        .I5(PC[6]),
        .O(\q_reg[3]_18 [1]));
  LUT6 #(
    .INIT(64'h0102120020020000)) 
    mem_reg_r1_0_15_0_5_i_11
       (.I0(PC[1]),
        .I1(PC[6]),
        .I2(PC[2]),
        .I3(PC[3]),
        .I4(PC[5]),
        .I5(PC[4]),
        .O(\q_reg[3]_18 [0]));
  LUT6 #(
    .INIT(64'h0000000050E030C0)) 
    mem_reg_r1_0_15_0_5_i_12
       (.I0(PC[3]),
        .I1(PC[2]),
        .I2(PC[5]),
        .I3(PC[4]),
        .I4(PC[1]),
        .I5(PC[6]),
        .O(RA3[2]));
  LUT6 #(
    .INIT(64'h000000005C903A00)) 
    mem_reg_r1_0_15_0_5_i_13
       (.I0(PC[3]),
        .I1(PC[2]),
        .I2(PC[5]),
        .I3(PC[4]),
        .I4(PC[1]),
        .I5(PC[6]),
        .O(RA3[1]));
  LUT6 #(
    .INIT(64'h0000000019BE2C0A)) 
    mem_reg_r1_0_15_0_5_i_14
       (.I0(PC[3]),
        .I1(PC[2]),
        .I2(PC[5]),
        .I3(PC[4]),
        .I4(PC[1]),
        .I5(PC[6]),
        .O(RA3[0]));
  LUT6 #(
    .INIT(64'hEEEEAEEAAAAAAEEA)) 
    mem_reg_r1_0_15_0_5_i_15
       (.I0(mem_reg_r1_0_15_0_5_i_18_n_0),
        .I1(Instr_OBUF[22]),
        .I2(Instr_OBUF[20]),
        .I3(q),
        .I4(Instr_OBUF[21]),
        .I5(\q_reg[0]_2 ),
        .O(mem_reg_r1_0_15_0_5_i_15_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEB)) 
    mem_reg_r1_0_15_0_5_i_16
       (.I0(PC[1]),
        .I1(PC[4]),
        .I2(PC[2]),
        .I3(PC[5]),
        .I4(PC[3]),
        .I5(PC[6]),
        .O(mem_reg_r1_0_15_0_5_i_16_n_0));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    mem_reg_r1_0_15_0_5_i_17
       (.I0(PC[6]),
        .I1(PC[1]),
        .I2(PC[4]),
        .I3(PC[5]),
        .I4(PC[2]),
        .I5(PC[3]),
        .O(mem_reg_r1_0_15_0_5_i_17_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF55140014)) 
    mem_reg_r1_0_15_0_5_i_18
       (.I0(Instr_OBUF[22]),
        .I1(Instr_OBUF[20]),
        .I2(mem_reg_r1_0_15_0_5_i_15_0),
        .I3(Instr_OBUF[21]),
        .I4(mem_reg_r1_0_15_0_5_i_15_1),
        .I5(Instr_OBUF[23]),
        .O(mem_reg_r1_0_15_0_5_i_18_n_0));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    mem_reg_r1_0_15_0_5_i_2
       (.I0(rd[1]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_3 ),
        .I3(d1[0]),
        .I4(mem_reg_r1_0_15_0_5_i_17_n_0),
        .O(wd3[1]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    mem_reg_r1_0_15_0_5_i_3
       (.I0(rd[0]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_25 ),
        .I3(\q_reg[0]_0 ),
        .I4(mem_reg_r1_0_15_0_5_i_17_n_0),
        .O(wd3[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    mem_reg_r1_0_15_0_5_i_4
       (.I0(d1[2]),
        .I1(mem_reg_r1_0_15_0_5_i_17_n_0),
        .I2(rd[3]),
        .I3(\q_reg[7]_0 ),
        .I4(\q_reg[6]_27 [1]),
        .O(wd3[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    mem_reg_r1_0_15_0_5_i_5
       (.I0(d1[1]),
        .I1(mem_reg_r1_0_15_0_5_i_17_n_0),
        .I2(rd[2]),
        .I3(\q_reg[7]_0 ),
        .I4(\q_reg[6]_27 [0]),
        .O(wd3[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    mem_reg_r1_0_15_0_5_i_6
       (.I0(d1[4]),
        .I1(mem_reg_r1_0_15_0_5_i_17_n_0),
        .I2(rd[5]),
        .I3(\q_reg[7]_0 ),
        .I4(\q_reg[6]_27 [3]),
        .O(wd3[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    mem_reg_r1_0_15_0_5_i_7
       (.I0(d1[3]),
        .I1(mem_reg_r1_0_15_0_5_i_17_n_0),
        .I2(rd[4]),
        .I3(\q_reg[7]_0 ),
        .I4(\q_reg[6]_27 [2]),
        .O(wd3[4]));
  LUT6 #(
    .INIT(64'h0010005000A00000)) 
    mem_reg_r1_0_15_0_5_i_8
       (.I0(PC[2]),
        .I1(PC[1]),
        .I2(PC[5]),
        .I3(PC[6]),
        .I4(PC[3]),
        .I5(PC[4]),
        .O(\q_reg[3]_18 [3]));
  LUT6 #(
    .INIT(64'h0000000024708400)) 
    mem_reg_r1_0_15_0_5_i_9
       (.I0(PC[2]),
        .I1(PC[5]),
        .I2(PC[3]),
        .I3(PC[1]),
        .I4(PC[4]),
        .I5(PC[6]),
        .O(\q_reg[3]_18 [2]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    mem_reg_r1_0_15_12_17_i_1
       (.I0(rd[13]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_9 ),
        .I3(d1[12]),
        .I4(mem_reg_r1_0_15_0_5_i_17_n_0),
        .O(wd3[13]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    mem_reg_r1_0_15_12_17_i_2
       (.I0(rd[12]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_8 ),
        .I3(d1[11]),
        .I4(mem_reg_r1_0_15_0_5_i_17_n_0),
        .O(wd3[12]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    mem_reg_r1_0_15_12_17_i_3
       (.I0(rd[15]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_11 ),
        .I3(d1[14]),
        .I4(mem_reg_r1_0_15_0_5_i_17_n_0),
        .O(wd3[15]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    mem_reg_r1_0_15_12_17_i_4
       (.I0(rd[14]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_10 ),
        .I3(d1[13]),
        .I4(mem_reg_r1_0_15_0_5_i_17_n_0),
        .O(wd3[14]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    mem_reg_r1_0_15_12_17_i_5
       (.I0(rd[17]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_13 ),
        .I3(d1[16]),
        .I4(mem_reg_r1_0_15_0_5_i_17_n_0),
        .O(wd3[17]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    mem_reg_r1_0_15_12_17_i_6
       (.I0(rd[16]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_12 ),
        .I3(d1[15]),
        .I4(mem_reg_r1_0_15_0_5_i_17_n_0),
        .O(wd3[16]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    mem_reg_r1_0_15_18_23_i_1
       (.I0(rd[19]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_15 ),
        .I3(d1[18]),
        .I4(mem_reg_r1_0_15_0_5_i_17_n_0),
        .O(wd3[19]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    mem_reg_r1_0_15_18_23_i_2
       (.I0(rd[18]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_14 ),
        .I3(d1[17]),
        .I4(mem_reg_r1_0_15_0_5_i_17_n_0),
        .O(wd3[18]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    mem_reg_r1_0_15_18_23_i_3
       (.I0(rd[21]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_17 ),
        .I3(d1[20]),
        .I4(mem_reg_r1_0_15_0_5_i_17_n_0),
        .O(wd3[21]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    mem_reg_r1_0_15_18_23_i_4
       (.I0(rd[20]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_16 ),
        .I3(d1[19]),
        .I4(mem_reg_r1_0_15_0_5_i_17_n_0),
        .O(wd3[20]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    mem_reg_r1_0_15_18_23_i_5
       (.I0(rd[23]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_19 ),
        .I3(d1[22]),
        .I4(mem_reg_r1_0_15_0_5_i_17_n_0),
        .O(wd3[23]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    mem_reg_r1_0_15_18_23_i_6
       (.I0(rd[22]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_18 ),
        .I3(d1[21]),
        .I4(mem_reg_r1_0_15_0_5_i_17_n_0),
        .O(wd3[22]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    mem_reg_r1_0_15_24_29_i_1
       (.I0(rd[25]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_21 ),
        .I3(d1[24]),
        .I4(mem_reg_r1_0_15_0_5_i_17_n_0),
        .O(wd3[25]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    mem_reg_r1_0_15_24_29_i_2
       (.I0(rd[24]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_20 ),
        .I3(d1[23]),
        .I4(mem_reg_r1_0_15_0_5_i_17_n_0),
        .O(wd3[24]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    mem_reg_r1_0_15_24_29_i_3
       (.I0(rd[27]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_23 ),
        .I3(d1[26]),
        .I4(mem_reg_r1_0_15_0_5_i_17_n_0),
        .O(wd3[27]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    mem_reg_r1_0_15_24_29_i_4
       (.I0(rd[26]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_22 ),
        .I3(d1[25]),
        .I4(mem_reg_r1_0_15_0_5_i_17_n_0),
        .O(wd3[26]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    mem_reg_r1_0_15_24_29_i_5
       (.I0(rd[29]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_24 ),
        .I3(d1[28]),
        .I4(mem_reg_r1_0_15_0_5_i_17_n_0),
        .O(wd3[29]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    mem_reg_r1_0_15_24_29_i_6
       (.I0(d1[27]),
        .I1(mem_reg_r1_0_15_0_5_i_17_n_0),
        .I2(rd[28]),
        .I3(\q_reg[7]_0 ),
        .I4(\q_reg[6]_26 ),
        .O(wd3[28]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    mem_reg_r1_0_15_30_31__0_i_1
       (.I0(rd[31]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_1 ),
        .I3(d1[30]),
        .I4(mem_reg_r1_0_15_0_5_i_17_n_0),
        .O(wd3[31]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    mem_reg_r1_0_15_30_31_i_1
       (.I0(rd[30]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_2 ),
        .I3(d1[29]),
        .I4(mem_reg_r1_0_15_0_5_i_17_n_0),
        .O(wd3[30]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    mem_reg_r1_0_15_6_11_i_1
       (.I0(d1[6]),
        .I1(mem_reg_r1_0_15_0_5_i_17_n_0),
        .I2(rd[7]),
        .I3(\q_reg[7]_0 ),
        .I4(p_0_in),
        .O(wd3[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    mem_reg_r1_0_15_6_11_i_2
       (.I0(d1[5]),
        .I1(mem_reg_r1_0_15_0_5_i_17_n_0),
        .I2(rd[6]),
        .I3(\q_reg[7]_0 ),
        .I4(\q_reg[6]_27 [4]),
        .O(wd3[6]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    mem_reg_r1_0_15_6_11_i_3
       (.I0(rd[9]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_4 ),
        .I3(d1[8]),
        .I4(mem_reg_r1_0_15_0_5_i_17_n_0),
        .O(wd3[9]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    mem_reg_r1_0_15_6_11_i_4
       (.I0(rd[8]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_7 ),
        .I3(d1[7]),
        .I4(mem_reg_r1_0_15_0_5_i_17_n_0),
        .O(wd3[8]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    mem_reg_r1_0_15_6_11_i_5
       (.I0(rd[11]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_6 ),
        .I3(d1[10]),
        .I4(mem_reg_r1_0_15_0_5_i_17_n_0),
        .O(wd3[11]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    mem_reg_r1_0_15_6_11_i_6
       (.I0(rd[10]),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[6]_5 ),
        .I3(d1[9]),
        .I4(mem_reg_r1_0_15_0_5_i_17_n_0),
        .O(wd3[10]));
  LUT6 #(
    .INIT(64'h1001014000000000)) 
    mem_reg_r2_0_15_0_5_i_1
       (.I0(PC[6]),
        .I1(PC[3]),
        .I2(PC[5]),
        .I3(PC[2]),
        .I4(PC[4]),
        .I5(PC[1]),
        .O(ADDRA[3]));
  LUT6 #(
    .INIT(64'h00000000228094E4)) 
    mem_reg_r2_0_15_0_5_i_2
       (.I0(PC[2]),
        .I1(PC[5]),
        .I2(PC[1]),
        .I3(PC[4]),
        .I4(PC[3]),
        .I5(PC[6]),
        .O(ADDRA[2]));
  LUT6 #(
    .INIT(64'h00000000148E8F98)) 
    mem_reg_r2_0_15_0_5_i_3
       (.I0(PC[2]),
        .I1(PC[1]),
        .I2(PC[5]),
        .I3(PC[3]),
        .I4(PC[4]),
        .I5(PC[6]),
        .O(ADDRA[1]));
  LUT6 #(
    .INIT(64'h1100151040441504)) 
    mem_reg_r2_0_15_0_5_i_4
       (.I0(PC[6]),
        .I1(PC[4]),
        .I2(PC[1]),
        .I3(PC[2]),
        .I4(PC[3]),
        .I5(PC[5]),
        .O(ADDRA[0]));
  LUT6 #(
    .INIT(64'hF7FFF77780888000)) 
    \q[0]_i_1 
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(\q_reg[3]_4 ),
        .I2(rd[0]),
        .I3(\q_reg[7]_0 ),
        .I4(\q_reg[6]_25 ),
        .I5(\q_reg[0]_0 ),
        .O(\q[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \q[0]_i_100 
       (.I0(rd10[4]),
        .I1(\q_reg[3]_4 ),
        .I2(r15[3]),
        .I3(\i_alu/aD2M4dsP [4]),
        .O(\q[0]_i_100_n_0 ));
  LUT6 #(
    .INIT(64'h1F1F1FE02020DF20)) 
    \q[0]_i_101 
       (.I0(rd20[5]),
        .I1(\q_reg[3]_5 ),
        .I2(Result0_carry__0_i_10_n_0),
        .I3(rd10[5]),
        .I4(\q_reg[3]_4 ),
        .I5(r15[4]),
        .O(\q[0]_i_101_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \q[0]_i_102 
       (.I0(rd10[10]),
        .I1(\q_reg[3]_4 ),
        .I2(r15[9]),
        .I3(\i_alu/aD2M4dsP [10]),
        .O(\q[0]_i_102_n_0 ));
  LUT4 #(
    .INIT(16'hA959)) 
    \q[0]_i_103 
       (.I0(\i_alu/aD2M4dsP [13]),
        .I1(rd10[13]),
        .I2(\q_reg[3]_4 ),
        .I3(r15[12]),
        .O(\q[0]_i_103_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \q[0]_i_104 
       (.I0(rd10[8]),
        .I1(\q_reg[3]_4 ),
        .I2(r15[7]),
        .I3(\i_alu/aD2M4dsP [8]),
        .O(\q[0]_i_104_n_0 ));
  LUT4 #(
    .INIT(16'hA959)) 
    \q[0]_i_105 
       (.I0(SrcB[12]),
        .I1(rd10[12]),
        .I2(\q_reg[3]_4 ),
        .I3(r15[11]),
        .O(\q[0]_i_105_n_0 ));
  LUT6 #(
    .INIT(64'h0000900990090000)) 
    \q[0]_i_106 
       (.I0(SrcB[26]),
        .I1(\ALUResult_OBUF[28]_inst_i_1_0 [25]),
        .I2(SrcB[24]),
        .I3(\ALUResult_OBUF[28]_inst_i_1_0 [23]),
        .I4(\ALUResult_OBUF[28]_inst_i_1_0 [1]),
        .I5(\i_alu/aD2M4dsP [2]),
        .O(\q[0]_i_106_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \q[0]_i_107 
       (.I0(\i_alu/aD2M4dsP [28]),
        .I1(rd10[28]),
        .I2(\q_reg[3]_4 ),
        .I3(r15[27]),
        .O(\q[0]_i_107_n_0 ));
  LUT4 #(
    .INIT(16'hA959)) 
    \q[0]_i_108 
       (.I0(SrcB[30]),
        .I1(rd10[30]),
        .I2(\q_reg[3]_4 ),
        .I3(r15[29]),
        .O(\q[0]_i_108_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \q[0]_i_109 
       (.I0(SrcB[20]),
        .I1(rd10[20]),
        .I2(\q_reg[3]_4 ),
        .I3(r15[19]),
        .O(\q[0]_i_109_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \q[0]_i_110 
       (.I0(Result0_carry__6_i_9_n_0),
        .I1(rd10[31]),
        .I2(\q_reg[3]_4 ),
        .I3(r15[30]),
        .O(\q[0]_i_110_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \q[0]_i_111 
       (.I0(\i_alu/aD2M4dsP [1]),
        .I1(rd10[1]),
        .I2(\q_reg[3]_4 ),
        .I3(r15[0]),
        .O(\q[0]_i_111_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \q[0]_i_112 
       (.I0(SrcB[23]),
        .I1(\i_alu/aD2M4dsP [18]),
        .I2(\i_alu/aD2M4dsP [1]),
        .I3(\i_alu/aD2M4dsP [2]),
        .I4(\i_alu/aD2M4dsP [4]),
        .I5(\q[0]_i_125_n_0 ),
        .O(\q[0]_i_112_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \q[0]_i_113 
       (.I0(\i_alu/aD2M4dsP [11]),
        .I1(\i_alu/aD2M4dsP [3]),
        .I2(\i_alu/aD2M4dsP [28]),
        .I3(SrcB[20]),
        .I4(\q_reg[3]_3 ),
        .O(\q[0]_i_113_n_0 ));
  LUT5 #(
    .INIT(32'h00000200)) 
    \q[0]_i_114 
       (.I0(SrcB[22]),
        .I1(\i_alu/aD2M4dsP [9]),
        .I2(\i_alu/aD2M4dsP [13]),
        .I3(SrcB[12]),
        .I4(\i_alu/aD2M4dsP [8]),
        .O(\q[0]_i_114_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[0]_i_115 
       (.I0(\i_alu/aD2M4dsP [27]),
        .I1(\i_alu/aD2M4dsP [19]),
        .I2(\i_alu/aD2M4dsP [14]),
        .I3(\i_alu/aD2M4dsP [10]),
        .O(\q[0]_i_115_n_0 ));
  LUT6 #(
    .INIT(64'h8880008000000000)) 
    \q[0]_i_116 
       (.I0(SrcB[24]),
        .I1(SrcB[6]),
        .I2(rd20[5]),
        .I3(\q_reg[3]_5 ),
        .I4(r15[4]),
        .I5(Result0_carry__0_i_10_n_0),
        .O(\q[0]_i_116_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \q[0]_i_117 
       (.I0(Result0_carry__6_i_9_n_0),
        .I1(SrcB[30]),
        .I2(SrcB[29]),
        .I3(SrcB[26]),
        .O(\q[0]_i_117_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \q[0]_i_118 
       (.I0(SrcB[22]),
        .I1(\i_alu/aD2M4dsP [10]),
        .I2(\i_alu/aD2M4dsP [9]),
        .I3(\q_reg[3]_3 ),
        .I4(SrcB[16]),
        .O(\q[0]_i_118_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \q[0]_i_119 
       (.I0(SrcB[20]),
        .I1(SrcB[24]),
        .I2(\i_alu/aD2M4dsP [4]),
        .I3(SrcB[5]),
        .I4(\q[0]_i_126_n_0 ),
        .I5(\i_alu/aD2M4dsP [2]),
        .O(\q[0]_i_119_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \q[0]_i_120 
       (.I0(\i_alu/aD2M4dsP [19]),
        .I1(\i_alu/aD2M4dsP [18]),
        .I2(SrcB[21]),
        .I3(\i_alu/aD2M4dsP [15]),
        .O(\q[0]_i_120_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[0]_i_121 
       (.I0(\ALUResult_OBUF[16]_inst_i_7_n_0 ),
        .I1(SrcB[6]),
        .I2(SrcB[29]),
        .I3(SrcB[26]),
        .O(\q[0]_i_121_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \q[0]_i_122 
       (.I0(\ALUResult_OBUF[27]_inst_i_7_n_0 ),
        .I1(\q[0]_i_127_n_0 ),
        .I2(\q_reg[7]_1 ),
        .I3(SrcB[30]),
        .I4(\i_alu/aD2M4dsP [3]),
        .O(\q[0]_i_122_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFE02020FF20)) 
    \q[0]_i_123 
       (.I0(rd20[6]),
        .I1(\q_reg[3]_5 ),
        .I2(Result0_carry__0_i_10_n_0),
        .I3(rd10[6]),
        .I4(\q_reg[3]_4 ),
        .I5(r15[5]),
        .O(\q[0]_i_123_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFE02020FF20)) 
    \q[0]_i_124 
       (.I0(rd20[5]),
        .I1(\q_reg[3]_5 ),
        .I2(Result0_carry__0_i_10_n_0),
        .I3(rd10[5]),
        .I4(\q_reg[3]_4 ),
        .I5(r15[4]),
        .O(\q[0]_i_124_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA80800000000)) 
    \q[0]_i_125 
       (.I0(Result0_carry__0_i_10_n_0),
        .I1(rd20[25]),
        .I2(\q_reg[3]_5 ),
        .I3(r15[24]),
        .I4(\q_reg[6]_0 ),
        .I5(SrcB[0]),
        .O(\q[0]_i_125_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011155515)) 
    \q[0]_i_126 
       (.I0(\q_reg[6]_0 ),
        .I1(Result0_carry__0_i_10_n_0),
        .I2(rd20[28]),
        .I3(\q_reg[3]_5 ),
        .I4(r15[27]),
        .I5(SrcB[0]),
        .O(\q[0]_i_126_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \q[0]_i_127 
       (.I0(Result0_carry__0_i_10_n_0),
        .I1(rd20[25]),
        .I2(\q_reg[3]_5 ),
        .I3(r15[24]),
        .O(\q[0]_i_127_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \q[0]_i_14 
       (.I0(\ALUResult_OBUF[15]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[27]_inst_i_6_n_0 ),
        .I2(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I3(\q[0]_i_45_n_0 ),
        .I4(\q[0]_i_46_n_0 ),
        .O(\q[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \q[0]_i_15 
       (.I0(\q[0]_i_47_n_0 ),
        .I1(\q[0]_i_48_n_0 ),
        .I2(\q[0]_i_49_n_0 ),
        .I3(\q[0]_i_50_n_0 ),
        .I4(\q[0]_i_51_n_0 ),
        .I5(\q[0]_i_52_n_0 ),
        .O(\q[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \q[0]_i_16 
       (.I0(\q[0]_i_53_n_0 ),
        .I1(\q[0]_i_54_n_0 ),
        .I2(\q[0]_i_55_n_0 ),
        .I3(\q[0]_i_56_n_0 ),
        .I4(\q[0]_i_57_n_0 ),
        .I5(\q[0]_i_58_n_0 ),
        .O(\q[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \q[0]_i_17 
       (.I0(\q[0]_i_59_n_0 ),
        .I1(\q[0]_i_60_n_0 ),
        .I2(\ALUResult_OBUF[14]_inst_i_5_n_0 ),
        .I3(\q[0]_i_61_n_0 ),
        .I4(\q[0]_i_62_n_0 ),
        .I5(\q[0]_i_63_n_0 ),
        .O(\q[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h55404040FFFFFFFF)) 
    \q[0]_i_18 
       (.I0(\q[0]_i_64_n_0 ),
        .I1(\q[0]_i_65_n_0 ),
        .I2(\q[0]_i_66_n_0 ),
        .I3(\q[0]_i_67_n_0 ),
        .I4(\q[0]_i_68_n_0 ),
        .I5(\q_reg[6]_28 ),
        .O(\q[0]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \q[0]_i_19 
       (.I0(rd10[31]),
        .I1(\q_reg[3]_4 ),
        .I2(r15[30]),
        .I3(Result0_carry__6_i_9_n_0),
        .O(\q[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000100000000)) 
    \q[0]_i_2 
       (.I0(\q[0]_i_5_n_0 ),
        .I1(\q[0]_i_6_n_0 ),
        .I2(\q[0]_i_7_n_0 ),
        .I3(\q[0]_i_8_n_0 ),
        .I4(\q[0]_i_9_n_0 ),
        .I5(\q_reg[6]_29 ),
        .O(\q_reg[6]_32 ));
  LUT5 #(
    .INIT(32'hFFFF4540)) 
    \q[0]_i_20 
       (.I0(\q_reg[3]_3 ),
        .I1(r15[6]),
        .I2(\q_reg[3]_4 ),
        .I3(rd10[7]),
        .I4(\q_reg[7]_1 ),
        .O(\q[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hE0E0E00000002000)) 
    \q[0]_i_21 
       (.I0(rd20[5]),
        .I1(\q_reg[3]_5 ),
        .I2(Result0_carry__0_i_10_n_0),
        .I3(rd10[5]),
        .I4(\q_reg[3]_4 ),
        .I5(r15[4]),
        .O(\q[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF2FFF2FFF2)) 
    \q[0]_i_22 
       (.I0(\ALUResult_OBUF[28]_inst_i_1_0 [9]),
        .I1(\i_alu/aD2M4dsP [10]),
        .I2(\q[0]_i_69_n_0 ),
        .I3(\q[0]_i_70_n_0 ),
        .I4(SrcB[29]),
        .I5(SrcA[29]),
        .O(\q[0]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \q[0]_i_23 
       (.I0(\ALUResult_OBUF[28]_inst_i_1_0 [8]),
        .I1(\i_alu/aD2M4dsP [9]),
        .I2(\ALUResult_OBUF[28]_inst_i_1_0 [17]),
        .I3(\i_alu/aD2M4dsP [18]),
        .I4(\q[0]_i_71_n_0 ),
        .O(\q[0]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \q[0]_i_24 
       (.I0(SrcB[26]),
        .I1(rd10[26]),
        .I2(\q_reg[3]_4 ),
        .I3(r15[25]),
        .O(\q[0]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \q[0]_i_25 
       (.I0(\i_alu/aD2M4dsP [17]),
        .I1(r15[16]),
        .I2(\q_reg[3]_4 ),
        .I3(rd10[17]),
        .I4(\i_alu/aD2M4dsP [15]),
        .I5(\ALUResult_OBUF[28]_inst_i_1_0 [14]),
        .O(\q[0]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF222)) 
    \q[0]_i_26 
       (.I0(\ALUResult_OBUF[28]_inst_i_1_0 [18]),
        .I1(\i_alu/aD2M4dsP [19]),
        .I2(SrcB[21]),
        .I3(\ALUResult_OBUF[28]_inst_i_1_0 [20]),
        .I4(\q[0]_i_72_n_0 ),
        .I5(\q[0]_i_73_n_0 ),
        .O(\q[0]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \q[0]_i_27 
       (.I0(rd10[3]),
        .I1(\q_reg[3]_4 ),
        .I2(r15[2]),
        .I3(\i_alu/aD2M4dsP [3]),
        .O(\q[0]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAFFEA)) 
    \q[0]_i_28 
       (.I0(\q[0]_i_74_n_0 ),
        .I1(SrcB[6]),
        .I2(\ALUResult_OBUF[28]_inst_i_1_0 [5]),
        .I3(\ALUResult_OBUF[28]_inst_i_1_0 [12]),
        .I4(\i_alu/aD2M4dsP [13]),
        .O(\q[0]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \q[0]_i_29 
       (.I0(rd10[14]),
        .I1(\q_reg[3]_4 ),
        .I2(r15[13]),
        .I3(\i_alu/aD2M4dsP [14]),
        .O(\q[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h0000148000000000)) 
    \q[0]_i_2__1 
       (.I0(PC[2]),
        .I1(PC[3]),
        .I2(PC[1]),
        .I3(PC[4]),
        .I4(PC[6]),
        .I5(PC[5]),
        .O(\q_reg[3]_4 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \q[0]_i_30 
       (.I0(SrcB[23]),
        .I1(rd10[23]),
        .I2(\q_reg[3]_4 ),
        .I3(r15[22]),
        .O(\q[0]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \q[0]_i_31 
       (.I0(\q[0]_i_75_n_0 ),
        .I1(SrcA[29]),
        .I2(SrcB[29]),
        .I3(\q[0]_i_76_n_0 ),
        .I4(\q[0]_i_77_n_0 ),
        .I5(\q[0]_i_78_n_0 ),
        .O(\q[0]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \q[0]_i_32 
       (.I0(SrcB[21]),
        .I1(\ALUResult_OBUF[28]_inst_i_1_0 [20]),
        .I2(\q[0]_i_79_n_0 ),
        .I3(\q[0]_i_80_n_0 ),
        .I4(\ALUResult_OBUF[28]_inst_i_1_0 [16]),
        .I5(\i_alu/aD2M4dsP [17]),
        .O(\q[0]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \q[0]_i_33 
       (.I0(\q[0]_i_81_n_0 ),
        .I1(\ALUResult_OBUF[28]_inst_i_1_0 [8]),
        .I2(\i_alu/aD2M4dsP [9]),
        .I3(\q[0]_i_82_n_0 ),
        .I4(\ALUResult_OBUF[28]_inst_i_1_0 [12]),
        .I5(\i_alu/aD2M4dsP [13]),
        .O(\q[0]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \q[0]_i_34 
       (.I0(\i_alu/aD2M4dsP [11]),
        .I1(\ALUResult_OBUF[28]_inst_i_1_0 [10]),
        .I2(\q[0]_i_83_n_0 ),
        .I3(\q_reg[7]_1 ),
        .I4(\q[0]_i_84_n_0 ),
        .I5(\q[0]_i_85_n_0 ),
        .O(\q[0]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \q[0]_i_35 
       (.I0(\q[0]_i_86_n_0 ),
        .I1(\q[0]_i_87_n_0 ),
        .I2(\ALUResult_OBUF[28]_inst_i_1_0 [14]),
        .I3(\i_alu/aD2M4dsP [15]),
        .I4(\i_alu/aD2M4dsP [10]),
        .I5(\ALUResult_OBUF[28]_inst_i_1_0 [9]),
        .O(\q[0]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \q[0]_i_36 
       (.I0(\q[0]_i_88_n_0 ),
        .I1(\q[0]_i_89_n_0 ),
        .I2(\q[0]_i_90_n_0 ),
        .I3(\q[0]_i_91_n_0 ),
        .I4(\q[0]_i_92_n_0 ),
        .I5(\q[0]_i_93_n_0 ),
        .O(\q[0]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF00000EEE)) 
    \q[0]_i_4 
       (.I0(\q[0]_i_14_n_0 ),
        .I1(\q[0]_i_15_n_0 ),
        .I2(\q[0]_i_16_n_0 ),
        .I3(\q[0]_i_17_n_0 ),
        .I4(\q[0]_i_18_n_0 ),
        .I5(\q_reg[6]_29 ),
        .O(\q_reg[6]_30 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[0]_i_45 
       (.I0(\ALUResult_OBUF[31]_inst_i_7_n_0 ),
        .I1(\ALUResult_OBUF[3]_inst_i_5_n_0 ),
        .I2(\ALUResult_OBUF[9]_inst_i_5_n_0 ),
        .I3(\ALUResult_OBUF[7]_inst_i_5_n_0 ),
        .O(\q[0]_i_45_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFAB)) 
    \q[0]_i_46 
       (.I0(\ALUResult_OBUF[11]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[2]_inst_i_6_n_0 ),
        .I2(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .I3(\ALUResult_OBUF[12]_inst_i_5_n_0 ),
        .I4(\ALUResult_OBUF[13]_inst_i_5_n_0 ),
        .O(\q[0]_i_46_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[0]_i_47 
       (.I0(\ALUResult_OBUF[5]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[6]_inst_i_5_n_0 ),
        .I2(\ALUResult_OBUF[10]_inst_i_5_n_0 ),
        .I3(\ALUResult_OBUF[4]_inst_i_5_n_0 ),
        .O(\q[0]_i_47_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[0]_i_48 
       (.I0(\ALUResult_OBUF[24]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[16]_inst_i_5_n_0 ),
        .I2(\ALUResult_OBUF[26]_inst_i_5_n_0 ),
        .I3(\ALUResult_OBUF[20]_inst_i_5_n_0 ),
        .O(\q[0]_i_48_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[0]_i_49 
       (.I0(\ALUResult_OBUF[0]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[21]_inst_i_5_n_0 ),
        .I2(\ALUResult_OBUF[14]_inst_i_6_n_0 ),
        .I3(\ALUResult_OBUF[22]_inst_i_5_n_0 ),
        .O(\q[0]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF2FFF2FFF2)) 
    \q[0]_i_5 
       (.I0(\ALUResult_OBUF[28]_inst_i_1_0 [1]),
        .I1(\i_alu/aD2M4dsP [2]),
        .I2(\q[0]_i_19_n_0 ),
        .I3(\q[0]_i_20_n_0 ),
        .I4(SrcB[12]),
        .I5(\ALUResult_OBUF[28]_inst_i_1_0 [11]),
        .O(\q[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \q[0]_i_50 
       (.I0(\q_reg[7]_1 ),
        .I1(\ALUResult_OBUF[17]_inst_i_5_n_0 ),
        .I2(\ALUResult_OBUF[25]_inst_i_5_n_0 ),
        .I3(\ALUResult_OBUF[8]_inst_i_5_n_0 ),
        .O(\q[0]_i_50_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[0]_i_51 
       (.I0(\ALUResult_OBUF[23]_inst_i_6_n_0 ),
        .I1(\ALUResult_OBUF[19]_inst_i_5_n_0 ),
        .I2(\ALUResult_OBUF[29]_inst_i_5_n_0 ),
        .I3(\ALUResult_OBUF[18]_inst_i_5_n_0 ),
        .O(\q[0]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAEAAFEF)) 
    \q[0]_i_52 
       (.I0(\ALUResult_OBUF[30]_inst_i_5_n_0 ),
        .I1(SrcB[5]),
        .I2(\q_reg[6]_31 ),
        .I3(\q_reg[6]_0 ),
        .I4(\i_alu/aD2M4dsP [1]),
        .I5(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .O(\q[0]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h0000011001100000)) 
    \q[0]_i_53 
       (.I0(\q[0]_i_98_n_0 ),
        .I1(\q[0]_i_99_n_0 ),
        .I2(\i_alu/aD2M4dsP [18]),
        .I3(\ALUResult_OBUF[28]_inst_i_1_0 [17]),
        .I4(\i_alu/aD2M4dsP [17]),
        .I5(\ALUResult_OBUF[28]_inst_i_1_0 [16]),
        .O(\q[0]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h0000000014000014)) 
    \q[0]_i_54 
       (.I0(\q[0]_i_100_n_0 ),
        .I1(\i_alu/aD2M4dsP [3]),
        .I2(\ALUResult_OBUF[28]_inst_i_1_0 [2]),
        .I3(SrcB[16]),
        .I4(\ALUResult_OBUF[28]_inst_i_1_0 [15]),
        .I5(\q[0]_i_101_n_0 ),
        .O(\q[0]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h9099900009000999)) 
    \q[0]_i_55 
       (.I0(\ALUResult_OBUF[28]_inst_i_1_0 [21]),
        .I1(SrcB[22]),
        .I2(r15[24]),
        .I3(\q_reg[3]_4 ),
        .I4(rd10[25]),
        .I5(SrcB[25]),
        .O(\q[0]_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \q[0]_i_56 
       (.I0(SrcB[29]),
        .I1(rd10[29]),
        .I2(\q_reg[3]_1 ),
        .I3(r15[28]),
        .O(\q[0]_i_56_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \q[0]_i_57 
       (.I0(SrcB[0]),
        .I1(rd10[0]),
        .I2(\q_reg[3]_4 ),
        .I3(\q_reg[0]_0 ),
        .O(\q[0]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000141400)) 
    \q[0]_i_58 
       (.I0(\q[0]_i_102_n_0 ),
        .I1(\i_alu/aD2M4dsP [9]),
        .I2(\ALUResult_OBUF[28]_inst_i_1_0 [8]),
        .I3(\i_alu/aD2M4dsP [15]),
        .I4(\ALUResult_OBUF[28]_inst_i_1_0 [14]),
        .I5(\q[0]_i_103_n_0 ),
        .O(\q[0]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h1400001400000000)) 
    \q[0]_i_59 
       (.I0(\q[0]_i_104_n_0 ),
        .I1(\q_reg[3]_3 ),
        .I2(\ALUResult_OBUF[28]_inst_i_1_0 [6]),
        .I3(SrcB[21]),
        .I4(\ALUResult_OBUF[28]_inst_i_1_0 [20]),
        .I5(\q[0]_i_105_n_0 ),
        .O(\q[0]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \q[0]_i_6 
       (.I0(SrcB[24]),
        .I1(\ALUResult_OBUF[28]_inst_i_1_0 [23]),
        .I2(\q[0]_i_21_n_0 ),
        .I3(\q[0]_i_22_n_0 ),
        .I4(\q[0]_i_23_n_0 ),
        .I5(\q[0]_i_24_n_0 ),
        .O(\q[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \q[0]_i_60 
       (.I0(\q[0]_i_106_n_0 ),
        .I1(\q[0]_i_107_n_0 ),
        .I2(\q[0]_i_108_n_0 ),
        .I3(\q[0]_i_109_n_0 ),
        .I4(\q[0]_i_110_n_0 ),
        .I5(\q[0]_i_111_n_0 ),
        .O(\q[0]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h1F1F1FE02020DF20)) 
    \q[0]_i_61 
       (.I0(rd20[6]),
        .I1(\q_reg[3]_5 ),
        .I2(Result0_carry__0_i_10_n_0),
        .I3(rd10[6]),
        .I4(\q_reg[3]_1 ),
        .I5(r15[5]),
        .O(\q[0]_i_61_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \q[0]_i_62 
       (.I0(rd10[11]),
        .I1(\q_reg[3]_1 ),
        .I2(r15[10]),
        .I3(\i_alu/aD2M4dsP [11]),
        .O(\q[0]_i_62_n_0 ));
  LUT5 #(
    .INIT(32'h11122212)) 
    \q[0]_i_63 
       (.I0(\i_alu/aD2M4dsP [27]),
        .I1(\q_reg[7]_1 ),
        .I2(rd10[27]),
        .I3(\q_reg[3]_1 ),
        .I4(r15[26]),
        .O(\q[0]_i_63_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \q[0]_i_64 
       (.I0(\q_reg[7]_1 ),
        .I1(Result0_carry__6_i_9_n_0),
        .I2(\q_reg[6]_29 ),
        .O(\q[0]_i_64_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \q[0]_i_65 
       (.I0(\i_alu/aD2M4dsP [15]),
        .I1(SrcB[21]),
        .I2(\i_alu/aD2M4dsP [17]),
        .I3(SrcB[16]),
        .I4(\q[0]_i_112_n_0 ),
        .O(\q[0]_i_65_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \q[0]_i_66 
       (.I0(\q[0]_i_113_n_0 ),
        .I1(\q[0]_i_114_n_0 ),
        .I2(\q[0]_i_115_n_0 ),
        .I3(\q[0]_i_116_n_0 ),
        .I4(\q[0]_i_117_n_0 ),
        .O(\q[0]_i_66_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \q[0]_i_67 
       (.I0(\q[0]_i_118_n_0 ),
        .I1(SrcB[23]),
        .I2(\i_alu/aD2M4dsP [1]),
        .I3(\i_alu/aD2M4dsP [14]),
        .I4(\i_alu/aD2M4dsP [17]),
        .I5(\q[0]_i_119_n_0 ),
        .O(\q[0]_i_67_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \q[0]_i_68 
       (.I0(\q[0]_i_120_n_0 ),
        .I1(\q[0]_i_121_n_0 ),
        .I2(\q[0]_i_122_n_0 ),
        .I3(\i_alu/aD2M4dsP [8]),
        .I4(\i_alu/aD2M4dsP [13]),
        .I5(\i_alu/aD2M4dsP [11]),
        .O(\q[0]_i_68_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \q[0]_i_69 
       (.I0(rd10[4]),
        .I1(\q_reg[3]_4 ),
        .I2(r15[3]),
        .I3(\i_alu/aD2M4dsP [4]),
        .O(\q[0]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \q[0]_i_7 
       (.I0(\i_alu/aD2M4dsP [11]),
        .I1(\ALUResult_OBUF[28]_inst_i_1_0 [10]),
        .I2(\q[0]_i_25_n_0 ),
        .I3(\q[0]_i_26_n_0 ),
        .I4(\q[0]_i_27_n_0 ),
        .I5(\q[0]_i_28_n_0 ),
        .O(\q[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \q[0]_i_70 
       (.I0(SrcB[25]),
        .I1(rd10[25]),
        .I2(\q_reg[3]_4 ),
        .I3(r15[24]),
        .O(\q[0]_i_70_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \q[0]_i_71 
       (.I0(\i_alu/aD2M4dsP [8]),
        .I1(r15[7]),
        .I2(\q_reg[3]_4 ),
        .I3(rd10[8]),
        .I4(\i_alu/aD2M4dsP [1]),
        .I5(\ALUResult_OBUF[28]_inst_i_1_0 [0]),
        .O(\q[0]_i_71_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \q[0]_i_72 
       (.I0(SrcB[30]),
        .I1(rd10[30]),
        .I2(\q_reg[3]_4 ),
        .I3(r15[29]),
        .O(\q[0]_i_72_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \q[0]_i_73 
       (.I0(SrcB[20]),
        .I1(rd10[20]),
        .I2(\q_reg[3]_4 ),
        .I3(r15[19]),
        .O(\q[0]_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \q[0]_i_74 
       (.I0(\ALUResult_OBUF[28]_inst_i_1_0 [27]),
        .I1(\i_alu/aD2M4dsP [28]),
        .I2(SrcB[0]),
        .I3(SrcA[0]),
        .I4(\ALUResult_OBUF[28]_inst_i_1_0 [21]),
        .I5(SrcB[22]),
        .O(\q[0]_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \q[0]_i_75 
       (.I0(\q[0]_i_123_n_0 ),
        .I1(\q[0]_i_124_n_0 ),
        .I2(SrcB[26]),
        .I3(\ALUResult_OBUF[28]_inst_i_1_0 [25]),
        .I4(SrcB[25]),
        .I5(\ALUResult_OBUF[28]_inst_i_1_0 [24]),
        .O(\q[0]_i_75_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \q[0]_i_76 
       (.I0(SrcB[30]),
        .I1(rd10[30]),
        .I2(\q_reg[3]_4 ),
        .I3(r15[29]),
        .O(\q[0]_i_76_n_0 ));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \q[0]_i_77 
       (.I0(rd10[31]),
        .I1(\q_reg[3]_4 ),
        .I2(r15[30]),
        .I3(Result0_carry__6_i_9_n_0),
        .O(\q[0]_i_77_n_0 ));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \q[0]_i_78 
       (.I0(rd10[1]),
        .I1(\q_reg[3]_4 ),
        .I2(r15[0]),
        .I3(\i_alu/aD2M4dsP [1]),
        .O(\q[0]_i_78_n_0 ));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \q[0]_i_79 
       (.I0(rd10[19]),
        .I1(\q_reg[3]_4 ),
        .I2(r15[18]),
        .I3(\i_alu/aD2M4dsP [19]),
        .O(\q[0]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFAEFFAEFFAE)) 
    \q[0]_i_8 
       (.I0(\q[0]_i_29_n_0 ),
        .I1(\ALUResult_OBUF[28]_inst_i_1_0 [26]),
        .I2(\i_alu/aD2M4dsP [27]),
        .I3(\q[0]_i_30_n_0 ),
        .I4(SrcB[16]),
        .I5(\ALUResult_OBUF[28]_inst_i_1_0 [15]),
        .O(\q[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \q[0]_i_80 
       (.I0(rd10[18]),
        .I1(\q_reg[3]_4 ),
        .I2(r15[17]),
        .I3(\i_alu/aD2M4dsP [18]),
        .O(\q[0]_i_80_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \q[0]_i_81 
       (.I0(SrcB[12]),
        .I1(rd10[12]),
        .I2(\q_reg[3]_4 ),
        .I3(r15[11]),
        .O(\q[0]_i_81_n_0 ));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \q[0]_i_82 
       (.I0(rd10[14]),
        .I1(\q_reg[3]_4 ),
        .I2(r15[13]),
        .I3(\i_alu/aD2M4dsP [14]),
        .O(\q[0]_i_82_n_0 ));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \q[0]_i_83 
       (.I0(rd10[3]),
        .I1(\q_reg[3]_4 ),
        .I2(r15[2]),
        .I3(\i_alu/aD2M4dsP [3]),
        .O(\q[0]_i_83_n_0 ));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \q[0]_i_84 
       (.I0(rd10[2]),
        .I1(\q_reg[3]_4 ),
        .I2(r15[1]),
        .I3(\i_alu/aD2M4dsP [2]),
        .O(\q[0]_i_84_n_0 ));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \q[0]_i_85 
       (.I0(rd10[27]),
        .I1(\q_reg[3]_4 ),
        .I2(r15[26]),
        .I3(\i_alu/aD2M4dsP [27]),
        .O(\q[0]_i_85_n_0 ));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \q[0]_i_86 
       (.I0(rd10[8]),
        .I1(\q_reg[3]_4 ),
        .I2(r15[7]),
        .I3(\i_alu/aD2M4dsP [8]),
        .O(\q[0]_i_86_n_0 ));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \q[0]_i_87 
       (.I0(rd10[7]),
        .I1(\q_reg[3]_4 ),
        .I2(r15[6]),
        .I3(\q_reg[3]_3 ),
        .O(\q[0]_i_87_n_0 ));
  LUT4 #(
    .INIT(16'h0151)) 
    \q[0]_i_88 
       (.I0(SrcB[22]),
        .I1(rd10[22]),
        .I2(\q_reg[3]_1 ),
        .I3(r15[21]),
        .O(\q[0]_i_88_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \q[0]_i_89 
       (.I0(SrcB[24]),
        .I1(rd10[24]),
        .I2(\q_reg[3]_1 ),
        .I3(r15[23]),
        .O(\q[0]_i_89_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \q[0]_i_9 
       (.I0(\q[0]_i_31_n_0 ),
        .I1(\q[0]_i_32_n_0 ),
        .I2(\q[0]_i_33_n_0 ),
        .I3(\q[0]_i_34_n_0 ),
        .I4(\q[0]_i_35_n_0 ),
        .I5(\q[0]_i_36_n_0 ),
        .O(\q[0]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \q[0]_i_90 
       (.I0(\i_alu/aD2M4dsP [4]),
        .I1(rd10[4]),
        .I2(\q_reg[3]_1 ),
        .I3(r15[3]),
        .O(\q[0]_i_90_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \q[0]_i_91 
       (.I0(SrcB[16]),
        .I1(rd10[16]),
        .I2(\q_reg[3]_1 ),
        .I3(r15[15]),
        .O(\q[0]_i_91_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \q[0]_i_92 
       (.I0(SrcB[23]),
        .I1(rd10[23]),
        .I2(\q_reg[3]_1 ),
        .I3(r15[22]),
        .O(\q[0]_i_92_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \q[0]_i_93 
       (.I0(SrcB[0]),
        .I1(SrcA[0]),
        .I2(SrcB[20]),
        .I3(\ALUResult_OBUF[28]_inst_i_1_0 [19]),
        .I4(\i_alu/aD2M4dsP [28]),
        .I5(\ALUResult_OBUF[28]_inst_i_1_0 [27]),
        .O(\q[0]_i_93_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \q[0]_i_98 
       (.I0(SrcB[23]),
        .I1(rd10[23]),
        .I2(\q_reg[3]_4 ),
        .I3(r15[22]),
        .O(\q[0]_i_98_n_0 ));
  LUT4 #(
    .INIT(16'hA959)) 
    \q[0]_i_99 
       (.I0(\i_alu/aD2M4dsP [19]),
        .I1(rd10[19]),
        .I2(\q_reg[3]_4 ),
        .I3(r15[18]),
        .O(\q[0]_i_99_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFF77780888000)) 
    \q[13]_i_2 
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(\q_reg[3]_1 ),
        .I2(rd[16]),
        .I3(\q_reg[7]_0 ),
        .I4(\q_reg[6]_12 ),
        .I5(PC[15]),
        .O(\q[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFF77780888000)) 
    \q[13]_i_3 
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(\q_reg[3]_1 ),
        .I2(rd[15]),
        .I3(\q_reg[7]_0 ),
        .I4(\q_reg[6]_11 ),
        .I5(PC[14]),
        .O(\q[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFF77780888000)) 
    \q[13]_i_4 
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(\q_reg[3]_1 ),
        .I2(rd[14]),
        .I3(\q_reg[7]_0 ),
        .I4(\q_reg[6]_10 ),
        .I5(PC[13]),
        .O(\q[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFF77780888000)) 
    \q[13]_i_5 
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(\q_reg[3]_1 ),
        .I2(rd[13]),
        .I3(\q_reg[7]_0 ),
        .I4(\q_reg[6]_9 ),
        .I5(PC[12]),
        .O(\q[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFF77780888000)) 
    \q[17]_i_2 
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(\q_reg[3]_1 ),
        .I2(rd[20]),
        .I3(\q_reg[7]_0 ),
        .I4(\q_reg[6]_16 ),
        .I5(PC[19]),
        .O(\q[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFF77780888000)) 
    \q[17]_i_3 
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(\q_reg[3]_1 ),
        .I2(rd[19]),
        .I3(\q_reg[7]_0 ),
        .I4(\q_reg[6]_15 ),
        .I5(PC[18]),
        .O(\q[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFF77780888000)) 
    \q[17]_i_4 
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(\q_reg[3]_1 ),
        .I2(rd[18]),
        .I3(\q_reg[7]_0 ),
        .I4(\q_reg[6]_14 ),
        .I5(PC[17]),
        .O(\q[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFF77780888000)) 
    \q[17]_i_5 
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(\q_reg[3]_1 ),
        .I2(rd[17]),
        .I3(\q_reg[7]_0 ),
        .I4(\q_reg[6]_13 ),
        .I5(PC[16]),
        .O(\q[17]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \q[1]_i_2 
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(Instr_OBUF[14]),
        .O(en));
  LUT2 #(
    .INIT(4'h7)) 
    \q[1]_i_2__0 
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(\q_reg[3]_1 ),
        .O(\q[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hEFDCEFDEFCDDDFDD)) 
    \q[1]_i_3 
       (.I0(PC[4]),
        .I1(PC[6]),
        .I2(PC[3]),
        .I3(PC[5]),
        .I4(PC[1]),
        .I5(PC[2]),
        .O(\q_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hF870F8F8F8707070)) 
    \q[1]_i_3__0 
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(\q_reg[3]_1 ),
        .I2(PC[3]),
        .I3(rd[4]),
        .I4(\q_reg[7]_0 ),
        .I5(\q_reg[6]_27 [2]),
        .O(\q[1]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h1004154500501544)) 
    \q[1]_i_4 
       (.I0(PC[6]),
        .I1(PC[3]),
        .I2(PC[2]),
        .I3(PC[5]),
        .I4(PC[4]),
        .I5(PC[1]),
        .O(\q_reg[7]_1 ));
  LUT6 #(
    .INIT(64'hF870F8F8F8707070)) 
    \q[1]_i_4__0 
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(\q_reg[3]_1 ),
        .I2(PC[2]),
        .I3(rd[3]),
        .I4(\q_reg[7]_0 ),
        .I5(\q_reg[6]_27 [1]),
        .O(\q[1]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h88800080FFF777F7)) 
    \q[1]_i_5 
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(\q_reg[3]_1 ),
        .I2(\q_reg[6]_27 [0]),
        .I3(\q_reg[7]_0 ),
        .I4(rd[2]),
        .I5(PC[1]),
        .O(\q[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \q[1]_i_6 
       (.I0(Result0_carry__6_i_9_n_0),
        .I1(rd10[31]),
        .I2(\q_reg[3]_1 ),
        .I3(r15[30]),
        .O(\q[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFF77780888000)) 
    \q[1]_i_6__0 
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(\q_reg[3]_1 ),
        .I2(rd[1]),
        .I3(\q_reg[7]_0 ),
        .I4(\q_reg[6]_3 ),
        .I5(PC[0]),
        .O(\q[1]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFF77780888000)) 
    \q[21]_i_2 
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(\q_reg[3]_1 ),
        .I2(rd[24]),
        .I3(\q_reg[7]_0 ),
        .I4(\q_reg[6]_20 ),
        .I5(PC[23]),
        .O(\q[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFF77780888000)) 
    \q[21]_i_3 
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(\q_reg[3]_1 ),
        .I2(rd[23]),
        .I3(\q_reg[7]_0 ),
        .I4(\q_reg[6]_19 ),
        .I5(PC[22]),
        .O(\q[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFF77780888000)) 
    \q[21]_i_4 
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(\q_reg[3]_1 ),
        .I2(rd[22]),
        .I3(\q_reg[7]_0 ),
        .I4(\q_reg[6]_18 ),
        .I5(PC[21]),
        .O(\q[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFF77780888000)) 
    \q[21]_i_5 
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(\q_reg[3]_1 ),
        .I2(rd[21]),
        .I3(\q_reg[7]_0 ),
        .I4(\q_reg[6]_17 ),
        .I5(PC[20]),
        .O(\q[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF870F8F8F8707070)) 
    \q[25]_i_2 
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(\q_reg[3]_1 ),
        .I2(PC[27]),
        .I3(rd[28]),
        .I4(\q_reg[7]_0 ),
        .I5(\q_reg[6]_26 ),
        .O(\q[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFF77780888000)) 
    \q[25]_i_3 
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(\q_reg[3]_1 ),
        .I2(rd[27]),
        .I3(\q_reg[7]_0 ),
        .I4(\q_reg[6]_23 ),
        .I5(PC[26]),
        .O(\q[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFF77780888000)) 
    \q[25]_i_4 
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(\q_reg[3]_1 ),
        .I2(rd[26]),
        .I3(\q_reg[7]_0 ),
        .I4(\q_reg[6]_22 ),
        .I5(PC[25]),
        .O(\q[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFF77780888000)) 
    \q[25]_i_5 
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(\q_reg[3]_1 ),
        .I2(rd[25]),
        .I3(\q_reg[7]_0 ),
        .I4(\q_reg[6]_21 ),
        .I5(PC[24]),
        .O(\q[25]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFF77780888000)) 
    \q[29]_i_2 
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(\q_reg[3]_1 ),
        .I2(rd[31]),
        .I3(\q_reg[7]_0 ),
        .I4(\q_reg[6]_1 ),
        .I5(PC[30]),
        .O(\q[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFF77780888000)) 
    \q[29]_i_3 
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(\q_reg[3]_1 ),
        .I2(rd[30]),
        .I3(\q_reg[7]_0 ),
        .I4(\q_reg[6]_2 ),
        .I5(PC[29]),
        .O(\q[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFF77780888000)) 
    \q[29]_i_4 
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(\q_reg[3]_1 ),
        .I2(rd[29]),
        .I3(\q_reg[7]_0 ),
        .I4(\q_reg[6]_24 ),
        .I5(PC[28]),
        .O(\q[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFF77780888000)) 
    \q[5]_i_2 
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(\q_reg[3]_1 ),
        .I2(rd[8]),
        .I3(\q_reg[7]_0 ),
        .I4(\q_reg[6]_7 ),
        .I5(PC[7]),
        .O(\q[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF870F8F8F8707070)) 
    \q[5]_i_3 
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(\q_reg[3]_1 ),
        .I2(PC[6]),
        .I3(rd[7]),
        .I4(\q_reg[7]_0 ),
        .I5(p_0_in),
        .O(\q[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF070F0F0F0707070)) 
    \q[5]_i_4 
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(\q_reg[3]_1 ),
        .I2(PC[5]),
        .I3(rd[6]),
        .I4(\q_reg[7]_0 ),
        .I5(\q_reg[6]_27 [4]),
        .O(\q[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF870F8F8F8707070)) 
    \q[5]_i_5 
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(\q_reg[3]_1 ),
        .I2(PC[4]),
        .I3(rd[5]),
        .I4(\q_reg[7]_0 ),
        .I5(\q_reg[6]_27 [3]),
        .O(\q[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFF77780888000)) 
    \q[9]_i_2 
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(\q_reg[3]_1 ),
        .I2(rd[12]),
        .I3(\q_reg[7]_0 ),
        .I4(\q_reg[6]_8 ),
        .I5(PC[11]),
        .O(\q[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFF77780888000)) 
    \q[9]_i_3 
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(\q_reg[3]_1 ),
        .I2(rd[11]),
        .I3(\q_reg[7]_0 ),
        .I4(\q_reg[6]_6 ),
        .I5(PC[10]),
        .O(\q[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFF77780888000)) 
    \q[9]_i_4 
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(\q_reg[3]_1 ),
        .I2(rd[10]),
        .I3(\q_reg[7]_0 ),
        .I4(\q_reg[6]_5 ),
        .I5(PC[9]),
        .O(\q[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFF77780888000)) 
    \q[9]_i_5 
       (.I0(mem_reg_r1_0_15_0_5_i_15_n_0),
        .I1(\q_reg[3]_1 ),
        .I2(rd[9]),
        .I3(\q_reg[7]_0 ),
        .I4(\q_reg[6]_4 ),
        .I5(PC[8]),
        .O(\q[9]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(\q[0]_i_1_n_0 ),
        .Q(\q_reg[0]_0 ));
  CARRY4 \q_reg[0]_i_3 
       (.CI(CO),
        .CO({\NLW_q_reg[0]_i_3_CO_UNCONNECTED [3:1],Result0_carry__6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_q_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[9]_i_1_n_6 ),
        .Q(PC[9]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[9]_i_1_n_5 ),
        .Q(PC[10]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[9]_i_1_n_4 ),
        .Q(PC[11]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[13]_i_1_n_7 ),
        .Q(PC[12]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \q_reg[13]_i_1 
       (.CI(\q_reg[9]_i_1_n_0 ),
        .CO({\q_reg[13]_i_1_n_0 ,\NLW_q_reg[13]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_reg[13]_i_1_n_4 ,\q_reg[13]_i_1_n_5 ,\q_reg[13]_i_1_n_6 ,\q_reg[13]_i_1_n_7 }),
        .S({\q[13]_i_2_n_0 ,\q[13]_i_3_n_0 ,\q[13]_i_4_n_0 ,\q[13]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[13]_i_1_n_6 ),
        .Q(PC[13]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[13]_i_1_n_5 ),
        .Q(PC[14]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[13]_i_1_n_4 ),
        .Q(PC[15]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[17]_i_1_n_7 ),
        .Q(PC[16]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \q_reg[17]_i_1 
       (.CI(\q_reg[13]_i_1_n_0 ),
        .CO({\q_reg[17]_i_1_n_0 ,\NLW_q_reg[17]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_reg[17]_i_1_n_4 ,\q_reg[17]_i_1_n_5 ,\q_reg[17]_i_1_n_6 ,\q_reg[17]_i_1_n_7 }),
        .S({\q[17]_i_2_n_0 ,\q[17]_i_3_n_0 ,\q[17]_i_4_n_0 ,\q[17]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[17]_i_1_n_6 ),
        .Q(PC[17]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[17]_i_1_n_5 ),
        .Q(PC[18]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_i_1_n_7 ),
        .Q(PC[0]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \q_reg[1]_i_1 
       (.CI(1'b0),
        .CO({\q_reg[1]_i_1_n_0 ,\NLW_q_reg[1]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\q[1]_i_2__0_n_0 ,1'b0}),
        .O({\q_reg[1]_i_1_n_4 ,\q_reg[1]_i_1_n_5 ,\q_reg[1]_i_1_n_6 ,\q_reg[1]_i_1_n_7 }),
        .S({\q[1]_i_3__0_n_0 ,\q[1]_i_4__0_n_0 ,\q[1]_i_5_n_0 ,\q[1]_i_6__0_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \q_reg[1]_i_2 
       (.CI(1'b0),
        .CO(\NLW_q_reg[1]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(\Result0_inferred__0/i__carry__6 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_q_reg[1]_i_2_O_UNCONNECTED [3:2],O,\NLW_q_reg[1]_i_2_O_UNCONNECTED [0]}),
        .S({1'b0,1'b0,\q[1]_i_6_n_0 ,1'b1}));
  CARRY4 \q_reg[1]_i_5 
       (.CI(\q[0]_i_2__0 ),
        .CO({\NLW_q_reg[1]_i_5_CO_UNCONNECTED [3:1],\Result0_inferred__0/i__carry__6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_q_reg[1]_i_5_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[17]_i_1_n_4 ),
        .Q(PC[19]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[21]_i_1_n_7 ),
        .Q(PC[20]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \q_reg[21]_i_1 
       (.CI(\q_reg[17]_i_1_n_0 ),
        .CO({\q_reg[21]_i_1_n_0 ,\NLW_q_reg[21]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_reg[21]_i_1_n_4 ,\q_reg[21]_i_1_n_5 ,\q_reg[21]_i_1_n_6 ,\q_reg[21]_i_1_n_7 }),
        .S({\q[21]_i_2_n_0 ,\q[21]_i_3_n_0 ,\q[21]_i_4_n_0 ,\q[21]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[21]_i_1_n_6 ),
        .Q(PC[21]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[21]_i_1_n_5 ),
        .Q(PC[22]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[21]_i_1_n_4 ),
        .Q(PC[23]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[25]_i_1_n_7 ),
        .Q(PC[24]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \q_reg[25]_i_1 
       (.CI(\q_reg[21]_i_1_n_0 ),
        .CO({\q_reg[25]_i_1_n_0 ,\NLW_q_reg[25]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_reg[25]_i_1_n_4 ,\q_reg[25]_i_1_n_5 ,\q_reg[25]_i_1_n_6 ,\q_reg[25]_i_1_n_7 }),
        .S({\q[25]_i_2_n_0 ,\q[25]_i_3_n_0 ,\q[25]_i_4_n_0 ,\q[25]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[25]_i_1_n_6 ),
        .Q(PC[25]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[25]_i_1_n_5 ),
        .Q(PC[26]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[25]_i_1_n_4 ),
        .Q(PC[27]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[29]_i_1_n_7 ),
        .Q(PC[28]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \q_reg[29]_i_1 
       (.CI(\q_reg[25]_i_1_n_0 ),
        .CO(\NLW_q_reg[29]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_q_reg[29]_i_1_O_UNCONNECTED [3],\q_reg[29]_i_1_n_5 ,\q_reg[29]_i_1_n_6 ,\q_reg[29]_i_1_n_7 }),
        .S({1'b0,\q[29]_i_2_n_0 ,\q[29]_i_3_n_0 ,\q[29]_i_4_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_i_1_n_6 ),
        .Q(PC[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[29]_i_1_n_6 ),
        .Q(PC[29]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[29]_i_1_n_5 ),
        .Q(PC[30]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_i_1_n_5 ),
        .Q(PC[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_i_1_n_4 ),
        .Q(PC[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[5]_i_1_n_7 ),
        .Q(PC[4]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \q_reg[5]_i_1 
       (.CI(\q_reg[1]_i_1_n_0 ),
        .CO({\q_reg[5]_i_1_n_0 ,\NLW_q_reg[5]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_reg[5]_i_1_n_4 ,\q_reg[5]_i_1_n_5 ,\q_reg[5]_i_1_n_6 ,\q_reg[5]_i_1_n_7 }),
        .S({\q[5]_i_2_n_0 ,\q[5]_i_3_n_0 ,\q[5]_i_4_n_0 ,\q[5]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[5]_i_1_n_6 ),
        .Q(PC[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[5]_i_1_n_5 ),
        .Q(PC[6]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[5]_i_1_n_4 ),
        .Q(PC[7]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[9]_i_1_n_7 ),
        .Q(PC[8]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \q_reg[9]_i_1 
       (.CI(\q_reg[5]_i_1_n_0 ),
        .CO({\q_reg[9]_i_1_n_0 ,\NLW_q_reg[9]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_reg[9]_i_1_n_4 ,\q_reg[9]_i_1_n_5 ,\q_reg[9]_i_1_n_6 ,\q_reg[9]_i_1_n_7 }),
        .S({\q[9]_i_2_n_0 ,\q[9]_i_3_n_0 ,\q[9]_i_4_n_0 ,\q[9]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 y0_carry__0_i_1
       (.CI(y0_carry_i_1_n_0),
        .CO({y0_carry__0_i_1_n_0,NLW_y0_carry__0_i_1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d1[7:4]),
        .S(PC[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 y0_carry__1_i_1
       (.CI(y0_carry__0_i_1_n_0),
        .CO({y0_carry__1_i_1_n_0,NLW_y0_carry__1_i_1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d1[11:8]),
        .S(PC[11:8]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 y0_carry__2_i_1
       (.CI(y0_carry__1_i_1_n_0),
        .CO({y0_carry__2_i_1_n_0,NLW_y0_carry__2_i_1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d1[15:12]),
        .S(PC[15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 y0_carry__3_i_1
       (.CI(y0_carry__2_i_1_n_0),
        .CO({y0_carry__3_i_1_n_0,NLW_y0_carry__3_i_1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d1[19:16]),
        .S(PC[19:16]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 y0_carry__4_i_1
       (.CI(y0_carry__3_i_1_n_0),
        .CO({y0_carry__4_i_1_n_0,NLW_y0_carry__4_i_1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d1[23:20]),
        .S(PC[23:20]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 y0_carry__5_i_1
       (.CI(y0_carry__4_i_1_n_0),
        .CO({y0_carry__5_i_1_n_0,NLW_y0_carry__5_i_1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d1[27:24]),
        .S(PC[27:24]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 y0_carry__6_i_1
       (.CI(y0_carry__5_i_1_n_0),
        .CO(NLW_y0_carry__6_i_1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_y0_carry__6_i_1_O_UNCONNECTED[3],d1[30:28]}),
        .S({1'b0,PC[30:28]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 y0_carry_i_1
       (.CI(1'b0),
        .CO({y0_carry_i_1_n_0,NLW_y0_carry_i_1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,PC[1],1'b0}),
        .O(d1[3:0]),
        .S({PC[3:2],y0_carry_i_3_n_0,PC[0]}));
  LUT1 #(
    .INIT(2'h1)) 
    y0_carry_i_2
       (.I0(d1[1]),
        .O(\q_reg[2]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    y0_carry_i_3
       (.I0(PC[1]),
        .O(y0_carry_i_3_n_0));
endmodule

module regfile
   (rd10,
    rd20,
    \q_reg[3] ,
    wd,
    \q_reg[3]_0 ,
    clk_IBUF_BUFG,
    wd3,
    RegWrite,
    ADDRD,
    \q[1]_i_6 ,
    ADDRA,
    \WriteData[20] ,
    r15);
  output [31:0]rd10;
  output [31:0]rd20;
  output \q_reg[3] ;
  output [5:0]wd;
  output \q_reg[3]_0 ;
  input clk_IBUF_BUFG;
  input [31:0]wd3;
  input RegWrite;
  input [3:0]ADDRD;
  input [3:0]\q[1]_i_6 ;
  input [3:0]ADDRA;
  input \WriteData[20] ;
  input [7:0]r15;

  wire [3:0]ADDRA;
  wire [3:0]ADDRD;
  wire RegWrite;
  wire \WriteData[20] ;
  wire clk_IBUF_BUFG;
  wire [3:0]\q[1]_i_6 ;
  wire \q_reg[3] ;
  wire \q_reg[3]_0 ;
  wire [7:0]r15;
  wire [31:0]rd10;
  wire [31:0]rd20;
  wire [5:0]wd;
  wire [31:0]wd3;
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
    .INIT(8'h1D)) 
    \ALUResult_OBUF[16]_inst_i_6 
       (.I0(rd20[16]),
        .I1(\WriteData[20] ),
        .I2(r15[1]),
        .O(\q_reg[3] ));
  LUT3 #(
    .INIT(8'h1D)) 
    \ALUResult_OBUF[22]_inst_i_6 
       (.I0(rd20[22]),
        .I1(\WriteData[20] ),
        .I2(r15[3]),
        .O(\q_reg[3]_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \WriteData_OBUF[20]_inst_i_1 
       (.I0(rd20[20]),
        .I1(\WriteData[20] ),
        .I2(r15[2]),
        .O(wd[1]));
  LUT3 #(
    .INIT(8'hE2)) 
    \WriteData_OBUF[24]_inst_i_1 
       (.I0(rd20[24]),
        .I1(\WriteData[20] ),
        .I2(r15[4]),
        .O(wd[2]));
  LUT3 #(
    .INIT(8'hE2)) 
    \WriteData_OBUF[25]_inst_i_1 
       (.I0(rd20[25]),
        .I1(\WriteData[20] ),
        .I2(r15[5]),
        .O(wd[3]));
  LUT3 #(
    .INIT(8'hE2)) 
    \WriteData_OBUF[26]_inst_i_1 
       (.I0(rd20[26]),
        .I1(\WriteData[20] ),
        .I2(r15[6]),
        .O(wd[4]));
  LUT3 #(
    .INIT(8'hE2)) 
    \WriteData_OBUF[28]_inst_i_1 
       (.I0(rd20[28]),
        .I1(\WriteData[20] ),
        .I2(r15[7]),
        .O(wd[5]));
  LUT3 #(
    .INIT(8'hE2)) 
    \WriteData_OBUF[4]_inst_i_1 
       (.I0(rd20[4]),
        .I1(\WriteData[20] ),
        .I2(r15[0]),
        .O(wd[0]));
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
       (.ADDRA({1'b0,\q[1]_i_6 }),
        .ADDRB({1'b0,\q[1]_i_6 }),
        .ADDRC({1'b0,\q[1]_i_6 }),
        .ADDRD({1'b0,ADDRD}),
        .DIA(wd3[1:0]),
        .DIB(wd3[3:2]),
        .DIC(wd3[5:4]),
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
  RAM32M_HD333 mem_reg_r1_0_15_12_17
       (.ADDRA({1'b0,\q[1]_i_6 }),
        .ADDRB({1'b0,\q[1]_i_6 }),
        .ADDRC({1'b0,\q[1]_i_6 }),
        .ADDRD({1'b0,ADDRD}),
        .DIA(wd3[13:12]),
        .DIB(wd3[15:14]),
        .DIC(wd3[17:16]),
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
  RAM32M_HD334 mem_reg_r1_0_15_18_23
       (.ADDRA({1'b0,\q[1]_i_6 }),
        .ADDRB({1'b0,\q[1]_i_6 }),
        .ADDRC({1'b0,\q[1]_i_6 }),
        .ADDRD({1'b0,ADDRD}),
        .DIA(wd3[19:18]),
        .DIB(wd3[21:20]),
        .DIC(wd3[23:22]),
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
  RAM32M_HD335 mem_reg_r1_0_15_24_29
       (.ADDRA({1'b0,\q[1]_i_6 }),
        .ADDRB({1'b0,\q[1]_i_6 }),
        .ADDRC({1'b0,\q[1]_i_6 }),
        .ADDRD({1'b0,ADDRD}),
        .DIA(wd3[25:24]),
        .DIB(wd3[27:26]),
        .DIC(wd3[29:28]),
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
        .D(wd3[30]),
        .DPO(rd10[30]),
        .DPRA0(\q[1]_i_6 [0]),
        .DPRA1(\q[1]_i_6 [1]),
        .DPRA2(\q[1]_i_6 [2]),
        .DPRA3(\q[1]_i_6 [3]),
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
  RAM32X1D_HD336 mem_reg_r1_0_15_30_31__0
       (.A0(ADDRD[0]),
        .A1(ADDRD[1]),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(1'b0),
        .D(wd3[31]),
        .DPO(rd10[31]),
        .DPRA0(\q[1]_i_6 [0]),
        .DPRA1(\q[1]_i_6 [1]),
        .DPRA2(\q[1]_i_6 [2]),
        .DPRA3(\q[1]_i_6 [3]),
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
  RAM32M_HD337 mem_reg_r1_0_15_6_11
       (.ADDRA({1'b0,\q[1]_i_6 }),
        .ADDRB({1'b0,\q[1]_i_6 }),
        .ADDRC({1'b0,\q[1]_i_6 }),
        .ADDRD({1'b0,ADDRD}),
        .DIA(wd3[7:6]),
        .DIB(wd3[9:8]),
        .DIC(wd3[11:10]),
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
  RAM32M_HD338 mem_reg_r2_0_15_0_5
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,ADDRD}),
        .DIA(wd3[1:0]),
        .DIB(wd3[3:2]),
        .DIC(wd3[5:4]),
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
  RAM32M_HD339 mem_reg_r2_0_15_12_17
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,ADDRD}),
        .DIA(wd3[13:12]),
        .DIB(wd3[15:14]),
        .DIC(wd3[17:16]),
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
  RAM32M_HD340 mem_reg_r2_0_15_18_23
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,ADDRD}),
        .DIA(wd3[19:18]),
        .DIB(wd3[21:20]),
        .DIC(wd3[23:22]),
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
  RAM32M_HD341 mem_reg_r2_0_15_24_29
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,ADDRD}),
        .DIA(wd3[25:24]),
        .DIB(wd3[27:26]),
        .DIC(wd3[29:28]),
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
  RAM32X1D_HD342 mem_reg_r2_0_15_30_31
       (.A0(ADDRD[0]),
        .A1(ADDRD[1]),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(1'b0),
        .D(wd3[30]),
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
  RAM32X1D_HD343 mem_reg_r2_0_15_30_31__0
       (.A0(ADDRD[0]),
        .A1(ADDRD[1]),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(1'b0),
        .D(wd3[31]),
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
  RAM32M_HD344 mem_reg_r2_0_15_6_11
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,ADDRD}),
        .DIA(wd3[7:6]),
        .DIB(wd3[9:8]),
        .DIC(wd3[11:10]),
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
