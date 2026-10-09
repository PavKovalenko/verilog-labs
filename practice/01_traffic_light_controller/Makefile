run:
	iverilog -g2012 -o sim.out rtl/top_module.sv tb/top_module_tb.sv
	vvp sim.out

wave:
	gtkwave dump.vcd