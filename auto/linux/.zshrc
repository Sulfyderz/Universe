# Alias
alias ta='tmux attach'
alias tad="tmux attach -d"
alias tls="tmux list-sessions"
alias tkill="tmux kill-session -t"
alias co="conda"
alias coa="conda activate"
alias cod="conda deactivate"
alias cols="conda list"
alias dk="docker"

# Color
export TERM=xterm-256color
export PS1="%F{15}[%f%F{51}%n%f%F{15}@%f%F{203}%m%f%F{15}:%f%F{220}%~%f%F{15}]%#%f"
export PS2="%F{15}%_>%f"
export CLICOLOR=1
export LSCOLORS=HxgxxxxxxxxxxxxxxxHxHx
autoload -Uz compinit
compinit
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# Software
## Pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
## Starship
eval "$(starship init zsh)"
