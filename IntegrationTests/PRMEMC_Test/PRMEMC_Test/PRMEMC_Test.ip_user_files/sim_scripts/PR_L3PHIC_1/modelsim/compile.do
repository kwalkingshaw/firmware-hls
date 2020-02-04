vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../ipstatic/hdl/verilog/ProjectionRouterTbkb.v" \
"../../../ipstatic/hdl/verilog/read_inmem.v" \
"../../../ipstatic/hdl/verilog/read_inmem_1.v" \
"../../../ipstatic/hdl/verilog/ProjectionRouterTop.v" \
"../../../../PRMEMC_Test.srcs/sources_1/ip/PR_L3PHIC_1/sim/PR_L3PHIC.v" \


vlog -work xil_defaultlib \
"glbl.v"

