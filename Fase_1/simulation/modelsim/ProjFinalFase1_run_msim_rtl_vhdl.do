transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/LSD/ProjFinal/LSDprojfinal/Fase_1/Fase1.vhd}
vcom -93 -work work {C:/LSD/ProjFinal/LSDprojfinal/Fase_1/Fase1FSM.vhd}
vcom -93 -work work {C:/LSD/ProjFinal/LSDprojfinal/Fase_1/TimerFSM.vhd}
vcom -93 -work work {C:/LSD/ProjFinal/LSDprojfinal/Fase_1/Display.vhd}
vcom -93 -work work {C:/LSD/ProjFinal/LSDprojfinal/Fase_1/ClkDividerN.vhd}

