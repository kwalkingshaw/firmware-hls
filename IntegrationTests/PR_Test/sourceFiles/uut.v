`timescale 1ns / 1ps

module uut(
  input clk,
  input reset,
  input en_proc,
  input[2:0] bx_in_ProjectionRouter,
  output TPROJ_L1L2XXG_L3PHIC_dataarray_data_V_enb,
  output[7:0] TPROJ_L1L2XXG_L3PHIC_dataarray_data_V_readaddr,
  input[59:0] TPROJ_L1L2XXG_L3PHIC_dataarray_data_V_dout,
  input[7:0] TPROJ_L1L2XXG_L3PHIC_nentries_0_V_dout,
  input[7:0] TPROJ_L1L2XXG_L3PHIC_nentries_1_V_dout,
  output TPROJ_L5L6XXB_L3PHIC_dataarray_data_V_enb,
  output[7:0] TPROJ_L5L6XXB_L3PHIC_dataarray_data_V_readaddr,
  input[59:0] TPROJ_L5L6XXB_L3PHIC_dataarray_data_V_dout,
  input[7:0] TPROJ_L5L6XXB_L3PHIC_nentries_0_V_dout,
  input[7:0] TPROJ_L5L6XXB_L3PHIC_nentries_1_V_dout,
  output TPROJ_L1L2XXH_L3PHIC_dataarray_data_V_enb,
  output[7:0] TPROJ_L1L2XXH_L3PHIC_dataarray_data_V_readaddr,
  input[59:0] TPROJ_L1L2XXH_L3PHIC_dataarray_data_V_dout,
  input[7:0] TPROJ_L1L2XXH_L3PHIC_nentries_0_V_dout,
  input[7:0] TPROJ_L1L2XXH_L3PHIC_nentries_1_V_dout,
  output TPROJ_L5L6XXC_L3PHIC_dataarray_data_V_enb,
  output[7:0] TPROJ_L5L6XXC_L3PHIC_dataarray_data_V_readaddr,
  input[59:0] TPROJ_L5L6XXC_L3PHIC_dataarray_data_V_dout,
  input[7:0] TPROJ_L5L6XXC_L3PHIC_nentries_0_V_dout,
  input[7:0] TPROJ_L5L6XXC_L3PHIC_nentries_1_V_dout,
  output TPROJ_L1L2XXI_L3PHIC_dataarray_data_V_enb,
  output[7:0] TPROJ_L1L2XXI_L3PHIC_dataarray_data_V_readaddr,
  input[59:0] TPROJ_L1L2XXI_L3PHIC_dataarray_data_V_dout,
  input[7:0] TPROJ_L1L2XXI_L3PHIC_nentries_0_V_dout,
  input[7:0] TPROJ_L1L2XXI_L3PHIC_nentries_1_V_dout,
  output TPROJ_L5L6XXD_L3PHIC_dataarray_data_V_enb,
  output[7:0] TPROJ_L5L6XXD_L3PHIC_dataarray_data_V_readaddr,
  input[59:0] TPROJ_L5L6XXD_L3PHIC_dataarray_data_V_dout,
  input[7:0] TPROJ_L5L6XXD_L3PHIC_nentries_0_V_dout,
  input[7:0] TPROJ_L5L6XXD_L3PHIC_nentries_1_V_dout,
  output TPROJ_L1L2XXF_L3PHIC_dataarray_data_V_enb,
  output[7:0] TPROJ_L1L2XXF_L3PHIC_dataarray_data_V_readaddr,
  input[59:0] TPROJ_L1L2XXF_L3PHIC_dataarray_data_V_dout,
  input[7:0] TPROJ_L1L2XXF_L3PHIC_nentries_0_V_dout,
  input[7:0] TPROJ_L1L2XXF_L3PHIC_nentries_1_V_dout,
  output TPROJ_L1L2XXJ_L3PHIC_dataarray_data_V_enb,
  output[7:0] TPROJ_L1L2XXJ_L3PHIC_dataarray_data_V_readaddr,
  input[59:0] TPROJ_L1L2XXJ_L3PHIC_dataarray_data_V_dout,
  input[7:0] TPROJ_L1L2XXJ_L3PHIC_nentries_0_V_dout,
  input[7:0] TPROJ_L1L2XXJ_L3PHIC_nentries_1_V_dout,
  output[2:0] bx_out_ProjectionRouter,
  output VMPROJ_L3PHIC20_dataarray_data_V_wea,
  output[7:0] VMPROJ_L3PHIC20_dataarray_data_V_writeaddr,
  output[20:0] VMPROJ_L3PHIC20_dataarray_data_V_din,
  output VMPROJ_L3PHIC20_nentries_0_V_we,
  output[7:0] VMPROJ_L3PHIC20_nentries_0_V_din,
  output VMPROJ_L3PHIC20_nentries_1_V_we,
  output[7:0] VMPROJ_L3PHIC20_nentries_1_V_din,
  output VMPROJ_L3PHIC19_dataarray_data_V_wea,
  output[7:0] VMPROJ_L3PHIC19_dataarray_data_V_writeaddr,
  output[20:0] VMPROJ_L3PHIC19_dataarray_data_V_din,
  output VMPROJ_L3PHIC19_nentries_0_V_we,
  output[7:0] VMPROJ_L3PHIC19_nentries_0_V_din,
  output VMPROJ_L3PHIC19_nentries_1_V_we,
  output[7:0] VMPROJ_L3PHIC19_nentries_1_V_din,
  output VMPROJ_L3PHIC17_dataarray_data_V_wea,
  output[7:0] VMPROJ_L3PHIC17_dataarray_data_V_writeaddr,
  output[20:0] VMPROJ_L3PHIC17_dataarray_data_V_din,
  output VMPROJ_L3PHIC17_nentries_0_V_we,
  output[7:0] VMPROJ_L3PHIC17_nentries_0_V_din,
  output VMPROJ_L3PHIC17_nentries_1_V_we,
  output[7:0] VMPROJ_L3PHIC17_nentries_1_V_din,
  output VMPROJ_L3PHIC21_dataarray_data_V_wea,
  output[7:0] VMPROJ_L3PHIC21_dataarray_data_V_writeaddr,
  output[20:0] VMPROJ_L3PHIC21_dataarray_data_V_din,
  output VMPROJ_L3PHIC21_nentries_0_V_we,
  output[7:0] VMPROJ_L3PHIC21_nentries_0_V_din,
  output VMPROJ_L3PHIC21_nentries_1_V_we,
  output[7:0] VMPROJ_L3PHIC21_nentries_1_V_din,
  output VMPROJ_L3PHIC22_dataarray_data_V_wea,
  output[7:0] VMPROJ_L3PHIC22_dataarray_data_V_writeaddr,
  output[20:0] VMPROJ_L3PHIC22_dataarray_data_V_din,
  output VMPROJ_L3PHIC22_nentries_0_V_we,
  output[7:0] VMPROJ_L3PHIC22_nentries_0_V_din,
  output VMPROJ_L3PHIC22_nentries_1_V_we,
  output[7:0] VMPROJ_L3PHIC22_nentries_1_V_din,
  output VMPROJ_L3PHIC18_dataarray_data_V_wea,
  output[7:0] VMPROJ_L3PHIC18_dataarray_data_V_writeaddr,
  output[20:0] VMPROJ_L3PHIC18_dataarray_data_V_din,
  output VMPROJ_L3PHIC18_nentries_0_V_we,
  output[7:0] VMPROJ_L3PHIC18_nentries_0_V_din,
  output VMPROJ_L3PHIC18_nentries_1_V_we,
  output[7:0] VMPROJ_L3PHIC18_nentries_1_V_din,
  output VMPROJ_L3PHIC24_dataarray_data_V_wea,
  output[7:0] VMPROJ_L3PHIC24_dataarray_data_V_writeaddr,
  output[20:0] VMPROJ_L3PHIC24_dataarray_data_V_din,
  output VMPROJ_L3PHIC24_nentries_0_V_we,
  output[7:0] VMPROJ_L3PHIC24_nentries_0_V_din,
  output VMPROJ_L3PHIC24_nentries_1_V_we,
  output[7:0] VMPROJ_L3PHIC24_nentries_1_V_din,
  output AP_L3PHIC_dataarray_data_V_wea,
  output[9:0] AP_L3PHIC_dataarray_data_V_writeaddr,
  output[59:0] AP_L3PHIC_dataarray_data_V_din,
  output AP_L3PHIC_nentries_0_V_we,
  output[7:0] AP_L3PHIC_nentries_0_V_din,
  output AP_L3PHIC_nentries_1_V_we,
  output[7:0] AP_L3PHIC_nentries_1_V_din,
  output AP_L3PHIC_nentries_2_V_we,
  output[7:0] AP_L3PHIC_nentries_2_V_din,
  output AP_L3PHIC_nentries_3_V_we,
  output[7:0] AP_L3PHIC_nentries_3_V_din,
  output AP_L3PHIC_nentries_4_V_we,
  output[7:0] AP_L3PHIC_nentries_4_V_din,
  output AP_L3PHIC_nentries_5_V_we,
  output[7:0] AP_L3PHIC_nentries_5_V_din,
  output AP_L3PHIC_nentries_6_V_we,
  output[7:0] AP_L3PHIC_nentries_6_V_din,
  output AP_L3PHIC_nentries_7_V_we,
  output[7:0] AP_L3PHIC_nentries_7_V_din,
  output VMPROJ_L3PHIC23_dataarray_data_V_wea,
  output[7:0] VMPROJ_L3PHIC23_dataarray_data_V_writeaddr,
  output[20:0] VMPROJ_L3PHIC23_dataarray_data_V_din,
  output VMPROJ_L3PHIC23_nentries_0_V_we,
  output[7:0] VMPROJ_L3PHIC23_nentries_0_V_din,
  output VMPROJ_L3PHIC23_nentries_1_V_we,
  output[7:0] VMPROJ_L3PHIC23_nentries_1_V_din,
  output ProjectionRouter_done
);

ProjectionRouter_BARRELPS_BARREL_8_3_0 PR_L3PHIC(
  .ap_clk(clk),
  .ap_rst(reset),
  .ap_start(en_proc),
  .ap_done(ProjectionRouter_done),
  .bx_V(bx_in_ProjectionRouter),
  .proj1in_dataarray_data_V_ce0(TPROJ_L1L2XXF_L3PHIC_dataarray_data_V_enb),
  .proj1in_dataarray_data_V_address0(TPROJ_L1L2XXF_L3PHIC_dataarray_data_V_readaddr),
  .proj1in_dataarray_data_V_q0(TPROJ_L1L2XXF_L3PHIC_dataarray_data_V_dout),
  .proj1in_nentries_0_V(TPROJ_L1L2XXF_L3PHIC_nentries_0_V_dout),
  .proj1in_nentries_1_V(TPROJ_L1L2XXF_L3PHIC_nentries_1_V_dout),
  .proj2in_dataarray_data_V_ce0(TPROJ_L1L2XXG_L3PHIC_dataarray_data_V_enb),
  .proj2in_dataarray_data_V_address0(TPROJ_L1L2XXG_L3PHIC_dataarray_data_V_readaddr),
  .proj2in_dataarray_data_V_q0(TPROJ_L1L2XXG_L3PHIC_dataarray_data_V_dout),
  .proj2in_nentries_0_V(TPROJ_L1L2XXG_L3PHIC_nentries_0_V_dout),
  .proj2in_nentries_1_V(TPROJ_L1L2XXG_L3PHIC_nentries_1_V_dout),
  .proj3in_dataarray_data_V_ce0(TPROJ_L1L2XXH_L3PHIC_dataarray_data_V_enb),
  .proj3in_dataarray_data_V_address0(TPROJ_L1L2XXH_L3PHIC_dataarray_data_V_readaddr),
  .proj3in_dataarray_data_V_q0(TPROJ_L1L2XXH_L3PHIC_dataarray_data_V_dout),
  .proj3in_nentries_0_V(TPROJ_L1L2XXH_L3PHIC_nentries_0_V_dout),
  .proj3in_nentries_1_V(TPROJ_L1L2XXH_L3PHIC_nentries_1_V_dout),
  .proj4in_dataarray_data_V_ce0(TPROJ_L1L2XXI_L3PHIC_dataarray_data_V_enb),
  .proj4in_dataarray_data_V_address0(TPROJ_L1L2XXI_L3PHIC_dataarray_data_V_readaddr),
  .proj4in_dataarray_data_V_q0(TPROJ_L1L2XXI_L3PHIC_dataarray_data_V_dout),
  .proj4in_nentries_0_V(TPROJ_L1L2XXI_L3PHIC_nentries_0_V_dout),
  .proj4in_nentries_1_V(TPROJ_L1L2XXI_L3PHIC_nentries_1_V_dout),
  .proj5in_dataarray_data_V_ce0(TPROJ_L1L2XXJ_L3PHIC_dataarray_data_V_enb),
  .proj5in_dataarray_data_V_address0(TPROJ_L1L2XXJ_L3PHIC_dataarray_data_V_readaddr),
  .proj5in_dataarray_data_V_q0(TPROJ_L1L2XXJ_L3PHIC_dataarray_data_V_dout),
  .proj5in_nentries_0_V(TPROJ_L1L2XXJ_L3PHIC_nentries_0_V_dout),
  .proj5in_nentries_1_V(TPROJ_L1L2XXJ_L3PHIC_nentries_1_V_dout),
  .proj6in_dataarray_data_V_ce0(TPROJ_L5L6XXB_L3PHIC_dataarray_data_V_enb),
  .proj6in_dataarray_data_V_address0(TPROJ_L5L6XXB_L3PHIC_dataarray_data_V_readaddr),
  .proj6in_dataarray_data_V_q0(TPROJ_L5L6XXB_L3PHIC_dataarray_data_V_dout),
  .proj6in_nentries_0_V(TPROJ_L5L6XXB_L3PHIC_nentries_0_V_dout),
  .proj6in_nentries_1_V(TPROJ_L5L6XXB_L3PHIC_nentries_1_V_dout),
  .proj7in_dataarray_data_V_ce0(TPROJ_L5L6XXC_L3PHIC_dataarray_data_V_enb),
  .proj7in_dataarray_data_V_address0(TPROJ_L5L6XXC_L3PHIC_dataarray_data_V_readaddr),
  .proj7in_dataarray_data_V_q0(TPROJ_L5L6XXC_L3PHIC_dataarray_data_V_dout),
  .proj7in_nentries_0_V(TPROJ_L5L6XXC_L3PHIC_nentries_0_V_dout),
  .proj7in_nentries_1_V(TPROJ_L5L6XXC_L3PHIC_nentries_1_V_dout),
  .proj8in_dataarray_data_V_ce0(TPROJ_L5L6XXD_L3PHIC_dataarray_data_V_enb),
  .proj8in_dataarray_data_V_address0(TPROJ_L5L6XXD_L3PHIC_dataarray_data_V_readaddr),
  .proj8in_dataarray_data_V_q0(TPROJ_L5L6XXD_L3PHIC_dataarray_data_V_dout),
  .proj8in_nentries_0_V(TPROJ_L5L6XXD_L3PHIC_nentries_0_V_dout),
  .proj8in_nentries_1_V(TPROJ_L5L6XXD_L3PHIC_nentries_1_V_dout),
  .bx_o_V(bx_out_ProjectionRouter),
  .allprojout_dataarray_data_V_we0(AP_L3PHIC_dataarray_data_V_wea),
  .allprojout_dataarray_data_V_address0(AP_L3PHIC_dataarray_data_V_writeaddr),
  .allprojout_dataarray_data_V_d0(AP_L3PHIC_dataarray_data_V_din),
  .allprojout_nentries_0_V_ap_vld(AP_L3PHIC_nentries_0_V_we),
  .allprojout_nentries_0_V(AP_L3PHIC_nentries_0_V_din),
  .allprojout_nentries_1_V_ap_vld(AP_L3PHIC_nentries_1_V_we),
  .allprojout_nentries_1_V(AP_L3PHIC_nentries_1_V_din),
  .allprojout_nentries_2_V_ap_vld(AP_L3PHIC_nentries_2_V_we),
  .allprojout_nentries_2_V(AP_L3PHIC_nentries_2_V_din),
  .allprojout_nentries_3_V_ap_vld(AP_L3PHIC_nentries_3_V_we),
  .allprojout_nentries_3_V(AP_L3PHIC_nentries_3_V_din),
  .allprojout_nentries_4_V_ap_vld(AP_L3PHIC_nentries_4_V_we),
  .allprojout_nentries_4_V(AP_L3PHIC_nentries_4_V_din),
  .allprojout_nentries_5_V_ap_vld(AP_L3PHIC_nentries_5_V_we),
  .allprojout_nentries_5_V(AP_L3PHIC_nentries_5_V_din),
  .allprojout_nentries_6_V_ap_vld(AP_L3PHIC_nentries_6_V_we),
  .allprojout_nentries_6_V(AP_L3PHIC_nentries_6_V_din),
  .allprojout_nentries_7_V_ap_vld(AP_L3PHIC_nentries_7_V_we),
  .allprojout_nentries_7_V(AP_L3PHIC_nentries_7_V_din),
  .vmprojout1_dataarray_data_V_we0(VMPROJ_L3PHIC17_dataarray_data_V_wea),
  .vmprojout1_dataarray_data_V_address0(VMPROJ_L3PHIC17_dataarray_data_V_writeaddr),
  .vmprojout1_dataarray_data_V_d0(VMPROJ_L3PHIC17_dataarray_data_V_din),
  .vmprojout1_nentries_0_V_ap_vld(VMPROJ_L3PHIC17_nentries_0_V_we),
  .vmprojout1_nentries_0_V(VMPROJ_L3PHIC17_nentries_0_V_din),
  .vmprojout1_nentries_1_V_ap_vld(VMPROJ_L3PHIC17_nentries_1_V_we),
  .vmprojout1_nentries_1_V(VMPROJ_L3PHIC17_nentries_1_V_din),
  .vmprojout2_dataarray_data_V_we0(VMPROJ_L3PHIC18_dataarray_data_V_wea),
  .vmprojout2_dataarray_data_V_address0(VMPROJ_L3PHIC18_dataarray_data_V_writeaddr),
  .vmprojout2_dataarray_data_V_d0(VMPROJ_L3PHIC18_dataarray_data_V_din),
  .vmprojout2_nentries_0_V_ap_vld(VMPROJ_L3PHIC18_nentries_0_V_we),
  .vmprojout2_nentries_0_V(VMPROJ_L3PHIC18_nentries_0_V_din),
  .vmprojout2_nentries_1_V_ap_vld(VMPROJ_L3PHIC18_nentries_1_V_we),
  .vmprojout2_nentries_1_V(VMPROJ_L3PHIC18_nentries_1_V_din),
  .vmprojout3_dataarray_data_V_we0(VMPROJ_L3PHIC19_dataarray_data_V_wea),
  .vmprojout3_dataarray_data_V_address0(VMPROJ_L3PHIC19_dataarray_data_V_writeaddr),
  .vmprojout3_dataarray_data_V_d0(VMPROJ_L3PHIC19_dataarray_data_V_din),
  .vmprojout3_nentries_0_V_ap_vld(VMPROJ_L3PHIC19_nentries_0_V_we),
  .vmprojout3_nentries_0_V(VMPROJ_L3PHIC19_nentries_0_V_din),
  .vmprojout3_nentries_1_V_ap_vld(VMPROJ_L3PHIC19_nentries_1_V_we),
  .vmprojout3_nentries_1_V(VMPROJ_L3PHIC19_nentries_1_V_din),
  .vmprojout4_dataarray_data_V_we0(VMPROJ_L3PHIC20_dataarray_data_V_wea),
  .vmprojout4_dataarray_data_V_address0(VMPROJ_L3PHIC20_dataarray_data_V_writeaddr),
  .vmprojout4_dataarray_data_V_d0(VMPROJ_L3PHIC20_dataarray_data_V_din),
  .vmprojout4_nentries_0_V_ap_vld(VMPROJ_L3PHIC20_nentries_0_V_we),
  .vmprojout4_nentries_0_V(VMPROJ_L3PHIC20_nentries_0_V_din),
  .vmprojout4_nentries_1_V_ap_vld(VMPROJ_L3PHIC20_nentries_1_V_we),
  .vmprojout4_nentries_1_V(VMPROJ_L3PHIC20_nentries_1_V_din),
  .vmprojout5_dataarray_data_V_we0(VMPROJ_L3PHIC21_dataarray_data_V_wea),
  .vmprojout5_dataarray_data_V_address0(VMPROJ_L3PHIC21_dataarray_data_V_writeaddr),
  .vmprojout5_dataarray_data_V_d0(VMPROJ_L3PHIC21_dataarray_data_V_din),
  .vmprojout5_nentries_0_V_ap_vld(VMPROJ_L3PHIC21_nentries_0_V_we),
  .vmprojout5_nentries_0_V(VMPROJ_L3PHIC21_nentries_0_V_din),
  .vmprojout5_nentries_1_V_ap_vld(VMPROJ_L3PHIC21_nentries_1_V_we),
  .vmprojout5_nentries_1_V(VMPROJ_L3PHIC21_nentries_1_V_din),
  .vmprojout6_dataarray_data_V_we0(VMPROJ_L3PHIC22_dataarray_data_V_wea),
  .vmprojout6_dataarray_data_V_address0(VMPROJ_L3PHIC22_dataarray_data_V_writeaddr),
  .vmprojout6_dataarray_data_V_d0(VMPROJ_L3PHIC22_dataarray_data_V_din),
  .vmprojout6_nentries_0_V_ap_vld(VMPROJ_L3PHIC22_nentries_0_V_we),
  .vmprojout6_nentries_0_V(VMPROJ_L3PHIC22_nentries_0_V_din),
  .vmprojout6_nentries_1_V_ap_vld(VMPROJ_L3PHIC22_nentries_1_V_we),
  .vmprojout6_nentries_1_V(VMPROJ_L3PHIC22_nentries_1_V_din),
  .vmprojout7_dataarray_data_V_we0(VMPROJ_L3PHIC23_dataarray_data_V_wea),
  .vmprojout7_dataarray_data_V_address0(VMPROJ_L3PHIC23_dataarray_data_V_writeaddr),
  .vmprojout7_dataarray_data_V_d0(VMPROJ_L3PHIC23_dataarray_data_V_din),
  .vmprojout7_nentries_0_V_ap_vld(VMPROJ_L3PHIC23_nentries_0_V_we),
  .vmprojout7_nentries_0_V(VMPROJ_L3PHIC23_nentries_0_V_din),
  .vmprojout7_nentries_1_V_ap_vld(VMPROJ_L3PHIC23_nentries_1_V_we),
  .vmprojout7_nentries_1_V(VMPROJ_L3PHIC23_nentries_1_V_din),
  .vmprojout8_dataarray_data_V_we0(VMPROJ_L3PHIC24_dataarray_data_V_wea),
  .vmprojout8_dataarray_data_V_address0(VMPROJ_L3PHIC24_dataarray_data_V_writeaddr),
  .vmprojout8_dataarray_data_V_d0(VMPROJ_L3PHIC24_dataarray_data_V_din),
  .vmprojout8_nentries_0_V_ap_vld(VMPROJ_L3PHIC24_nentries_0_V_we),
  .vmprojout8_nentries_0_V(VMPROJ_L3PHIC24_nentries_0_V_din),
  .vmprojout8_nentries_1_V_ap_vld(VMPROJ_L3PHIC24_nentries_1_V_we),
  .vmprojout8_nentries_1_V(VMPROJ_L3PHIC24_nentries_1_V_din)
);

endmodule
