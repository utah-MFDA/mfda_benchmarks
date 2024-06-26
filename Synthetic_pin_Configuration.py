from openmfda_flow import *

verilog_file = "demo.v"
design_name = "demo"
platform = "mfda_30px"
pins = [[None for i in range(0,8)] for j in range(0,4)]
pins[0][1] = "Source"
pins[1][7] = "Out"

generate_config(verilog_file, design_name, pin_names=pins, platform=platform)
run_flow(design_name, platform=platform)
