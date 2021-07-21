# Oneshell means all lines in a recipe run in the same shell
.ONESHELL:

all: plugin-all link-all

plugin-all: plugin-tmux

link-all: link-bash link-git link-tmux link-skhd link-vim link-yabai link-zsh

# Plugin section
## Downloading Tmux-Resurrect
plugin-tmux:
	git clone https://github.com/tmux-plugins/tmux-resurrect ./plugins/tmux-resurrect/

# Symbolic link section
link-bash:
	ln -s $(pwd)/.bash_profile ~
	ln -s $(pwd)/.inputrc ~

link-git:
	ln -s $(pwd)/.gitconfig ~

link-tmux:
	ln -s $(pwd)/.tmux.conf ~

link-skhd:
	ln -s $(pwd)/.skhdrc ~

link-vim:
	ln -s $(pwd)/.vimrc ~

link-yabai:
	ln -s $(pwd)/.yabairc ~

link-zsh:
	ln -s $(pwd)/.zshrc ~
