export PATH=/lium/buster1/broux/Tools/miniconda3/bin:$PATH
unset SSH_ASKPASS
alias ta="tmux attach"
alias tad="tmux attach -d"
alias tls="tmux list-sessions"
alias tkill="tmux kill-session -t"
alias ls='ls --color'
export PS1='\[\e[38;5;15m\][\[\e[38;5;14m\]\u\[\e[38;5;15m\]@\[\e[38;5;208m\]\h\[\e[38;5;15m\]:\[\e[38;5;11m\]\w\[\e[38;5;15m\]]\$\[\e[m\]'
export PS2='\[\e[38;5;15m\]>\[\e[m\]'
eval "$(dircolors -b ~/.dircolors)"
export LS_COLORS='di=1;37:ln=34:so=0:pi=0:ex=0:bd=0:cd=0:su=0:sg=0:tw=1;37:ow=1;37'
