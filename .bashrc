
set -o vi 

alias c='clear'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
#PS1='[\u@\h]\$ '
export PS1='\u@\h:\w\$ '
alias c='clear'


EDITOR=vim
# using gforth with mode vi - require rlwrap installed
alias gforth='rlwrap -a gforth'
