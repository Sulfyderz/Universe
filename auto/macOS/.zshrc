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
export PS1="%F{15}[%f%F{51}%n%f%F{15}@%f%F{203}%m%f%F{15}:%f%F{220}%~%f%F{15}]%#%f"
export PS2="%F{15}%_>%f"
export CLICOLOR=1
export LSCOLORS="GxgxxxxxxxxxxxxxxxHxHx"
export LS_COLORS="di=1;36:ln=36:so=0:pi=0:ex=0:bd=0:cd=0:su=0:sg=0:tw=1;37:ow=1;37:no=0:fi=0:do=0:or=0:mi=0:st=0"
autoload -Uz compinit
compinit
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# Software
## Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
## Conda
co_arm
## Starship
eval "$(starship init zsh)"
## zsh-autosuggestions 
export ZSH_AUTOSUGGEST_MANUAL_REBIND=true
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
## fzf
export FZF_DEFAULT_OPTS='--height 30% -m --border --reverse --prompt="❯ " --pointer="❯" --marker="❯" --color="prompt:white,spinner:203,info:203,marker:203,pointer:51"'
source $(brew --prefix)/opt/fzf/shell/completion.zsh
source $(brew --prefix)/opt/fzf/shell/key-bindings.zsh
