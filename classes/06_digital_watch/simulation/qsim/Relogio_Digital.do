onerror {exit -code 1}
vlib work
vcom -work work Relogio_Digital.vho
vcom -work work Waveform.vwf.vht
vsim -novopt -c -t 1ps -sdfmax Sistema_vhd_vec_tst/i1=Relogio_Digital_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.Sistema_vhd_vec_tst
vcd file -direction Relogio_Digital.msim.vcd
vcd add -internal Sistema_vhd_vec_tst/*
vcd add -internal Sistema_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f








