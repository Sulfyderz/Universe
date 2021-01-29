# Colorizing
export PS1="%F{15}[%f%F{14}%n%f%F{15}@%f%F{208}%m%f%F{15}:%f%F{11}%~%f%F{15}]%#%f"
export PS2="%F{15}%_>%f"
export CLICOLOR=1
export LSCOLORS=HxexxxxxxxxxxxxxxxHxHx
export LS_COLORS='di=1;37:ln=34:so=0:pi=0:ex=0:bd=0:cd=0:su=0:sg=0:tw=1;37:ow=1;37'
autoload -Uz compinit
compinit
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# LIUM (to delete)
au_labo=`ifconfig -a | grep "172.19.1."`

if [ ${#au_labo} -gt "0" ]
then
    export http_proxy="http://proxy.univ-lemans.fr:3128"
    export https_proxy="http://proxy.univ-lemans.fr:3128"
    export ftp_proxy="http://proxy.univ-lemans.fr:3128"
fi

