# Oneshell means all lines in a recipe run in the same shell
.ONESHELL:

# Variables
root_universe := $(abspath $(dir $(lastword $(MAKEFILE_LIST)))/../../)

# Command section
## Reboot
command-linux-reboot__linux:
	-sudo reboot
