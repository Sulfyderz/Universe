# Alias
alias ta='tmux attach'
alias tad="tmux attach -d"
alias tls="tmux list-sessions"
alias tkill="tmux kill-session -t"
alias co="conda"
alias coa="conda activate"
alias cod="conda deactivate"
alias cols="conda list"
alias co_arm='__conda_setup="$("/Users/sulfyderz/Workshop/Tool/Package-Manager/Miniconda3/bin/conda" "shell.zsh" "hook" 2> /dev/null)"; \
if [ $? -eq 0 ]; then eval "$__conda_setup"; \
else \
if [ -f "/Users/sulfyderz/Workshop/Tool/Package-Manager/Miniconda3/etc/profile.d/conda.sh" ]; then . "/Users/sulfyderz/Workshop/Tool/Package-Manager/Miniconda3/etc/profile.d/conda.sh"; \
else \
export PATH="/Users/sulfyderz/Workshop/Tool/Package-Manager/Miniconda3/bin:$PATH"; \
fi; \
fi;'
alias co_x86='__conda_setup="$("/Users/sulfyderz/Workshop/Tool/Package-Manager/Miniconda3-x86/bin/conda" "shell.zsh" "hook" 2> /dev/null)"; \
if [ $? -eq 0 ]; then eval "$__conda_setup"; \
else \
if [ -f "/Users/sulfyderz/Workshop/Tool/Package-Manager/Miniconda3-x86/etc/profile.d/conda.sh" ]; then . "/Users/sulfyderz/Workshop/Tool/Package-Manager/Miniconda3-x86/etc/profile.d/conda.sh"; \
else \
export PATH="/Users/sulfyderz/Workshop/Tool/Package-Manager/Miniconda3-x86/bin:$PATH"; \
fi; \
fi;'
alias dk="docker"

# Color
export TERM=xterm-256color
export PS1="%F{15}[%f%F{14}%n%f%F{15}@%f%F{208}%m%f%F{15}:%f%F{11}%~%f%F{15}]%#%f"
export PS2="%F{15}%_>%f"
export CLICOLOR=1
export LSCOLORS=HxexxxxxxxxxxxxxxxHxHx
export LS_COLORS='di=1;37:ln=34:so=0:pi=0:ex=0:bd=0:cd=0:su=0:sg=0:tw=1;37:ow=1;37'
autoload -Uz compinit
compinit
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# Software
## Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
## Conda
co_arm
## Pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Network
## LIUM (to delete)
au_labo=`ifconfig -a | grep "172.19.1."`
if [ ${#au_labo} -gt "0" ]
then
    export http_proxy="http://proxy.univ-lemans.fr:3128"
    export https_proxy="http://proxy.univ-lemans.fr:3128"
    export ftp_proxy="http://proxy.univ-lemans.fr:3128"
fi
