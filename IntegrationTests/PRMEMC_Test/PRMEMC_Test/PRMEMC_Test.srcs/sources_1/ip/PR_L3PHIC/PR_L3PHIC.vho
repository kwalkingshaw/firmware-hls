-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:ProjectionRouterTop:1.0
-- IP Revision: 2001291559

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT PR_L3PHIC
  PORT (
    proj1in_dataarray_data_V_ce0 : OUT STD_LOGIC;
    proj1in_nentries_V_ce0 : OUT STD_LOGIC;
    proj2in_dataarray_data_V_ce0 : OUT STD_LOGIC;
    proj2in_nentries_V_ce0 : OUT STD_LOGIC;
    proj3in_dataarray_data_V_ce0 : OUT STD_LOGIC;
    proj3in_nentries_V_ce0 : OUT STD_LOGIC;
    proj4in_dataarray_data_V_ce0 : OUT STD_LOGIC;
    proj4in_nentries_V_ce0 : OUT STD_LOGIC;
    proj5in_dataarray_data_V_ce0 : OUT STD_LOGIC;
    proj5in_nentries_V_ce0 : OUT STD_LOGIC;
    proj6in_dataarray_data_V_ce0 : OUT STD_LOGIC;
    proj6in_nentries_V_ce0 : OUT STD_LOGIC;
    proj7in_dataarray_data_V_ce0 : OUT STD_LOGIC;
    proj7in_nentries_V_ce0 : OUT STD_LOGIC;
    proj8in_dataarray_data_V_ce0 : OUT STD_LOGIC;
    proj8in_nentries_V_ce0 : OUT STD_LOGIC;
    bx_o_V_ap_vld : OUT STD_LOGIC;
    allprojout_dataarray_data_V_ce0 : OUT STD_LOGIC;
    allprojout_dataarray_data_V_we0 : OUT STD_LOGIC;
    allprojout_nentries_0_V_ap_vld : OUT STD_LOGIC;
    allprojout_nentries_1_V_ap_vld : OUT STD_LOGIC;
    allprojout_nentries_2_V_ap_vld : OUT STD_LOGIC;
    allprojout_nentries_3_V_ap_vld : OUT STD_LOGIC;
    allprojout_nentries_4_V_ap_vld : OUT STD_LOGIC;
    allprojout_nentries_5_V_ap_vld : OUT STD_LOGIC;
    allprojout_nentries_6_V_ap_vld : OUT STD_LOGIC;
    allprojout_nentries_7_V_ap_vld : OUT STD_LOGIC;
    vmprojout1_dataarray_data_V_ce0 : OUT STD_LOGIC;
    vmprojout1_dataarray_data_V_we0 : OUT STD_LOGIC;
    vmprojout1_nentries_0_V_ap_vld : OUT STD_LOGIC;
    vmprojout1_nentries_1_V_ap_vld : OUT STD_LOGIC;
    vmprojout2_dataarray_data_V_ce0 : OUT STD_LOGIC;
    vmprojout2_dataarray_data_V_we0 : OUT STD_LOGIC;
    vmprojout2_nentries_0_V_ap_vld : OUT STD_LOGIC;
    vmprojout2_nentries_1_V_ap_vld : OUT STD_LOGIC;
    vmprojout3_dataarray_data_V_ce0 : OUT STD_LOGIC;
    vmprojout3_dataarray_data_V_we0 : OUT STD_LOGIC;
    vmprojout3_nentries_0_V_ap_vld : OUT STD_LOGIC;
    vmprojout3_nentries_1_V_ap_vld : OUT STD_LOGIC;
    vmprojout4_dataarray_data_V_ce0 : OUT STD_LOGIC;
    vmprojout4_dataarray_data_V_we0 : OUT STD_LOGIC;
    vmprojout4_nentries_0_V_ap_vld : OUT STD_LOGIC;
    vmprojout4_nentries_1_V_ap_vld : OUT STD_LOGIC;
    vmprojout5_dataarray_data_V_ce0 : OUT STD_LOGIC;
    vmprojout5_dataarray_data_V_we0 : OUT STD_LOGIC;
    vmprojout5_nentries_0_V_ap_vld : OUT STD_LOGIC;
    vmprojout5_nentries_1_V_ap_vld : OUT STD_LOGIC;
    vmprojout6_dataarray_data_V_ce0 : OUT STD_LOGIC;
    vmprojout6_dataarray_data_V_we0 : OUT STD_LOGIC;
    vmprojout6_nentries_0_V_ap_vld : OUT STD_LOGIC;
    vmprojout6_nentries_1_V_ap_vld : OUT STD_LOGIC;
    vmprojout7_dataarray_data_V_ce0 : OUT STD_LOGIC;
    vmprojout7_dataarray_data_V_we0 : OUT STD_LOGIC;
    vmprojout7_nentries_0_V_ap_vld : OUT STD_LOGIC;
    vmprojout7_nentries_1_V_ap_vld : OUT STD_LOGIC;
    vmprojout8_dataarray_data_V_ce0 : OUT STD_LOGIC;
    vmprojout8_dataarray_data_V_we0 : OUT STD_LOGIC;
    vmprojout8_nentries_0_V_ap_vld : OUT STD_LOGIC;
    vmprojout8_nentries_1_V_ap_vld : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    bx_V : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    proj1in_dataarray_data_V_address0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    proj1in_dataarray_data_V_q0 : IN STD_LOGIC_VECTOR(59 DOWNTO 0);
    proj1in_nentries_V_address0 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    proj1in_nentries_V_q0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    proj2in_dataarray_data_V_address0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    proj2in_dataarray_data_V_q0 : IN STD_LOGIC_VECTOR(59 DOWNTO 0);
    proj2in_nentries_V_address0 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    proj2in_nentries_V_q0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    proj3in_dataarray_data_V_address0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    proj3in_dataarray_data_V_q0 : IN STD_LOGIC_VECTOR(59 DOWNTO 0);
    proj3in_nentries_V_address0 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    proj3in_nentries_V_q0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    proj4in_dataarray_data_V_address0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    proj4in_dataarray_data_V_q0 : IN STD_LOGIC_VECTOR(59 DOWNTO 0);
    proj4in_nentries_V_address0 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    proj4in_nentries_V_q0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    proj5in_dataarray_data_V_address0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    proj5in_dataarray_data_V_q0 : IN STD_LOGIC_VECTOR(59 DOWNTO 0);
    proj5in_nentries_V_address0 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    proj5in_nentries_V_q0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    proj6in_dataarray_data_V_address0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    proj6in_dataarray_data_V_q0 : IN STD_LOGIC_VECTOR(59 DOWNTO 0);
    proj6in_nentries_V_address0 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    proj6in_nentries_V_q0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    proj7in_dataarray_data_V_address0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    proj7in_dataarray_data_V_q0 : IN STD_LOGIC_VECTOR(59 DOWNTO 0);
    proj7in_nentries_V_address0 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    proj7in_nentries_V_q0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    proj8in_dataarray_data_V_address0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    proj8in_dataarray_data_V_q0 : IN STD_LOGIC_VECTOR(59 DOWNTO 0);
    proj8in_nentries_V_address0 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    proj8in_nentries_V_q0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    bx_o_V : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    allprojout_dataarray_data_V_address0 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    allprojout_dataarray_data_V_d0 : OUT STD_LOGIC_VECTOR(59 DOWNTO 0);
    allprojout_nentries_0_V : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    allprojout_nentries_1_V : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    allprojout_nentries_2_V : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    allprojout_nentries_3_V : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    allprojout_nentries_4_V : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    allprojout_nentries_5_V : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    allprojout_nentries_6_V : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    allprojout_nentries_7_V : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    vmprojout1_dataarray_data_V_address0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    vmprojout1_dataarray_data_V_d0 : OUT STD_LOGIC_VECTOR(20 DOWNTO 0);
    vmprojout1_nentries_0_V : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    vmprojout1_nentries_1_V : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    vmprojout2_dataarray_data_V_address0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    vmprojout2_dataarray_data_V_d0 : OUT STD_LOGIC_VECTOR(20 DOWNTO 0);
    vmprojout2_nentries_0_V : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    vmprojout2_nentries_1_V : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    vmprojout3_dataarray_data_V_address0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    vmprojout3_dataarray_data_V_d0 : OUT STD_LOGIC_VECTOR(20 DOWNTO 0);
    vmprojout3_nentries_0_V : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    vmprojout3_nentries_1_V : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    vmprojout4_dataarray_data_V_address0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    vmprojout4_dataarray_data_V_d0 : OUT STD_LOGIC_VECTOR(20 DOWNTO 0);
    vmprojout4_nentries_0_V : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    vmprojout4_nentries_1_V : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    vmprojout5_dataarray_data_V_address0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    vmprojout5_dataarray_data_V_d0 : OUT STD_LOGIC_VECTOR(20 DOWNTO 0);
    vmprojout5_nentries_0_V : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    vmprojout5_nentries_1_V : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    vmprojout6_dataarray_data_V_address0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    vmprojout6_dataarray_data_V_d0 : OUT STD_LOGIC_VECTOR(20 DOWNTO 0);
    vmprojout6_nentries_0_V : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    vmprojout6_nentries_1_V : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    vmprojout7_dataarray_data_V_address0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    vmprojout7_dataarray_data_V_d0 : OUT STD_LOGIC_VECTOR(20 DOWNTO 0);
    vmprojout7_nentries_0_V : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    vmprojout7_nentries_1_V : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    vmprojout8_dataarray_data_V_address0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    vmprojout8_dataarray_data_V_d0 : OUT STD_LOGIC_VECTOR(20 DOWNTO 0);
    vmprojout8_nentries_0_V : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    vmprojout8_nentries_1_V : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : PR_L3PHIC
  PORT MAP (
    proj1in_dataarray_data_V_ce0 => proj1in_dataarray_data_V_ce0,
    proj1in_nentries_V_ce0 => proj1in_nentries_V_ce0,
    proj2in_dataarray_data_V_ce0 => proj2in_dataarray_data_V_ce0,
    proj2in_nentries_V_ce0 => proj2in_nentries_V_ce0,
    proj3in_dataarray_data_V_ce0 => proj3in_dataarray_data_V_ce0,
    proj3in_nentries_V_ce0 => proj3in_nentries_V_ce0,
    proj4in_dataarray_data_V_ce0 => proj4in_dataarray_data_V_ce0,
    proj4in_nentries_V_ce0 => proj4in_nentries_V_ce0,
    proj5in_dataarray_data_V_ce0 => proj5in_dataarray_data_V_ce0,
    proj5in_nentries_V_ce0 => proj5in_nentries_V_ce0,
    proj6in_dataarray_data_V_ce0 => proj6in_dataarray_data_V_ce0,
    proj6in_nentries_V_ce0 => proj6in_nentries_V_ce0,
    proj7in_dataarray_data_V_ce0 => proj7in_dataarray_data_V_ce0,
    proj7in_nentries_V_ce0 => proj7in_nentries_V_ce0,
    proj8in_dataarray_data_V_ce0 => proj8in_dataarray_data_V_ce0,
    proj8in_nentries_V_ce0 => proj8in_nentries_V_ce0,
    bx_o_V_ap_vld => bx_o_V_ap_vld,
    allprojout_dataarray_data_V_ce0 => allprojout_dataarray_data_V_ce0,
    allprojout_dataarray_data_V_we0 => allprojout_dataarray_data_V_we0,
    allprojout_nentries_0_V_ap_vld => allprojout_nentries_0_V_ap_vld,
    allprojout_nentries_1_V_ap_vld => allprojout_nentries_1_V_ap_vld,
    allprojout_nentries_2_V_ap_vld => allprojout_nentries_2_V_ap_vld,
    allprojout_nentries_3_V_ap_vld => allprojout_nentries_3_V_ap_vld,
    allprojout_nentries_4_V_ap_vld => allprojout_nentries_4_V_ap_vld,
    allprojout_nentries_5_V_ap_vld => allprojout_nentries_5_V_ap_vld,
    allprojout_nentries_6_V_ap_vld => allprojout_nentries_6_V_ap_vld,
    allprojout_nentries_7_V_ap_vld => allprojout_nentries_7_V_ap_vld,
    vmprojout1_dataarray_data_V_ce0 => vmprojout1_dataarray_data_V_ce0,
    vmprojout1_dataarray_data_V_we0 => vmprojout1_dataarray_data_V_we0,
    vmprojout1_nentries_0_V_ap_vld => vmprojout1_nentries_0_V_ap_vld,
    vmprojout1_nentries_1_V_ap_vld => vmprojout1_nentries_1_V_ap_vld,
    vmprojout2_dataarray_data_V_ce0 => vmprojout2_dataarray_data_V_ce0,
    vmprojout2_dataarray_data_V_we0 => vmprojout2_dataarray_data_V_we0,
    vmprojout2_nentries_0_V_ap_vld => vmprojout2_nentries_0_V_ap_vld,
    vmprojout2_nentries_1_V_ap_vld => vmprojout2_nentries_1_V_ap_vld,
    vmprojout3_dataarray_data_V_ce0 => vmprojout3_dataarray_data_V_ce0,
    vmprojout3_dataarray_data_V_we0 => vmprojout3_dataarray_data_V_we0,
    vmprojout3_nentries_0_V_ap_vld => vmprojout3_nentries_0_V_ap_vld,
    vmprojout3_nentries_1_V_ap_vld => vmprojout3_nentries_1_V_ap_vld,
    vmprojout4_dataarray_data_V_ce0 => vmprojout4_dataarray_data_V_ce0,
    vmprojout4_dataarray_data_V_we0 => vmprojout4_dataarray_data_V_we0,
    vmprojout4_nentries_0_V_ap_vld => vmprojout4_nentries_0_V_ap_vld,
    vmprojout4_nentries_1_V_ap_vld => vmprojout4_nentries_1_V_ap_vld,
    vmprojout5_dataarray_data_V_ce0 => vmprojout5_dataarray_data_V_ce0,
    vmprojout5_dataarray_data_V_we0 => vmprojout5_dataarray_data_V_we0,
    vmprojout5_nentries_0_V_ap_vld => vmprojout5_nentries_0_V_ap_vld,
    vmprojout5_nentries_1_V_ap_vld => vmprojout5_nentries_1_V_ap_vld,
    vmprojout6_dataarray_data_V_ce0 => vmprojout6_dataarray_data_V_ce0,
    vmprojout6_dataarray_data_V_we0 => vmprojout6_dataarray_data_V_we0,
    vmprojout6_nentries_0_V_ap_vld => vmprojout6_nentries_0_V_ap_vld,
    vmprojout6_nentries_1_V_ap_vld => vmprojout6_nentries_1_V_ap_vld,
    vmprojout7_dataarray_data_V_ce0 => vmprojout7_dataarray_data_V_ce0,
    vmprojout7_dataarray_data_V_we0 => vmprojout7_dataarray_data_V_we0,
    vmprojout7_nentries_0_V_ap_vld => vmprojout7_nentries_0_V_ap_vld,
    vmprojout7_nentries_1_V_ap_vld => vmprojout7_nentries_1_V_ap_vld,
    vmprojout8_dataarray_data_V_ce0 => vmprojout8_dataarray_data_V_ce0,
    vmprojout8_dataarray_data_V_we0 => vmprojout8_dataarray_data_V_we0,
    vmprojout8_nentries_0_V_ap_vld => vmprojout8_nentries_0_V_ap_vld,
    vmprojout8_nentries_1_V_ap_vld => vmprojout8_nentries_1_V_ap_vld,
    ap_clk => ap_clk,
    ap_rst => ap_rst,
    ap_start => ap_start,
    ap_done => ap_done,
    ap_idle => ap_idle,
    ap_ready => ap_ready,
    bx_V => bx_V,
    proj1in_dataarray_data_V_address0 => proj1in_dataarray_data_V_address0,
    proj1in_dataarray_data_V_q0 => proj1in_dataarray_data_V_q0,
    proj1in_nentries_V_address0 => proj1in_nentries_V_address0,
    proj1in_nentries_V_q0 => proj1in_nentries_V_q0,
    proj2in_dataarray_data_V_address0 => proj2in_dataarray_data_V_address0,
    proj2in_dataarray_data_V_q0 => proj2in_dataarray_data_V_q0,
    proj2in_nentries_V_address0 => proj2in_nentries_V_address0,
    proj2in_nentries_V_q0 => proj2in_nentries_V_q0,
    proj3in_dataarray_data_V_address0 => proj3in_dataarray_data_V_address0,
    proj3in_dataarray_data_V_q0 => proj3in_dataarray_data_V_q0,
    proj3in_nentries_V_address0 => proj3in_nentries_V_address0,
    proj3in_nentries_V_q0 => proj3in_nentries_V_q0,
    proj4in_dataarray_data_V_address0 => proj4in_dataarray_data_V_address0,
    proj4in_dataarray_data_V_q0 => proj4in_dataarray_data_V_q0,
    proj4in_nentries_V_address0 => proj4in_nentries_V_address0,
    proj4in_nentries_V_q0 => proj4in_nentries_V_q0,
    proj5in_dataarray_data_V_address0 => proj5in_dataarray_data_V_address0,
    proj5in_dataarray_data_V_q0 => proj5in_dataarray_data_V_q0,
    proj5in_nentries_V_address0 => proj5in_nentries_V_address0,
    proj5in_nentries_V_q0 => proj5in_nentries_V_q0,
    proj6in_dataarray_data_V_address0 => proj6in_dataarray_data_V_address0,
    proj6in_dataarray_data_V_q0 => proj6in_dataarray_data_V_q0,
    proj6in_nentries_V_address0 => proj6in_nentries_V_address0,
    proj6in_nentries_V_q0 => proj6in_nentries_V_q0,
    proj7in_dataarray_data_V_address0 => proj7in_dataarray_data_V_address0,
    proj7in_dataarray_data_V_q0 => proj7in_dataarray_data_V_q0,
    proj7in_nentries_V_address0 => proj7in_nentries_V_address0,
    proj7in_nentries_V_q0 => proj7in_nentries_V_q0,
    proj8in_dataarray_data_V_address0 => proj8in_dataarray_data_V_address0,
    proj8in_dataarray_data_V_q0 => proj8in_dataarray_data_V_q0,
    proj8in_nentries_V_address0 => proj8in_nentries_V_address0,
    proj8in_nentries_V_q0 => proj8in_nentries_V_q0,
    bx_o_V => bx_o_V,
    allprojout_dataarray_data_V_address0 => allprojout_dataarray_data_V_address0,
    allprojout_dataarray_data_V_d0 => allprojout_dataarray_data_V_d0,
    allprojout_nentries_0_V => allprojout_nentries_0_V,
    allprojout_nentries_1_V => allprojout_nentries_1_V,
    allprojout_nentries_2_V => allprojout_nentries_2_V,
    allprojout_nentries_3_V => allprojout_nentries_3_V,
    allprojout_nentries_4_V => allprojout_nentries_4_V,
    allprojout_nentries_5_V => allprojout_nentries_5_V,
    allprojout_nentries_6_V => allprojout_nentries_6_V,
    allprojout_nentries_7_V => allprojout_nentries_7_V,
    vmprojout1_dataarray_data_V_address0 => vmprojout1_dataarray_data_V_address0,
    vmprojout1_dataarray_data_V_d0 => vmprojout1_dataarray_data_V_d0,
    vmprojout1_nentries_0_V => vmprojout1_nentries_0_V,
    vmprojout1_nentries_1_V => vmprojout1_nentries_1_V,
    vmprojout2_dataarray_data_V_address0 => vmprojout2_dataarray_data_V_address0,
    vmprojout2_dataarray_data_V_d0 => vmprojout2_dataarray_data_V_d0,
    vmprojout2_nentries_0_V => vmprojout2_nentries_0_V,
    vmprojout2_nentries_1_V => vmprojout2_nentries_1_V,
    vmprojout3_dataarray_data_V_address0 => vmprojout3_dataarray_data_V_address0,
    vmprojout3_dataarray_data_V_d0 => vmprojout3_dataarray_data_V_d0,
    vmprojout3_nentries_0_V => vmprojout3_nentries_0_V,
    vmprojout3_nentries_1_V => vmprojout3_nentries_1_V,
    vmprojout4_dataarray_data_V_address0 => vmprojout4_dataarray_data_V_address0,
    vmprojout4_dataarray_data_V_d0 => vmprojout4_dataarray_data_V_d0,
    vmprojout4_nentries_0_V => vmprojout4_nentries_0_V,
    vmprojout4_nentries_1_V => vmprojout4_nentries_1_V,
    vmprojout5_dataarray_data_V_address0 => vmprojout5_dataarray_data_V_address0,
    vmprojout5_dataarray_data_V_d0 => vmprojout5_dataarray_data_V_d0,
    vmprojout5_nentries_0_V => vmprojout5_nentries_0_V,
    vmprojout5_nentries_1_V => vmprojout5_nentries_1_V,
    vmprojout6_dataarray_data_V_address0 => vmprojout6_dataarray_data_V_address0,
    vmprojout6_dataarray_data_V_d0 => vmprojout6_dataarray_data_V_d0,
    vmprojout6_nentries_0_V => vmprojout6_nentries_0_V,
    vmprojout6_nentries_1_V => vmprojout6_nentries_1_V,
    vmprojout7_dataarray_data_V_address0 => vmprojout7_dataarray_data_V_address0,
    vmprojout7_dataarray_data_V_d0 => vmprojout7_dataarray_data_V_d0,
    vmprojout7_nentries_0_V => vmprojout7_nentries_0_V,
    vmprojout7_nentries_1_V => vmprojout7_nentries_1_V,
    vmprojout8_dataarray_data_V_address0 => vmprojout8_dataarray_data_V_address0,
    vmprojout8_dataarray_data_V_d0 => vmprojout8_dataarray_data_V_d0,
    vmprojout8_nentries_0_V => vmprojout8_nentries_0_V,
    vmprojout8_nentries_1_V => vmprojout8_nentries_1_V
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file PR_L3PHIC.vhd when simulating
-- the core, PR_L3PHIC. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.

