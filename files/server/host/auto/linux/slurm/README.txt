TO DO:
- Slurm 22.05 to install manually for handling CGROUP (to only have access to GPUs by requesting SLURM):
	Hi,
	I just want to wrap this up in case someone has the same issue in the future.
	As Reed pointed out, Ubuntu 22 does not support cgroups v1 anymore. At the same time, the slurm-wlm package in the Ubuntu repositories uses cgroups v1, which makes its task/cgroup plugin incompatible with Ubuntu 22.
	My solution was to build Slurm 22.05 manually, while ensuring that libdbus-1-dev is installed (as otherwise cgroups v2 support does not get built). This takes a bit more time but seems to work so far.
	Thanks a lot Reed & Abel for your advice!
	Best,
	Tim
	Source: https://groups.google.com/g/slurm-users/c/48ug43MPov0
- Sites should also configure pam_slurm_adopt to ensure users can not escape the cgroups via ssh. Source: https://slurm.schedmd.com/cgroup.conf.html
- Create a CPU partition with no GPU
- Install POSTFIX (email software) and configure it for being used by SLURM when a process is done
- Create alias for SLURM in ZSH (https://github.com/ozancaglayan/cluster-rc/blob/master/bashrc)