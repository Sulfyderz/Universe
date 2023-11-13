# Oneshell means all lines in a recipe run in the same shell
.ONESHELL:

all: macOS

linux: install__linux link__linux

macOS: install__macOS link__macOS

install__linux: install-tmux-resurrect

install__macOS: install-tmux-resurrect install-homebrew__macOS install-starship__macOS install-tmux__macOS install-zsh-autosuggestions__macOS install-fzf__macOS

link__linux: link-git link-tmux link-starship link-vim link-zsh__linux

link__macOS: link-git link-tmux link-skhd__macOS link-starship link-vim link-yabai__macOS link-zsh__macOS

# Command section
## Deactivating the prompt modifier of conda (useful only when starship is applied)
command-conda-mute:
	conda config --set changeps1 false

# Installing section
## Non-specific
install-tmux-resurrect:
	git clone https://github.com/tmux-plugins/tmux-resurrect ./auto/all/plugins/tmux-resurrect/

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
	ln -s $(PWD)/auto/all/.bash_profile ~
	ln -s $(PWD)/auto/all/.inputrc ~

link-git:
	ln -s $(PWD)/auto/all/.gitconfig ~

link-tmux:
	ln -s $(PWD)/auto/all/.tmux.conf ~

link-starship:
	ln -s $(PWD)/auto/all/starship.toml ~/.config/

link-vim:
	ln -s $(PWD)/auto/all/.vimrc ~

## Linux-specific
link-zsh__linux:
	ln -s $(PWD)/auto/linux/.zshrc ~

## macOS-specific
link-skhd__macOS:
	ln -s $(PWD)/auto/macOS/.skhdrc ~

link-yabai__macOS:
	ln -s $(PWD)/auto/macOS/.yabairc ~

link-zsh__macOS:
	ln -s $(PWD)/auto/macOS/.zshrc ~


