SOURCES = adder.v controller.v maindec.v mux2.v regfile.v sl2.v aludec.v datapath.v flopr.v mips.v signext.v alu.v top.v imem.v dmem.v testbench.v

cpu: $(SOURCES)
	iverilog -o cpu $(SOURCES)

.PHONY : clean
clean:
	@rm cpu
