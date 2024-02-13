# Configuration
## Oneshell means all lines in a recipe run in the same shell
.ONESHELL:
## Note that the extra activate is needed to ensure that the activate floats env to the front of PATH
CONDA_ACTIVATE=source $$(conda info --base)/etc/profile.d/conda.sh; conda activate; conda activate
## Need to specify bash in order for conda activate to work
SHELL = /bin/bash


# Variables
ROOT_UNIVERSE := $(abspath $(dir $(lastword $(MAKEFILE_LIST)))/../../../)


# Shortcuts
## Linux-specific
install__linux: install-git__linux install-nvidia-driver__linux install-cuda-11.8__linux install-python3__linux install-rsnapshot__linux install-shell-completion__linux install-slurm__linux
link__linux: link-rsnapshot__linux
upgrade__linux: upgrade-os__linux


# Command section
## Linux-specific
### Setup ssh connection timeout
command-os-setup-ssh-connection-timeout__linux:
	-sudo sed -i -e 's/.*ClientAliveInterval .*/ClientAliveInterval 600/' /etc/ssh/sshd_config && sudo sed -i -e 's/.*ClientAliveCountMax .*/ClientAliveCountMax 3/' /etc/ssh/sshd_config && sudo service ssh restart

### Setup Paris timezone
command-os-setup-timezone-paris__linux:
	-sudo timedatectl set-timezone Europe/Paris

### Setup zsh as default shell
command-os-setup-zsh__linux:
	-chsh -s $(which zsh)


# Installing section
## Linux-specific
install-cuda-11.8__linux:
	-sudo apt install linux-headers-$(uname -r) && wget https://developer.download.nvidia.com/compute/cuda/11.8.0/local_installers/cuda_11.8.0_520.61.05_linux.run && sudo sh cuda_11.8.0_520.61.05_linux.run --override --silent --toolkit && rm cuda_11.8.0_520.61.05_linux.run

install-git__linux:
	-sudo apt install git --yes

install-nvidia-driver-535__linux:
	-sudo apt install nvidia-driver-535 --yes

install-python3__linux:
	-sudo apt install python3 python3-wheel python3-pip python3-venv python3-dev python3-setuptools --yes

install-rsnapshot__linux:
	-sudo add-apt-repository -y universe && sudo apt install rsnapshot --yes

install-shell-completion__linux:
	-sudo apt install bash-completion --yes

install-slurm__linux:
	-sudo apt install slurmd slurmctld --yes


# Upgrading section
## Linux-specific
upgrade-os__linux:
	-sudo apt update && sudo apt full-upgrade --yes && sudo apt autoremove --yes && sudo apt autoclean --yes

# Link section
## Linux-specific
link-rsnapshot__linux:
	-sudo cp -rf $(ROOT_UNIVERSE)/files/server/host/auto/linux/rsnapshot.conf /etc/rsnapshot.conf
	-sudo cp -rf $(ROOT_UNIVERSE)/files/server/host/auto/linux/rsnapshot /etc/cron.d/rsnapshot

link-slurm__linux:
	-sudo echo "ok"