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
	ln -s .bash_profile ~
	ln -s .inputrc ~

link-git:
	ln -s .gitconfig ~

link-tmux:
	ln -s .tmux.conf ~

link-skhd:
	ln -s .skhdrc ~

link-vim:
	ln -s .vimrc ~

link-yabai:
	ln -s .yabairc ~

link-zsh:
	ln -s .zshrc ~
