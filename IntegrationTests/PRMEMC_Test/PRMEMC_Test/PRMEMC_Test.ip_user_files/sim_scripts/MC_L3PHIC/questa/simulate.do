onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib MC_L3PHIC_opt

do {wave.do}

view wave
view structure
view signals

do {MC_L3PHIC.udo}

run -all

quit -force
