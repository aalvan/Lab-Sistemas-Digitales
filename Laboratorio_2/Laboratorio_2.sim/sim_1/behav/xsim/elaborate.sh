#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2021.1 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Fri Apr 22 22:47:59 -04 2022
# SW Build 3247384 on Thu Jun 10 19:36:07 MDT 2021
#
# IP Build 3246043 on Fri Jun 11 00:30:35 MDT 2021
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# elaborate design
echo "xelab -wto 907c39d9ae6f435f9202ab2616edd37b --incr --debug typical --relax --mt 8 -L xil_defaultlib -L uvm -L unisims_ver -L unimacro_ver -L secureip --snapshot test_n_bit_behav xil_defaultlib.test_n_bit xil_defaultlib.glbl -log elaborate.log"
xelab -wto 907c39d9ae6f435f9202ab2616edd37b --incr --debug typical --relax --mt 8 -L xil_defaultlib -L uvm -L unisims_ver -L unimacro_ver -L secureip --snapshot test_n_bit_behav xil_defaultlib.test_n_bit xil_defaultlib.glbl -log elaborate.log
