# Configuration
## Oneshell means all lines in a recipe run in the same shell
.ONESHELL:


# Variables
ROOT_UNIVERSE := $(abspath $(dir $(lastword $(MAKEFILE_LIST)))/../../../)


# Shortcuts
## Linux-specific
install__linux: install-cuda-11.8__linux install-git__linux install-git-lfs__linux install-htop__linux install-nvidia-driver__linux install-nvtop__linux install-python3__linux install-rsnapshot__linux install-shell-completion__linux #install-slurm__linux
link__linux: link-rsnapshot__linux
upgrade__linux: upgrade-os__linux


# Command section
## Linux-specific
### TO DO: command-os-service-start-slurm:

### Setup ssh connection timeout
command-os-setup-ssh-connection-timeout__linux:
	-sudo sed -i -e 's/.*ClientAliveInterval .*/ClientAliveInterval 600/' /etc/ssh/sshd_config && sudo sed -i -e 's/.*ClientAliveCountMax .*/ClientAliveCountMax 3/' /etc/ssh/sshd_config && sudo systemctl restart ssh

### Setup Paris timezone
command-os-setup-timezone-paris__linux:
	-sudo timedatectl set-timezone Europe/Paris


# Installing section
## Linux-specific
install-cuda-11.8__linux:
	-sudo apt install linux-headers-$(uname -r) && wget https://developer.download.nvidia.com/compute/cuda/11.8.0/local_installers/cuda_11.8.0_520.61.05_linux.run && sudo sh cuda_11.8.0_520.61.05_linux.run --override --silent --toolkit && rm cuda_11.8.0_520.61.05_linux.run

install-git__linux:
	-sudo apt install git --yes

install-git-lfs__linux:
	-sudo apt install git-lfs --yes

install-htop__linux:
	-sudo apt install htop --yes

install-nvidia-driver-535__linux:
	-sudo apt install nvidia-driver-535 --yes

install-nvtop__linux:
	-sudo apt install nvtop --yes

install-python3__linux:
	-sudo apt install python3 python3-wheel python3-pip python3-venv python3-dev python3-setuptools --yes

install-rsnapshot__linux:
	-sudo add-apt-repository -y universe && sudo apt install rsnapshot --yes

install-shell-completion__linux:
	-sudo apt install bash-completion --yes

#install-slurm__linux:
#	-sudo apt install slurmd slurmctld --yes


# Upgrading section
## Linux-specific
upgrade-cuda-11.8__linux:
	-sudo apt update && sudo apt install --only-upgrade linux-headers-$(uname -r) && sudo apt autoremove --yes && sudo apt autoclean --yes

upgrade-git__linux:
	-sudo apt update && sudo apt install --only-upgrade git && sudo apt autoremove --yes && sudo apt autoclean --yes

upgrade-git-lfs__linux:
	-sudo apt update && sudo apt install --only-upgrade git-lfs && sudo apt autoremove --yes && sudo apt autoclean --yes

upgrade-htop__linux:
	-sudo apt update && sudo apt install --only-upgrade htop && sudo apt autoremove --yes && sudo apt autoclean --yes

upgrade-nvidia-driver-535__linux:
	-sudo apt update && sudo apt install --only-upgrade nvidia-driver-535 && sudo apt autoremove --yes && sudo apt autoclean --yes

upgrade-nvtop__linux:
	-sudo apt update && sudo apt install --only-upgrade nvtop && sudo apt autoremove --yes && sudo apt autoclean --yes

upgrade-os__linux:
	-sudo apt update && sudo apt full-upgrade --yes && sudo apt autoremove --yes && sudo apt autoclean --yes

upgrade-python3__linux:
	-sudo apt update && sudo apt install --only-upgrade python3 python3-wheel python3-pip python3-venv python3-dev python3-setuptools && sudo apt autoremove --yes && sudo apt autoclean --yes

upgrade-rsnapshot__linux:
	-sudo apt update && sudo apt install --only-upgrade rsnapshot && sudo apt autoremove --yes && sudo apt autoclean --yes

upgrade-shell-completion__linux:
	-sudo apt update && sudo apt install --only-upgrade bash-completion && sudo apt autoremove --yes && sudo apt autoclean --yes


# Link section
## Linux-specific
link-rsnapshot__linux:
	-sudo cp -rf $(ROOT_UNIVERSE)/files/server/host/auto/linux/rsnapshot/rsnapshot.conf /etc/
	-sudo cp -rf $(ROOT_UNIVERSE)/files/server/host/auto/linux/rsnapshot/rsnapshot /etc/cron.d/

### TO DO: Make slurm config files functionnal (see files/server/host/auto/linux/slurm/README.txt); Dividing the following command into several ones?
###link-slurm__linux:
###	-sudo cp -rf $(ROOT_UNIVERSE)/files/server/host/auto/linux/slurm/{slurm.conf,gres.conf,cgroup.conf} /etc/slurm/ && sudo mkdir -p /var/spool/slurmctld && sudo chown slurm: /var/spool/slurmctld
