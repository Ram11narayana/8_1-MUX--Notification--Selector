vlib work
vlog mux_ns.v
vlog mux_tb.v
vsim tb +a=7 
add wave * 
run -all
