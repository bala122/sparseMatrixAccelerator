############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project HLS_CISR_runtime_spmv
set_top HLS_CISR_spmv_accel
add_files HLS_CISR_spmv_accel.c
add_files -tb HLS_CISR_spmv_accel_tb.c
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
source "./HLS_CISR_runtime_spmv/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
