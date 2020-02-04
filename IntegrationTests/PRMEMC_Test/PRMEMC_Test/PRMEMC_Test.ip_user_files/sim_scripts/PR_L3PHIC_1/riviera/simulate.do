onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+PR_L3PHIC -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.PR_L3PHIC xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {PR_L3PHIC.udo}

run -all

endsim

quit -force
