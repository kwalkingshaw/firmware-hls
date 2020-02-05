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

-- IP VLNV: xilinx.com:hls:MatchEngineTopL1:1.0
-- IP Revision: 2001300950

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT MatchEngineTopL1_0
  PORT (
    bx_o_V_ap_vld : OUT STD_LOGIC;
    instubdata_dataarray_data_V_ce0 : OUT STD_LOGIC;
    inprojdata_dataarray_data_V_ce0 : OUT STD_LOGIC;
    outcandmatch_dataarray_data_V_ce0 : OUT STD_LOGIC;
    outcandmatch_dataarray_data_V_we0 : OUT STD_LOGIC;
    outcandmatch_nentries_0_V_ap_vld : OUT STD_LOGIC;
    outcandmatch_nentries_1_V_ap_vld : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    bx_V : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    bx_o_V : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    instubdata_dataarray_data_V_address0 : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
    instubdata_dataarray_data_V_q0 : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    instubdata_nentries_0_V_0 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    instubdata_nentries_0_V_1 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    instubdata_nentries_0_V_2 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    instubdata_nentries_0_V_3 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    instubdata_nentries_0_V_4 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    instubdata_nentries_0_V_5 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    instubdata_nentries_0_V_6 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    instubdata_nentries_0_V_7 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    instubdata_nentries_1_V_0 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    instubdata_nentries_1_V_1 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    instubdata_nentries_1_V_2 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    instubdata_nentries_1_V_3 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    instubdata_nentries_1_V_4 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    instubdata_nentries_1_V_5 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    instubdata_nentries_1_V_6 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    instubdata_nentries_1_V_7 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    instubdata_nentries_2_V_0 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    instubdata_nentries_2_V_1 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    instubdata_nentries_2_V_2 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    instubdata_nentries_2_V_3 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    instubdata_nentries_2_V_4 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    instubdata_nentries_2_V_5 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    instubdata_nentries_2_V_6 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    instubdata_nentries_2_V_7 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    instubdata_nentries_3_V_0 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    instubdata_nentries_3_V_1 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    instubdata_nentries_3_V_2 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    instubdata_nentries_3_V_3 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    instubdata_nentries_3_V_4 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    instubdata_nentries_3_V_5 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    instubdata_nentries_3_V_6 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    instubdata_nentries_3_V_7 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    inprojdata_dataarray_data_V_address0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    inprojdata_dataarray_data_V_q0 : IN STD_LOGIC_VECTOR(20 DOWNTO 0);
    inprojdata_nentries_0_V : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    inprojdata_nentries_1_V : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    outcandmatch_dataarray_data_V_address0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    outcandmatch_dataarray_data_V_d0 : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    outcandmatch_nentries_0_V : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    outcandmatch_nentries_1_V : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : MatchEngineTopL1_0
  PORT MAP (
    bx_o_V_ap_vld => bx_o_V_ap_vld,
    instubdata_dataarray_data_V_ce0 => instubdata_dataarray_data_V_ce0,
    inprojdata_dataarray_data_V_ce0 => inprojdata_dataarray_data_V_ce0,
    outcandmatch_dataarray_data_V_ce0 => outcandmatch_dataarray_data_V_ce0,
    outcandmatch_dataarray_data_V_we0 => outcandmatch_dataarray_data_V_we0,
    outcandmatch_nentries_0_V_ap_vld => outcandmatch_nentries_0_V_ap_vld,
    outcandmatch_nentries_1_V_ap_vld => outcandmatch_nentries_1_V_ap_vld,
    ap_clk => ap_clk,
    ap_rst => ap_rst,
    ap_start => ap_start,
    ap_done => ap_done,
    ap_idle => ap_idle,
    ap_ready => ap_ready,
    bx_V => bx_V,
    bx_o_V => bx_o_V,
    instubdata_dataarray_data_V_address0 => instubdata_dataarray_data_V_address0,
    instubdata_dataarray_data_V_q0 => instubdata_dataarray_data_V_q0,
    instubdata_nentries_0_V_0 => instubdata_nentries_0_V_0,
    instubdata_nentries_0_V_1 => instubdata_nentries_0_V_1,
    instubdata_nentries_0_V_2 => instubdata_nentries_0_V_2,
    instubdata_nentries_0_V_3 => instubdata_nentries_0_V_3,
    instubdata_nentries_0_V_4 => instubdata_nentries_0_V_4,
    instubdata_nentries_0_V_5 => instubdata_nentries_0_V_5,
    instubdata_nentries_0_V_6 => instubdata_nentries_0_V_6,
    instubdata_nentries_0_V_7 => instubdata_nentries_0_V_7,
    instubdata_nentries_1_V_0 => instubdata_nentries_1_V_0,
    instubdata_nentries_1_V_1 => instubdata_nentries_1_V_1,
    instubdata_nentries_1_V_2 => instubdata_nentries_1_V_2,
    instubdata_nentries_1_V_3 => instubdata_nentries_1_V_3,
    instubdata_nentries_1_V_4 => instubdata_nentries_1_V_4,
    instubdata_nentries_1_V_5 => instubdata_nentries_1_V_5,
    instubdata_nentries_1_V_6 => instubdata_nentries_1_V_6,
    instubdata_nentries_1_V_7 => instubdata_nentries_1_V_7,
    instubdata_nentries_2_V_0 => instubdata_nentries_2_V_0,
    instubdata_nentries_2_V_1 => instubdata_nentries_2_V_1,
    instubdata_nentries_2_V_2 => instubdata_nentries_2_V_2,
    instubdata_nentries_2_V_3 => instubdata_nentries_2_V_3,
    instubdata_nentries_2_V_4 => instubdata_nentries_2_V_4,
    instubdata_nentries_2_V_5 => instubdata_nentries_2_V_5,
    instubdata_nentries_2_V_6 => instubdata_nentries_2_V_6,
    instubdata_nentries_2_V_7 => instubdata_nentries_2_V_7,
    instubdata_nentries_3_V_0 => instubdata_nentries_3_V_0,
    instubdata_nentries_3_V_1 => instubdata_nentries_3_V_1,
    instubdata_nentries_3_V_2 => instubdata_nentries_3_V_2,
    instubdata_nentries_3_V_3 => instubdata_nentries_3_V_3,
    instubdata_nentries_3_V_4 => instubdata_nentries_3_V_4,
    instubdata_nentries_3_V_5 => instubdata_nentries_3_V_5,
    instubdata_nentries_3_V_6 => instubdata_nentries_3_V_6,
    instubdata_nentries_3_V_7 => instubdata_nentries_3_V_7,
    inprojdata_dataarray_data_V_address0 => inprojdata_dataarray_data_V_address0,
    inprojdata_dataarray_data_V_q0 => inprojdata_dataarray_data_V_q0,
    inprojdata_nentries_0_V => inprojdata_nentries_0_V,
    inprojdata_nentries_1_V => inprojdata_nentries_1_V,
    outcandmatch_dataarray_data_V_address0 => outcandmatch_dataarray_data_V_address0,
    outcandmatch_dataarray_data_V_d0 => outcandmatch_dataarray_data_V_d0,
    outcandmatch_nentries_0_V => outcandmatch_nentries_0_V,
    outcandmatch_nentries_1_V => outcandmatch_nentries_1_V
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file MatchEngineTopL1_0.vhd when simulating
-- the core, MatchEngineTopL1_0. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.

