# Oneshell means all lines in a recipe run in the same shell
.ONESHELL:


# Variables
ROOT_UNIVERSE := $(abspath $(dir $(lastword $(MAKEFILE_LIST)))/../../../)


# Shorcuts
## Linux-specific
install__linux: install-fzf__linux install-tmux-resurrect install-starship__linux install-vundle install-zsh-autosuggestions__linux
link__linux: link-git link-tmux link-starship link-vim link-zsh__linux
upgrade__linux: upgrade-fzf__linux upgrade-tmux-resurrect upgrade-vundle upgrade-zsh-autosuggestions__linux


# Command section
## Non-specific
### Deactivating conda on startup
command-conda-not-on-startup:
	-conda config --set auto_activate_base false

### Deactivating the prompt modifier of conda (useful only when starship is applied)
command-conda-mute:
	-conda config --set changeps1 false


# Installing section
## Non-specific
install-tmux-resurrect:
	-git clone https://github.com/tmux-plugins/tmux-resurrect $(ROOT_UNIVERSE)/bin/tmux-resurrect/

install-vundle:
	-git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && vim +PluginInstall +qall

## Linux-specific
install-conda__linux:
	-mkdir -p $(ROOT_UNIVERSE)/bin/miniconda3 && wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O $(ROOT_UNIVERSE)/bin/miniconda3/miniconda.sh && bash $(ROOT_UNIVERSE)/bin/miniconda3/miniconda.sh -b -u -p $(ROOT_UNIVERSE)/bin/miniconda3 && rm -rf $(ROOT_UNIVERSE)/bin/miniconda3/miniconda.sh

install-fzf__linux:
	-git clone --depth 1 https://github.com/junegunn/fzf.git $(ROOT_UNIVERSE)/bin/fzf/ && $(ROOT_UNIVERSE)/bin/fzf/install --key-bindings --completion --no-update-rc

install-starship__linux:
	-curl -sS https://starship.rs/install.sh | sh

install-zsh-autosuggestions__linux:
	-git clone https://github.com/zsh-users/zsh-autosuggestions $(ROOT_UNIVERSE)/bin/zsh-autosuggestions/


# Upgrading section
## Non-specific
upgrade-tmux-resurrect:
	-git -C $(ROOT_UNIVERSE)/bin/tmux-resurrect pull

upgrade-vundle:
	-git -C ~/.vim/bundle/Vundle.vim pull && vim +PluginInstall +qall

## Linux-specific
upgrade-fzf__linux:
	-git -C $(ROOT_UNIVERSE)/bin/fzf pull && $(ROOT_UNIVERSE)/bin/fzf/install --key-bindings --completion --no-update-rc

upgrade-zsh-autosuggestions__linux:
	-git -C $(ROOT_UNIVERSE)/bin/zsh-autosuggestions pull


# Symbolic link section
## Non-specific
link-bash:
	-ln -sf $(ROOT_UNIVERSE)/files/server/client/auto/all/.bash_profile ~
	-ln -sf $(ROOT_UNIVERSE)/files/server/client/auto/all/.inputrc ~

link-git:
	-ln -sf $(ROOT_UNIVERSE)/files/server/client/auto/all/.gitconfig ~

link-tmux:
	-ln -sf $(ROOT_UNIVERSE)/files/server/client/auto/all/.tmux.conf ~

link-starship:
	-mkdir -p ~/.config/ && ln -sf $(ROOT_UNIVERSE)/files/server/client/auto/all/starship.toml ~/.config/

link-vim:
	-ln -sf $(ROOT_UNIVERSE)/files/server/client/auto/all/.vimrc ~

## Linux-specific
link-zsh__linux:
	-ln -sf $(ROOT_UNIVERSE)/files/server/client/auto/linux/.zshrc ~