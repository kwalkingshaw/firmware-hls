vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../ipstatic/hdl/verilog/MatchEngine_3_0_s.v" \
"../../../ipstatic/hdl/verilog/MatchEngine_3_0_sbkb.v" \
"../../../ipstatic/hdl/verilog/MatchEngineTopL1_cud.v" \
"../../../ipstatic/hdl/verilog/MatchEngineTopL1_dEe.v" \
"../../../ipstatic/hdl/verilog/MatchEngineTopL1.v" \
"../../../../PRME_Test.srcs/sources_1/ip/MatchEngineTopL3/sim/MatchEngineTopL3.v" \


vlog -work xil_defaultlib \
"glbl.v"

