# Edit project-specific variables in this file.

project := project
top_module := main
vendor := xilinx

# This is the chipset from the Xilinx SP605 dev board
family := spartan6
device := xc6slx45t
speedgrade := -3
device_package := fgg484
part := $(device)$(speedgrade)-$(device_package)


# is this build host 64 or 32 bits?
hostbits := 64
iseenv := /opt/Xilinx/14.3/ISE_DS/

# list all .v files explicitly with vfiles (no hdl/*.v business)
vfiles := hdl/project.v
#vfiles += hdl/yours.v

# can only specify a single test bench file here (for now)
tbfiles := tb/tb.v
#tbfiles += hdl/yours.v

# list of .xco files, eg "cores/bram.xco". do not include DCM files.
xilinx_cores := 
#xilinx_cores += cores/example.xco

# bitfile bitwidth for flash uploads
mcs_datawidth = 16

# Bulk of the actual Makefile is in a different file.
include ./contrib/xilinx.mk

# Example hardware-specific targets (eg, upload via SPI)
include ./contrib/example-device.mk
