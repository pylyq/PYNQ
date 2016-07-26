`timescale 1ns / 1ps
// Module Name: top

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx, Inc
// Create Date: 05/25/2016
// Module Name: top
// Project Name: Linux on Zynq
// Target Devices: Zynq
// Tool Versions: 2016.1
// Description: PYNQ Board
//////////////////////////////////////////////////////////////////////////////////
`timescale 1 ps / 1 ps

module top(
    DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    btns_4bits_tri_i,
    pmodJB,
    pmodJC,
    pmodJD,
    leds_4bits_tri_o,
    sws_2bits_tri_i);

  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  input [3:0]btns_4bits_tri_i;
  inout [7:0]pmodJB;
  inout [7:0]pmodJC;
  inout [7:0]pmodJD;
  output [3:0]leds_4bits_tri_o;
  input [1:0]sws_2bits_tri_i;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [7:0]pmodJB_data_in;
  wire [7:0]pmodJB_data_out;
  wire [7:0]pmodJB_tri_out;
  wire [7:0]pmodJC_data_in;
  wire [7:0]pmodJC_data_out;
  wire [7:0]pmodJC_tri_out;
  wire [7:0]pmodJD_data_in;
  wire [7:0]pmodJD_data_out;
  wire [7:0]pmodJD_tri_out;
  wire [3:0]leds_4bits_tri_o;
  wire [1:0]sws_2bits_tri_i;
  wire [3:0]btns_4bits_tri_i;

  IOBUF pmodJB_data_iobuf_0
       (.I(pmodJB_data_out[0]),
        .IO(pmodJB[0]),
        .O(pmodJB_data_in[0]),
        .T(pmodJB_tri_out[0]));
  IOBUF pmodJB_data_iobuf_1
       (.I(pmodJB_data_out[1]),
        .IO(pmodJB[1]),
        .O(pmodJB_data_in[1]),
        .T(pmodJB_tri_out[1]));
  IOBUF pmodJB_data_iobuf2
       (.I(pmodJB_data_out[2]),
        .IO(pmodJB[2]),
        .O(pmodJB_data_in[2]),
        .T(pmodJB_tri_out[2]));
  IOBUF pmodJB_data_iobuf_3
       (.I(pmodJB_data_out[3]),
        .IO(pmodJB[3]),
        .O(pmodJB_data_in[3]),
        .T(pmodJB_tri_out[3]));
  IOBUF pmodJB_data_iobuf_4
       (.I(pmodJB_data_out[4]),
        .IO(pmodJB[4]),
        .O(pmodJB_data_in[4]),
        .T(pmodJB_tri_out[4]));
  IOBUF pmodJB_data_iobuf_5
       (.I(pmodJB_data_out[5]),
        .IO(pmodJB[5]),
        .O(pmodJB_data_in[5]),
        .T(pmodJB_tri_out[5]));
  IOBUF pmodJB_data_iobuf_6
       (.I(pmodJB_data_out[6]),
        .IO(pmodJB[6]),
        .O(pmodJB_data_in[6]),
        .T(pmodJB_tri_out[6]));
  IOBUF pmodJB_data_iobuf_7
       (.I(pmodJB_data_out[7]),
        .IO(pmodJB[7]),
        .O(pmodJB_data_in[7]),
        .T(pmodJB_tri_out[7]));
// pmodJC related iobufs
    IOBUF pmodJC_data_iobuf_0
         (.I(pmodJC_data_out[0]),
          .IO(pmodJC[0]),
          .O(pmodJC_data_in[0]),
          .T(pmodJC_tri_out[0]));
    IOBUF pmodJC_data_iobuf_1
         (.I(pmodJC_data_out[1]),
          .IO(pmodJC[1]),
          .O(pmodJC_data_in[1]),
          .T(pmodJC_tri_out[1]));
    IOBUF pmodJC_data_iobuf2
         (.I(pmodJC_data_out[2]),
          .IO(pmodJC[2]),
          .O(pmodJC_data_in[2]),
          .T(pmodJC_tri_out[2]));
    IOBUF pmodJC_data_iobuf_3
         (.I(pmodJC_data_out[3]),
          .IO(pmodJC[3]),
          .O(pmodJC_data_in[3]),
          .T(pmodJC_tri_out[3]));
    IOBUF pmodJC_data_iobuf_4
         (.I(pmodJC_data_out[4]),
          .IO(pmodJC[4]),
          .O(pmodJC_data_in[4]),
          .T(pmodJC_tri_out[4]));
    IOBUF pmodJC_data_iobuf_5
         (.I(pmodJC_data_out[5]),
          .IO(pmodJC[5]),
          .O(pmodJC_data_in[5]),
          .T(pmodJC_tri_out[5]));
    IOBUF pmodJC_data_iobuf_6
         (.I(pmodJC_data_out[6]),
          .IO(pmodJC[6]),
          .O(pmodJC_data_in[6]),
          .T(pmodJC_tri_out[6]));
    IOBUF pmodJC_data_iobuf_7
         (.I(pmodJC_data_out[7]),
          .IO(pmodJC[7]),
          .O(pmodJC_data_in[7]),
          .T(pmodJC_tri_out[7]));        
// pmodJD related iobufs
  IOBUF pmodJD_data_iobuf_0
       (.I(pmodJD_data_out[0]),
        .IO(pmodJD[0]),
        .O(pmodJD_data_in[0]),
        .T(pmodJD_tri_out[0]));
  IOBUF pmodJD_data_iobuf_1
       (.I(pmodJD_data_out[1]),
        .IO(pmodJD[1]),
        .O(pmodJD_data_in[1]),
        .T(pmodJD_tri_out[1]));
  IOBUF pmodJD_data_iobuf2
       (.I(pmodJD_data_out[2]),
        .IO(pmodJD[2]),
        .O(pmodJD_data_in[2]),
        .T(pmodJD_tri_out[2]));
  IOBUF pmodJD_data_iobuf_3
       (.I(pmodJD_data_out[3]),
        .IO(pmodJD[3]),
        .O(pmodJD_data_in[3]),
        .T(pmodJD_tri_out[3]));
  IOBUF pmodJD_data_iobuf_4
       (.I(pmodJD_data_out[4]),
        .IO(pmodJD[4]),
        .O(pmodJD_data_in[4]),
        .T(pmodJD_tri_out[4]));
  IOBUF pmodJD_data_iobuf_5
       (.I(pmodJD_data_out[5]),
        .IO(pmodJD[5]),
        .O(pmodJD_data_in[5]),
        .T(pmodJD_tri_out[5]));
  IOBUF pmodJD_data_iobuf_6
       (.I(pmodJD_data_out[6]),
        .IO(pmodJD[6]),
        .O(pmodJD_data_in[6]),
        .T(pmodJD_tri_out[6]));
  IOBUF pmodJD_data_iobuf_7
       (.I(pmodJD_data_out[7]),
        .IO(pmodJD[7]),
        .O(pmodJD_data_in[7]),
        .T(pmodJD_tri_out[7]));                                

  system system_i
       (
        .DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .btns_4bits_tri_i(btns_4bits_tri_i),
        .leds_4bits_tri_o(leds_4bits_tri_o),
        .pmodJB_data_in(pmodJB_data_in),
        .pmodJB_data_out(pmodJB_data_out),
        .pmodJB_tri_out(pmodJB_tri_out),
        .pmodJC_data_in(pmodJC_data_in),
        .pmodJC_data_out(pmodJC_data_out),
        .pmodJC_tri_out(pmodJC_tri_out),
        .pmodJD_data_in(pmodJD_data_in),
        .pmodJD_data_out(pmodJD_data_out),
        .pmodJD_tri_out(pmodJD_tri_out),
        .sws_2bits_tri_i(sws_2bits_tri_i)); 
endmodule
