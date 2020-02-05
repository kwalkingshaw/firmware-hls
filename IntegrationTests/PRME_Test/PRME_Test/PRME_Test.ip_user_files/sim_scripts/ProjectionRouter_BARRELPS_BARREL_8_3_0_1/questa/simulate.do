onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ProjectionRouter_BARRELPS_BARREL_8_3_0_opt

do {wave.do}

view wave
view structure
view signals

do {ProjectionRouter_BARRELPS_BARREL_8_3_0.udo}

run -all

quit -force
