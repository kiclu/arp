vlog -work work ramdac.vwf.vtvsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.toplevel_vlg_vec_tst -voptargs="+acc"
add wave /*
run -all
