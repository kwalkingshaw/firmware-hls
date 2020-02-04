onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib PR_L3PHIC_opt

do {wave.do}

view wave
view structure
view signals

do {PR_L3PHIC.udo}

run -all

quit -force
