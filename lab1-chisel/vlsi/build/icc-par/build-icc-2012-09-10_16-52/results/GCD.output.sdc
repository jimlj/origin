###################################################################

# Created by write_sdc on Mon Sep 10 16:55:19 2012

###################################################################
set sdc_version 1.9

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
set_driving_cell -lib_cell INVX1 [get_ports clk]
set_driving_cell -lib_cell INVX1 [get_ports reset]
set_driving_cell -lib_cell INVX1 [get_ports {io_operands_bits_A[15]}]
set_driving_cell -lib_cell INVX1 [get_ports {io_operands_bits_A[14]}]
set_driving_cell -lib_cell INVX1 [get_ports {io_operands_bits_A[13]}]
set_driving_cell -lib_cell INVX1 [get_ports {io_operands_bits_A[12]}]
set_driving_cell -lib_cell INVX1 [get_ports {io_operands_bits_A[11]}]
set_driving_cell -lib_cell INVX1 [get_ports {io_operands_bits_A[10]}]
set_driving_cell -lib_cell INVX1 [get_ports {io_operands_bits_A[9]}]
set_driving_cell -lib_cell INVX1 [get_ports {io_operands_bits_A[8]}]
set_driving_cell -lib_cell INVX1 [get_ports {io_operands_bits_A[7]}]
set_driving_cell -lib_cell INVX1 [get_ports {io_operands_bits_A[6]}]
set_driving_cell -lib_cell INVX1 [get_ports {io_operands_bits_A[5]}]
set_driving_cell -lib_cell INVX1 [get_ports {io_operands_bits_A[4]}]
set_driving_cell -lib_cell INVX1 [get_ports {io_operands_bits_A[3]}]
set_driving_cell -lib_cell INVX1 [get_ports {io_operands_bits_A[2]}]
set_driving_cell -lib_cell INVX1 [get_ports {io_operands_bits_A[1]}]
set_driving_cell -lib_cell INVX1 [get_ports {io_operands_bits_A[0]}]
set_driving_cell -lib_cell INVX1 [get_ports {io_operands_bits_B[15]}]
set_driving_cell -lib_cell INVX1 [get_ports {io_operands_bits_B[14]}]
set_driving_cell -lib_cell INVX1 [get_ports {io_operands_bits_B[13]}]
set_driving_cell -lib_cell INVX1 [get_ports {io_operands_bits_B[12]}]
set_driving_cell -lib_cell INVX1 [get_ports {io_operands_bits_B[11]}]
set_driving_cell -lib_cell INVX1 [get_ports {io_operands_bits_B[10]}]
set_driving_cell -lib_cell INVX1 [get_ports {io_operands_bits_B[9]}]
set_driving_cell -lib_cell INVX1 [get_ports {io_operands_bits_B[8]}]
set_driving_cell -lib_cell INVX1 [get_ports {io_operands_bits_B[7]}]
set_driving_cell -lib_cell INVX1 [get_ports {io_operands_bits_B[6]}]
set_driving_cell -lib_cell INVX1 [get_ports {io_operands_bits_B[5]}]
set_driving_cell -lib_cell INVX1 [get_ports {io_operands_bits_B[4]}]
set_driving_cell -lib_cell INVX1 [get_ports {io_operands_bits_B[3]}]
set_driving_cell -lib_cell INVX1 [get_ports {io_operands_bits_B[2]}]
set_driving_cell -lib_cell INVX1 [get_ports {io_operands_bits_B[1]}]
set_driving_cell -lib_cell INVX1 [get_ports {io_operands_bits_B[0]}]
set_driving_cell -lib_cell INVX1 [get_ports io_operands_val]
set_driving_cell -lib_cell INVX1 [get_ports io_result_rdy]
set_load -pin_load 0.004 [get_ports io_operands_rdy]
set_load -pin_load 0.004 [get_ports {io_result_bits_data[15]}]
set_load -pin_load 0.004 [get_ports {io_result_bits_data[14]}]
set_load -pin_load 0.004 [get_ports {io_result_bits_data[13]}]
set_load -pin_load 0.004 [get_ports {io_result_bits_data[12]}]
set_load -pin_load 0.004 [get_ports {io_result_bits_data[11]}]
set_load -pin_load 0.004 [get_ports {io_result_bits_data[10]}]
set_load -pin_load 0.004 [get_ports {io_result_bits_data[9]}]
set_load -pin_load 0.004 [get_ports {io_result_bits_data[8]}]
set_load -pin_load 0.004 [get_ports {io_result_bits_data[7]}]
set_load -pin_load 0.004 [get_ports {io_result_bits_data[6]}]
set_load -pin_load 0.004 [get_ports {io_result_bits_data[5]}]
set_load -pin_load 0.004 [get_ports {io_result_bits_data[4]}]
set_load -pin_load 0.004 [get_ports {io_result_bits_data[3]}]
set_load -pin_load 0.004 [get_ports {io_result_bits_data[2]}]
set_load -pin_load 0.004 [get_ports {io_result_bits_data[1]}]
set_load -pin_load 0.004 [get_ports {io_result_bits_data[0]}]
set_load -pin_load 0.004 [get_ports io_result_val]
set_propagated_clock [get_ports clk]
create_clock [get_ports clk]  -name ideal_clock1  -period 0.9  -waveform {0 0.45}
group_path -name FEEDTHROUGH  -from [list [get_ports reset] [get_ports {io_operands_bits_A[15]}] [get_ports \
{io_operands_bits_A[14]}] [get_ports {io_operands_bits_A[13]}] [get_ports      \
{io_operands_bits_A[12]}] [get_ports {io_operands_bits_A[11]}] [get_ports      \
{io_operands_bits_A[10]}] [get_ports {io_operands_bits_A[9]}] [get_ports       \
{io_operands_bits_A[8]}] [get_ports {io_operands_bits_A[7]}] [get_ports        \
{io_operands_bits_A[6]}] [get_ports {io_operands_bits_A[5]}] [get_ports        \
{io_operands_bits_A[4]}] [get_ports {io_operands_bits_A[3]}] [get_ports        \
{io_operands_bits_A[2]}] [get_ports {io_operands_bits_A[1]}] [get_ports        \
{io_operands_bits_A[0]}] [get_ports {io_operands_bits_B[15]}] [get_ports       \
{io_operands_bits_B[14]}] [get_ports {io_operands_bits_B[13]}] [get_ports      \
{io_operands_bits_B[12]}] [get_ports {io_operands_bits_B[11]}] [get_ports      \
{io_operands_bits_B[10]}] [get_ports {io_operands_bits_B[9]}] [get_ports       \
{io_operands_bits_B[8]}] [get_ports {io_operands_bits_B[7]}] [get_ports        \
{io_operands_bits_B[6]}] [get_ports {io_operands_bits_B[5]}] [get_ports        \
{io_operands_bits_B[4]}] [get_ports {io_operands_bits_B[3]}] [get_ports        \
{io_operands_bits_B[2]}] [get_ports {io_operands_bits_B[1]}] [get_ports        \
{io_operands_bits_B[0]}] [get_ports io_operands_val] [get_ports                \
io_result_rdy]]  -to [list [get_ports io_operands_rdy] [get_ports {io_result_bits_data[15]}]   \
[get_ports {io_result_bits_data[14]}] [get_ports {io_result_bits_data[13]}]    \
[get_ports {io_result_bits_data[12]}] [get_ports {io_result_bits_data[11]}]    \
[get_ports {io_result_bits_data[10]}] [get_ports {io_result_bits_data[9]}]     \
[get_ports {io_result_bits_data[8]}] [get_ports {io_result_bits_data[7]}]      \
[get_ports {io_result_bits_data[6]}] [get_ports {io_result_bits_data[5]}]      \
[get_ports {io_result_bits_data[4]}] [get_ports {io_result_bits_data[3]}]      \
[get_ports {io_result_bits_data[2]}] [get_ports {io_result_bits_data[1]}]      \
[get_ports {io_result_bits_data[0]}] [get_ports io_result_val]]
group_path -name REGIN  -from [list [get_ports reset] [get_ports {io_operands_bits_A[15]}] [get_ports \
{io_operands_bits_A[14]}] [get_ports {io_operands_bits_A[13]}] [get_ports      \
{io_operands_bits_A[12]}] [get_ports {io_operands_bits_A[11]}] [get_ports      \
{io_operands_bits_A[10]}] [get_ports {io_operands_bits_A[9]}] [get_ports       \
{io_operands_bits_A[8]}] [get_ports {io_operands_bits_A[7]}] [get_ports        \
{io_operands_bits_A[6]}] [get_ports {io_operands_bits_A[5]}] [get_ports        \
{io_operands_bits_A[4]}] [get_ports {io_operands_bits_A[3]}] [get_ports        \
{io_operands_bits_A[2]}] [get_ports {io_operands_bits_A[1]}] [get_ports        \
{io_operands_bits_A[0]}] [get_ports {io_operands_bits_B[15]}] [get_ports       \
{io_operands_bits_B[14]}] [get_ports {io_operands_bits_B[13]}] [get_ports      \
{io_operands_bits_B[12]}] [get_ports {io_operands_bits_B[11]}] [get_ports      \
{io_operands_bits_B[10]}] [get_ports {io_operands_bits_B[9]}] [get_ports       \
{io_operands_bits_B[8]}] [get_ports {io_operands_bits_B[7]}] [get_ports        \
{io_operands_bits_B[6]}] [get_ports {io_operands_bits_B[5]}] [get_ports        \
{io_operands_bits_B[4]}] [get_ports {io_operands_bits_B[3]}] [get_ports        \
{io_operands_bits_B[2]}] [get_ports {io_operands_bits_B[1]}] [get_ports        \
{io_operands_bits_B[0]}] [get_ports io_operands_val] [get_ports                \
io_result_rdy]]
group_path -name REGOUT  -to [list [get_ports io_operands_rdy] [get_ports {io_result_bits_data[15]}]   \
[get_ports {io_result_bits_data[14]}] [get_ports {io_result_bits_data[13]}]    \
[get_ports {io_result_bits_data[12]}] [get_ports {io_result_bits_data[11]}]    \
[get_ports {io_result_bits_data[10]}] [get_ports {io_result_bits_data[9]}]     \
[get_ports {io_result_bits_data[8]}] [get_ports {io_result_bits_data[7]}]      \
[get_ports {io_result_bits_data[6]}] [get_ports {io_result_bits_data[5]}]      \
[get_ports {io_result_bits_data[4]}] [get_ports {io_result_bits_data[3]}]      \
[get_ports {io_result_bits_data[2]}] [get_ports {io_result_bits_data[1]}]      \
[get_ports {io_result_bits_data[0]}] [get_ports io_result_val]]
set_input_delay -clock ideal_clock1  0.2  [get_ports clk]
set_input_delay -clock ideal_clock1  0.2  [get_ports reset]
set_input_delay -clock ideal_clock1  0.2  [get_ports {io_operands_bits_A[15]}]
set_input_delay -clock ideal_clock1  0.2  [get_ports {io_operands_bits_A[14]}]
set_input_delay -clock ideal_clock1  0.2  [get_ports {io_operands_bits_A[13]}]
set_input_delay -clock ideal_clock1  0.2  [get_ports {io_operands_bits_A[12]}]
set_input_delay -clock ideal_clock1  0.2  [get_ports {io_operands_bits_A[11]}]
set_input_delay -clock ideal_clock1  0.2  [get_ports {io_operands_bits_A[10]}]
set_input_delay -clock ideal_clock1  0.2  [get_ports {io_operands_bits_A[9]}]
set_input_delay -clock ideal_clock1  0.2  [get_ports {io_operands_bits_A[8]}]
set_input_delay -clock ideal_clock1  0.2  [get_ports {io_operands_bits_A[7]}]
set_input_delay -clock ideal_clock1  0.2  [get_ports {io_operands_bits_A[6]}]
set_input_delay -clock ideal_clock1  0.2  [get_ports {io_operands_bits_A[5]}]
set_input_delay -clock ideal_clock1  0.2  [get_ports {io_operands_bits_A[4]}]
set_input_delay -clock ideal_clock1  0.2  [get_ports {io_operands_bits_A[3]}]
set_input_delay -clock ideal_clock1  0.2  [get_ports {io_operands_bits_A[2]}]
set_input_delay -clock ideal_clock1  0.2  [get_ports {io_operands_bits_A[1]}]
set_input_delay -clock ideal_clock1  0.2  [get_ports {io_operands_bits_A[0]}]
set_input_delay -clock ideal_clock1  0.2  [get_ports {io_operands_bits_B[15]}]
set_input_delay -clock ideal_clock1  0.2  [get_ports {io_operands_bits_B[14]}]
set_input_delay -clock ideal_clock1  0.2  [get_ports {io_operands_bits_B[13]}]
set_input_delay -clock ideal_clock1  0.2  [get_ports {io_operands_bits_B[12]}]
set_input_delay -clock ideal_clock1  0.2  [get_ports {io_operands_bits_B[11]}]
set_input_delay -clock ideal_clock1  0.2  [get_ports {io_operands_bits_B[10]}]
set_input_delay -clock ideal_clock1  0.2  [get_ports {io_operands_bits_B[9]}]
set_input_delay -clock ideal_clock1  0.2  [get_ports {io_operands_bits_B[8]}]
set_input_delay -clock ideal_clock1  0.2  [get_ports {io_operands_bits_B[7]}]
set_input_delay -clock ideal_clock1  0.2  [get_ports {io_operands_bits_B[6]}]
set_input_delay -clock ideal_clock1  0.2  [get_ports {io_operands_bits_B[5]}]
set_input_delay -clock ideal_clock1  0.2  [get_ports {io_operands_bits_B[4]}]
set_input_delay -clock ideal_clock1  0.2  [get_ports {io_operands_bits_B[3]}]
set_input_delay -clock ideal_clock1  0.2  [get_ports {io_operands_bits_B[2]}]
set_input_delay -clock ideal_clock1  0.2  [get_ports {io_operands_bits_B[1]}]
set_input_delay -clock ideal_clock1  0.2  [get_ports {io_operands_bits_B[0]}]
set_input_delay -clock ideal_clock1  0.2  [get_ports io_operands_val]
set_input_delay -clock ideal_clock1  0.2  [get_ports io_result_rdy]
set_output_delay -clock ideal_clock1  0.2  [get_ports io_operands_rdy]
set_output_delay -clock ideal_clock1  0.2  [get_ports {io_result_bits_data[15]}]
set_output_delay -clock ideal_clock1  0.2  [get_ports {io_result_bits_data[14]}]
set_output_delay -clock ideal_clock1  0.2  [get_ports {io_result_bits_data[13]}]
set_output_delay -clock ideal_clock1  0.2  [get_ports {io_result_bits_data[12]}]
set_output_delay -clock ideal_clock1  0.2  [get_ports {io_result_bits_data[11]}]
set_output_delay -clock ideal_clock1  0.2  [get_ports {io_result_bits_data[10]}]
set_output_delay -clock ideal_clock1  0.2  [get_ports {io_result_bits_data[9]}]
set_output_delay -clock ideal_clock1  0.2  [get_ports {io_result_bits_data[8]}]
set_output_delay -clock ideal_clock1  0.2  [get_ports {io_result_bits_data[7]}]
set_output_delay -clock ideal_clock1  0.2  [get_ports {io_result_bits_data[6]}]
set_output_delay -clock ideal_clock1  0.2  [get_ports {io_result_bits_data[5]}]
set_output_delay -clock ideal_clock1  0.2  [get_ports {io_result_bits_data[4]}]
set_output_delay -clock ideal_clock1  0.2  [get_ports {io_result_bits_data[3]}]
set_output_delay -clock ideal_clock1  0.2  [get_ports {io_result_bits_data[2]}]
set_output_delay -clock ideal_clock1  0.2  [get_ports {io_result_bits_data[1]}]
set_output_delay -clock ideal_clock1  0.2  [get_ports {io_result_bits_data[0]}]
set_output_delay -clock ideal_clock1  0.2  [get_ports io_result_val]
set_timing_derate -late -net_delay  1.01 
set_timing_derate -early -net_delay  0.99 
set_timing_derate -late -cell_delay 1.01 [current_design]
set_timing_derate -early -cell_delay 0.99 [current_design]
