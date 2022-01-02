alias ls="ls -hF"
alias ll="ls -hFl"
alias la="ls -hFla"

alias df="df -h"
alias du="du -h"

alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"
alias zgrep="zgrep --color=auto"
alias zegrep="zegrep --color=auto"
alias zfgrep="zfgrep --color=auto"

if [ -x "$(which nvim)" ]
then
    alias vim="nvim"
fi
