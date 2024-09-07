# Creating library
vlib work

# Compilation
vlog FA_tb.v 

# Elaboration
vsim tb

# To open waveform
add wave -position insertpoint  \
sim:/tb/a \
sim:/tb/b \
sim:/tb/c \
sim:/tb/sum \
sim:/tb/carry

# Simulation
run -all
