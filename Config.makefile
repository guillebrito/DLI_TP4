# Top unit. Set this to the name of the main unit in the design.
TOP_UNIT ?= Ej1
# Top architecture. Optional.
TOP_ARCH ?=

# Test-bench unit and architecture.
TEST_UNIT ?= tb_Ej1
TEST_ARCH ?=

# Simulation time
SIM_TIME = 1000ns

# Commands.
GHDL ?= ghdl
GHDL_OPTS ?= --workdir=$(WORK_DIR) --std=$(STD)

# VHDL standard (e.g. 93 or 08).
STD ?= 08
# Work library name.
WORK ?= work

# Sources directory.
SOURCES_DIR ?= src
# Library directory.
WORK_DIR ?= work
# Waveforms directory.
WAVES_DIR ?= wave

