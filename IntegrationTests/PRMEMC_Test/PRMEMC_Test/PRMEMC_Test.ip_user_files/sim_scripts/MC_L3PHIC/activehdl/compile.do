vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../ipstatic/hdl/verilog/MatchCalculator.v" \
"../../../ipstatic/hdl/verilog/MatchCalculator_Lbkb.v" \
"../../../ipstatic/hdl/verilog/MatchCalculator_Lcud.v" \
"../../../ipstatic/hdl/verilog/MatchCalculatorTodEe.v" \
"../../../ipstatic/hdl/verilog/MatchCalculatorTop.v" \
"../../../../PRMEMC_Test.srcs/sources_1/ip/MC_L3PHIC/sim/MC_L3PHIC.v" \


vlog -work xil_defaultlib \
"glbl.v"

