#!/bin/sh
python3.8 ../../script/create_dut_verilog.py $1 ./dut.v ./sca_unlock_mult.v ./sca_unlock_post.v $2
#/opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64/xtclsh ./xl9_cw.tcl run_process
#/opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64/impact -batch ./prog.cmd
