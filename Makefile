# Oneshell means all lines in a recipe run in the same shell
.ONESHELL:

all: macOS

linux: install__linux link__linux

macOS: install__macOS link__macOS

install__linux: install-tmux-resurrect install-starship__linux install-fzf__linux

install__macOS: install-tmux-resurrect install-homebrew__macOS install-starship__macOS install-tmux__macOS install-zsh-autosuggestions__macOS install-fzf__macOS

link__linux: link-git link-tmux link-starship link-vim link-zsh__linux

link__macOS: link-git link-tmux link-skhd__macOS link-starship link-vim link-yabai__macOS link-zsh__macOS

# Variable
path_makefile := $(abspath $(lastword $(MAKEFILE_LIST)))

# Command section
## Deactivating the prompt modifier of conda (useful only when starship is applied)
command-conda-mute:
	conda config --set changeps1 false

# Installing section
## Non-specific
install-tmux-resurrect:
	git clone https://github.com/tmux-plugins/tmux-resurrect ./auto/all/plugins/tmux-resurrect/

## Linux-specific
install-fzf__linux:
	sudo apt install fzf

install-starship__linux:
	curl -sS https://starship.rs/install.sh | sh

## macOS-specific
install-fzf__macOS:
	eval "$(/opt/homebrew/bin/brew shellenv)" && brew install fzf

install-homebrew__macOS:
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

install-starship__macOS:
	eval "$(/opt/homebrew/bin/brew shellenv)" && brew install starship

install-tmux__macOS:
	eval "$(/opt/homebrew/bin/brew shellenv)" && brew install tmux 

install-zsh-autosuggestions__macOS:
	eval "$(/opt/homebrew/bin/brew shellenv)" && brew install zsh-autosuggestions

# Symbolic link section
## Non-specific
link-bash:
	ln -s $(path_makefile)/auto/all/.bash_profile ~
	ln -s $(path_makefile)/auto/all/.inputrc ~

link-git:
	ln -s $(path_makefile)/auto/all/.gitconfig ~

link-tmux:
	ln -s $(path_makefile)/auto/all/.tmux.conf ~

link-starship:
	ln -s $(path_makefile)/auto/all/starship.toml ~/.config/

link-vim:
	ln -s $(path_makefile)/auto/all/.vimrc ~

## Linux-specific
link-zsh__linux:
	ln -s $(path_makefile)/auto/linux/.zshrc ~

## macOS-specific
link-skhd__macOS:
	ln -s $(path_makefile)/auto/macOS/.skhdrc ~

link-yabai__macOS:
	ln -s $(path_makefile)/auto/macOS/.yabairc ~

link-zsh__macOS:
	ln -s $(path_makefile)/auto/macOS/.zshrc ~
