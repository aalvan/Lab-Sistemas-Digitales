#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2021.1 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Mon May 02 14:48:06 -04 2022
# SW Build 3247384 on Thu Jun 10 19:36:07 MDT 2021
#
# IP Build 3246043 on Fri Jun 11 00:30:35 MDT 2021
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# elaborate design
echo "xelab -wto 395d938be9a24c02a6863972dd4a6eaa --incr --debug typical --relax --mt 8 -L xil_defaultlib -L uvm -L unisims_ver -L unimacro_ver -L secureip --snapshot test_mux_temporal_behav xil_defaultlib.test_mux_temporal xil_defaultlib.glbl -log elaborate.log"
xelab -wto 395d938be9a24c02a6863972dd4a6eaa --incr --debug typical --relax --mt 8 -L xil_defaultlib -L uvm -L unisims_ver -L unimacro_ver -L secureip --snapshot test_mux_temporal_behav xil_defaultlib.test_mux_temporal xil_defaultlib.glbl -log elaborate.log

