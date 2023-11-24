# Oneshell means all lines in a recipe run in the same shell
.ONESHELL:


# Variables
root_universe := $(abspath $(dir $(lastword $(MAKEFILE_LIST)))/../../)


# Shortcuts
## Linux-specific
install__linux: install-shell-completion__linux

# Command section
## Linux-specific
### Reboot linux
command-os-reboot__linux:
	-sudo reboot

### Setup zsh as default shell
command-os-setup-zsh__linux:
	-chsh -s $(which zsh)

command-os-setup-ssh-connection-timeout__linux:
	-sudo sed -i -e 's/#ClientAliveInterval .*/#ClientAliveInterval 600/' /etc/ssh/sshd_config && sudo sed -i -e 's/#ClientAliveCountMax .*/#ClientAliveCountMax 3/' /etc/ssh/sshd_config && sudo service ssh restart


# Installing section
## Linux-specific
install-shell-completion__linux:
	-sudo apt install bash-completion


# Updating section
## Linux-specific

