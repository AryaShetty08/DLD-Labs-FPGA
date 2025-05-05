transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+/home/user/local/lab05_as {/home/user/local/lab05_as/d_ff.sv}
vlog -sv -work work +incdir+/home/user/local/lab05_as {/home/user/local/lab05_as/sword.sv}

