#!/bin/sh

# Learnings: sequence of operations is important.
# Doing spitnets immediately after synth is important otherwise non-split nets remain in json

yosys -m ghdl -p "
ghdl $GHDLOPTS $SYNTHSRCS -e $VHDLTOP;
read_liberty -lib $LIBERTYFILE;
hierarchy -check -top $VHDLTOP;
synth -flatten -top $VHDLTOP;
dfflibmap -liberty $LIBERTYFILE
abc -liberty $LIBERTYFILE;
opt_clean -purge;
chformal -remove;
clean;
write_json $VHDLTOP.synth.json;
write_verilog -noattr $VHDLTOP.synth.v
"
