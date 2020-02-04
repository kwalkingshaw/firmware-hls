// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module read_inmem_1 (
        ap_ready,
        data_data_V_read,
        read_imem_V,
        ap_return
);


output   ap_ready;
input  [59:0] data_data_V_read;
input  [4:0] read_imem_V;
output  [59:0] ap_return;

wire    call_ret_i_i_i_i_read_inmem_fu_50_ap_ready;
wire   [59:0] call_ret_i_i_i_i_read_inmem_fu_50_ap_return;
wire   [0:0] tmp_fu_58_p2;
wire   [0:0] tmp_i2_fu_64_p2;
wire   [0:0] tmp_i2_i_fu_70_p2;
wire   [0:0] tmp_i2_i_i_fu_76_p2;
wire   [0:0] tmp_i_fu_82_p2;
wire   [0:0] tmp_i2_i1_fu_88_p2;
wire   [0:0] tmp_i2_i_i3_fu_94_p2;
wire   [0:0] tmp_i2_i_i_i_fu_100_p2;

read_inmem call_ret_i_i_i_i_read_inmem_fu_50(
    .ap_ready(call_ret_i_i_i_i_read_inmem_fu_50_ap_ready),
    .data_data_V_read(data_data_V_read),
    .read_imem_V(read_imem_V),
    .ap_return(call_ret_i_i_i_i_read_inmem_fu_50_ap_return)
);

assign ap_ready = 1'b1;

assign ap_return = call_ret_i_i_i_i_read_inmem_fu_50_ap_return;

assign tmp_fu_58_p2 = ((read_imem_V == 5'd8) ? 1'b1 : 1'b0);

assign tmp_i2_fu_64_p2 = ((read_imem_V == 5'd9) ? 1'b1 : 1'b0);

assign tmp_i2_i1_fu_88_p2 = ((read_imem_V == 5'd13) ? 1'b1 : 1'b0);

assign tmp_i2_i_fu_70_p2 = ((read_imem_V == 5'd10) ? 1'b1 : 1'b0);

assign tmp_i2_i_i3_fu_94_p2 = ((read_imem_V == 5'd14) ? 1'b1 : 1'b0);

assign tmp_i2_i_i_fu_76_p2 = ((read_imem_V == 5'd11) ? 1'b1 : 1'b0);

assign tmp_i2_i_i_i_fu_100_p2 = ((read_imem_V == 5'd15) ? 1'b1 : 1'b0);

assign tmp_i_fu_82_p2 = ((read_imem_V == 5'd12) ? 1'b1 : 1'b0);

endmodule //read_inmem_1
