onerror {exit -code 1}
vlib work
vlog -work work arp.vo
vlog -work work ramdac.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ramdac_vlg_vec_tst -voptargs="+acc"
vcd file -direction arp.msim.vcd
vcd add -internal ramdac_vlg_vec_tst/*
vcd add -internal ramdac_vlg_vec_tst/i1/*
run -all
quit -f
