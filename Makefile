# Oneshell means all lines in a recipe run in the same shell
.ONESHELL:

all: plugin-all link-all

plugin-all: plugin-tmux

link-all: link-bash link-git link-tmux link-skhd link-vim link-yabai link-zsh

# Plugin section
## Downloading Tmux-Resurrect
plugin-tmux:
	git clone https://github.com/tmux-plugins/tmux-resurrect ./auto/plugins/tmux-resurrect/

# Symbolic link section
link-bash:
	ln -s $(PWD)/auto/.bash_profile ~
	ln -s $(PWD)/auto/.inputrc ~

link-git:
	ln -s $(PWD)/auto/.gitconfig ~

link-tmux:
	ln -s $(PWD)/auto/.tmux.conf ~

link-skhd:
	ln -s $(PWD)/auto/.skhdrc ~

link-vim:
	ln -s $(PWD)/auto/.vimrc ~

link-yabai:
	ln -s $(PWD)/auto/.yabairc ~

link-zsh:
	ln -s $(PWD)/auto/.zshrc ~
