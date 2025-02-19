# Configuration
## Oneshell means all lines in a recipe run in the same shell
.ONESHELL:


# Variables
ROOT_UNIVERSE := $(abspath $(dir $(lastword $(MAKEFILE_LIST)))/../../)


# Shortcuts
## Linux-specific
install__linux: install-fzf__linux install-git-lfs__linux install-starship__linux install-tpm install-vundle install-zoxide__linux install-zsh-autosuggestions__linux
link__linux: link-git link-tmux link-starship link-vim link-zsh__linux
upgrade__linux: upgrade-os__linux upgrade-fzf__linux upgrade-tpm upgrade-vundle upgrade-zsh-autosuggestions__linux

## macOS-specific
install__macOS: install-homebrew__macOS install-raycast__macOS install-fzf__macOS install-git-lfs__macOS install-skhd__macOS install-starship__macOS install-tmux__macOS install-tpm install-vundle install-yabai__macOS install-zoxide__macOS install-zsh-autosuggestions__macOS
link__macOS: link-git link-tmux link-skhd__macOS link-starship link-vim link-yabai__macOS link-zsh__macOS
upgrade__macOS: upgrade-homebrew__macOS upgrade-tpm upgrade-vundle


# Command section
## Non-specific
### Deactivating the prompt modifier of conda (useful only when starship is applied)
command-conda-mute:
	-conda config --set changeps1 false

### Deactivating conda on startup
command-conda-not-on-startup:
	-conda config --set auto_activate_base false

### Initiating git lfs for a user account
command-git-lfs-init-account:
	-git lfs install

### Installing tpm plugins specified in tmux conf
command-tpm-install-plugins:
	-$(ROOT_UNIVERSE)/bin/tmux/plugins/tpm/bin/install_plugins

### Installing vundle plugins specified in vim conf
command-vundle-install-plugins:
	-vim +PluginInstall +qall

## Linux-specific
### Setup zsh as default shell
command-os-setup-zsh__linux:
	-chsh -s $(which zsh)


# Installing section
## Non-specific
install-tpm:
	-git clone https://github.com/tmux-plugins/tpm $(ROOT_UNIVERSE)/bin/tmux/plugins/tpm

install-vundle:
	-git clone https://github.com/VundleVim/Vundle.vim.git $(ROOT_UNIVERSE)/bin/vim/bundle/Vundle.vim

## Linux-specific
install-conda__linux:
	-mkdir -p $(ROOT_UNIVERSE)/bin/miniconda3 && wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O $(ROOT_UNIVERSE)/bin/miniconda3/miniconda.sh && bash $(ROOT_UNIVERSE)/bin/miniconda3/miniconda.sh -b -u -p $(ROOT_UNIVERSE)/bin/miniconda3 && rm -rf $(ROOT_UNIVERSE)/bin/miniconda3/miniconda.sh

install-fzf__linux:
	-git clone --depth 1 https://github.com/junegunn/fzf.git $(ROOT_UNIVERSE)/bin/fzf/ && $(ROOT_UNIVERSE)/bin/fzf/install --key-bindings --completion --no-update-rc

install-git-lfs__linux:
	-sudo apt install git-lfs --yes

install-starship__linux:
	-curl -sS https://starship.rs/install.sh | sh

install-zoxide__linux:
	-curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

install-zsh-autosuggestions__linux:
	-git clone https://github.com/zsh-users/zsh-autosuggestions $(ROOT_UNIVERSE)/bin/zsh-autosuggestions/

## macOS-specific
install-conda-arm64__macOS:
	-mkdir -p $(ROOT_UNIVERSE)/bin/miniconda3 && curl https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh -o $(ROOT_UNIVERSE)/bin/miniconda3/miniconda.sh && bash $(ROOT_UNIVERSE)/bin/miniconda3/miniconda.sh -b -u -p $(ROOT_UNIVERSE)/bin/miniconda3 && rm -rf $(ROOT_UNIVERSE)/bin/miniconda3/miniconda.sh

install-conda-x86__macOS:
	-mkdir -p $(ROOT_UNIVERSE)/bin/miniconda3-x86 && curl https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh -o $(ROOT_UNIVERSE)/bin/miniconda3-x86/miniconda.sh && bash $(ROOT_UNIVERSE)/bin/miniconda3-x86/miniconda.sh -b -u -p $(ROOT_UNIVERSE)/bin/miniconda3-x86 && rm -rf $(ROOT_UNIVERSE)/bin/miniconda3/miniconda.sh

install-fzf__macOS:
	-eval "$$(/opt/homebrew/bin/brew shellenv)" && brew install fzf

install-git-lfs__macOS:
	-eval "$$(/opt/homebrew/bin/brew shellenv)" && brew install git-lfs

install-homebrew__macOS:
	-/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

install-raycast__macOS:
	-eval "$$(/opt/homebrew/bin/brew shellenv)" && brew install --cask raycast

install-skhd__macOS:
	-eval "$$(/opt/homebrew/bin/brew shellenv)" && brew install koekeishiya/formulae/skhd && skhd --start-service

install-starship__macOS:
	-eval "$$(/opt/homebrew/bin/brew shellenv)" && brew install starship

install-tmux__macOS:
	-eval "$$(/opt/homebrew/bin/brew shellenv)" && brew install tmux 

install-yabai__macOS:
	-eval "$$(/opt/homebrew/bin/brew shellenv)" && brew install koekeishiya/formulae/yabai && yabai --start-service

install-zoxide__macOS:
	-eval "$$(/opt/homebrew/bin/brew shellenv)" && brew install zoxide

install-zsh-autosuggestions__macOS:
	-eval "$$(/opt/homebrew/bin/brew shellenv)" && brew install zsh-autosuggestions


# Upgrading section
## Non-specific
upgrade-tpm:
	-git -C $(ROOT_UNIVERSE)/bin/tmux/plugins/tpm pull

upgrade-vundle:
	-git -C $(ROOT_UNIVERSE)/bin/vim/bundle/Vundle.vim pull

## Linux-specific
upgrade-fzf__linux:
	-git -C $(ROOT_UNIVERSE)/bin/fzf pull && $(ROOT_UNIVERSE)/bin/fzf/install --key-bindings --completion --no-update-rc

upgrade-git-lfs__linux:
	-sudo apt update && sudo apt install --only-upgrade git-lfs && sudo apt autoremove --yes && sudo apt autoclean --yes

upgrade-os__linux:
	-sudo apt update && sudo apt full-upgrade --yes && sudo apt autoremove --yes && sudo apt autoclean --yes

upgrade-zsh-autosuggestions__linux:
	-git -C $(ROOT_UNIVERSE)/bin/zsh-autosuggestions pull

## macOS-specific
upgrade-fzf__macOS:
	-eval "$$(/opt/homebrew/bin/brew shellenv)" && brew update && brew upgrade fzf

upgrade-git-lfs__macOS:
	-eval "$$(/opt/homebrew/bin/brew shellenv)" && brew update && brew upgrade git-lfs

upgrade-homebrew__macOS:
	-eval "$$(/opt/homebrew/bin/brew shellenv)" && brew update && brew upgrade && brew upgrade --cask

upgrade-raycast__macOS:
	-eval "$$(/opt/homebrew/bin/brew shellenv)" && brew update && brew upgrade --cask raycast

upgrade-skhd__macOS:
	-eval "$$(/opt/homebrew/bin/brew shellenv)" && brew update && brew upgrade skhd

upgrade-starship__macOS:
	-eval "$$(/opt/homebrew/bin/brew shellenv)" && brew update && brew upgrade starship

upgrade-tmux__macOS:
	-eval "$$(/opt/homebrew/bin/brew shellenv)" && brew update && brew upgrade tmux 

upgrade-yabai__macOS:
	-eval "$$(/opt/homebrew/bin/brew shellenv)" && brew update && brew upgrade yabai

upgrade-zoxide__macOS:
	-eval "$$(/opt/homebrew/bin/brew shellenv)" && brew update && brew upgrade zoxide

upgrade-zsh-autosuggestions__macOS:
	-eval "$$(/opt/homebrew/bin/brew shellenv)" && brew update && brew upgrade zsh-autosuggestions


# Link section
## Non-specific
link-bash:
	-ln -sf $(ROOT_UNIVERSE)/files/local/auto/all/bash/{.bash_profile,.inputrc} ~

link-git:
	-ln -sf $(ROOT_UNIVERSE)/files/local/auto/all/git/.gitconfig ~

link-tmux:
	-ln -sf $(ROOT_UNIVERSE)/files/local/auto/all/tmux/.tmux.conf ~

link-starship:
	-mkdir -p ~/.config/ && ln -sf $(ROOT_UNIVERSE)/files/local/auto/all/starship/starship.toml ~/.config/

link-vim:
	-ln -sf $(ROOT_UNIVERSE)/files/local/auto/all/vim/.vimrc ~

## Linux-specific
link-zsh__linux:
	-ln -sf $(ROOT_UNIVERSE)/files/local/auto/linux/zsh/.zshrc ~

## macOS-specific
link-raycast__macOS:
	-open $(ROOT_UNIVERSE)/files/local/auto/macOS/raycast/raycast.rayconfig

link-skhd__macOS:
	-ln -sf $(ROOT_UNIVERSE)/files/local/auto/macOS/skhd/.skhdrc ~

link-yabai__macOS:
	-ln -sf $(ROOT_UNIVERSE)/files/local/auto/macOS/yabai/.yabairc ~

link-zsh__macOS:
	-ln -sf $(ROOT_UNIVERSE)/files/local/auto/macOS/zsh/.zshrc ~
