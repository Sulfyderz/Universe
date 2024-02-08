# Configuration
## Oneshell means all lines in a recipe run in the same shell
.ONESHELL:


# Variables
ROOT_UNIVERSE := $(abspath $(dir $(lastword $(MAKEFILE_LIST)))/../../)


# Shorcuts
## Linux-specific
install__linux: install-fzf__linux install-tmux-resurrect install-starship__linux install-vundle install-zsh-autosuggestions__linux
link__linux: link-git link-tmux link-starship link-vim link-zsh__linux
upgrade__linux: upgrade-fzf__linux upgrade-tmux-resurrect upgrade-vundle upgrade-zsh-autosuggestions__linux

## macOS-specific
install__macOS: install-fzf__macOS install-tmux-resurrect install-homebrew__macOS install-starship__macOS install-tmux__macOS install-vundle install-zsh-autosuggestions__macOS
link__macOS: link-git link-tmux link-skhd__macOS link-starship link-vim link-yabai__macOS link-zsh__macOS
upgrade__macOS: upgrade-fzf__macOS upgrade-tmux-resurrect upgrade-vundle upgrade-zsh-autosuggestions__macOS


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
	-git clone https://github.com/VundleVim/Vundle.vim.git $(ROOT_UNIVERSE)/bin/vim/bundle/Vundle.vim && vim +PluginInstall +qall

## Linux-specific
install-conda__linux:
	-mkdir -p $(ROOT_UNIVERSE)/bin/miniconda3 && wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O $(ROOT_UNIVERSE)/bin/miniconda3/miniconda.sh && bash $(ROOT_UNIVERSE)/bin/miniconda3/miniconda.sh -b -u -p $(ROOT_UNIVERSE)/bin/miniconda3 && rm -rf $(ROOT_UNIVERSE)/bin/miniconda3/miniconda.sh

install-fzf__linux:
	-git clone --depth 1 https://github.com/junegunn/fzf.git $(ROOT_UNIVERSE)/bin/fzf/ && $(ROOT_UNIVERSE)/bin/fzf/install --key-bindings --completion --no-update-rc

install-starship__linux:
	-curl -sS https://starship.rs/install.sh | sh

install-zsh-autosuggestions__linux:
	-git clone https://github.com/zsh-users/zsh-autosuggestions $(ROOT_UNIVERSE)/bin/zsh-autosuggestions/

## macOS-specific
install-conda-arm64__macOS:
	-mkdir -p $(ROOT_UNIVERSE)/bin/miniconda3 && curl https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh -o $(ROOT_UNIVERSE)/bin/miniconda3/miniconda.sh && bash $(ROOT_UNIVERSE)/bin/miniconda3/miniconda.sh -b -u -p $(ROOT_UNIVERSE)/bin/miniconda3 && rm -rf $(ROOT_UNIVERSE)/bin/miniconda3/miniconda.sh

install-conda-x86__macOS:
	-mkdir -p $(ROOT_UNIVERSE)/bin/miniconda3-x86 && curl https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh -o $(ROOT_UNIVERSE)/bin/miniconda3-x86/miniconda.sh && bash $(ROOT_UNIVERSE)/bin/miniconda3-x86/miniconda.sh -b -u -p $(ROOT_UNIVERSE)/bin/miniconda3-x86 && rm -rf $(ROOT_UNIVERSE)/bin/miniconda3/miniconda.sh

install-fzf__macOS:
	-eval "$$(/opt/homebrew/bin/brew shellenv)" && brew install fzf

install-homebrew__macOS:
	-/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

install-starship__macOS:
	-eval "$$(/opt/homebrew/bin/brew shellenv)" && brew install starship

install-tmux__macOS:
	-eval "$$(/opt/homebrew/bin/brew shellenv)" && brew install tmux 

install-zsh-autosuggestions__macOS:
	-eval "$$(/opt/homebrew/bin/brew shellenv)" && brew install zsh-autosuggestions


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

## macOS-specific
upgrade-fzf__macOS:
	-eval "$$(/opt/homebrew/bin/brew shellenv)" && brew update && brew upgrade fzf

upgrade-zsh-autosuggestions__macOS:
	-eval "$$(/opt/homebrew/bin/brew shellenv)" && brew update && brew upgrade zsh-autosuggestions

# Symbolic link section
## Non-specific
link-bash:
	-ln -sf $(ROOT_UNIVERSE)/files/local/auto/all/.bash_profile ~
	-ln -sf $(ROOT_UNIVERSE)/files/local/auto/all/.inputrc ~

link-git:
	-ln -sf $(ROOT_UNIVERSE)/files/local/auto/all/.gitconfig ~

link-tmux:
	-ln -sf $(ROOT_UNIVERSE)/files/local/auto/all/.tmux.conf ~

link-starship:
	-mkdir -p ~/.config/ && ln -sf $(ROOT_UNIVERSE)/files/local/auto/all/starship.toml ~/.config/

link-vim:
	-ln -sf $(ROOT_UNIVERSE)/files/local/auto/all/.vimrc ~

## Linux-specific
link-zsh__linux:
	-ln -sf $(ROOT_UNIVERSE)/files/local/auto/linux/.zshrc ~

## macOS-specific
link-skhd__macOS:
	-ln -sf $(ROOT_UNIVERSE)/files/local/auto/macOS/.skhdrc ~

link-yabai__macOS:
	-ln -sf $(ROOT_UNIVERSE)/files/local/auto/macOS/.yabairc ~

link-zsh__macOS:
	-ln -sf $(ROOT_UNIVERSE)/files/local/auto/macOS/.zshrc ~
