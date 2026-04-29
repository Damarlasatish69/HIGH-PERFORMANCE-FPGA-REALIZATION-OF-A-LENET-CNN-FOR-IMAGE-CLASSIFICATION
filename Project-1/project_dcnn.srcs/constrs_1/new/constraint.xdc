# ==============================
# Clock Constraint (Important for Power)
# ==============================

# Define system clock (example: 100 MHz)
create_clock -period 10.000 -name sys_clk -waveform {0 5} [get_ports clk]

# ==============================
# Reduce Power by Lowering Clock Frequency
# Example: 50 MHz (20ns period)
# Uncomment if needed
# create_clock -period 20.000 -name sys_clk -waveform {0 10} [get_ports clk]

# ==============================
# Set Input Delay (Improves timing analysis accuracy)
# ==============================

set_input_delay -clock sys_clk 2.0 [all_inputs]
set_output_delay -clock sys_clk 2.0 [all_outputs]

# ==============================
# Set I/O Standard (Power-efficient)
# ==============================

set_property IOSTANDARD LVCMOS33 [all_ports]

# ==============================
# Reduce Switching Activity (for Power Estimation)
# ==============================

set_switching_activity -static_probability 0.5 -toggle_rate 0.1 [all_nets]

# ==============================
# Enable Clock Gating Awareness
# ==============================

set_power_opt on