# If not running interactively, don't do anything

case $- in
    *i*) ;;
      *) return;;
esac


# Set command history to persist indefinitely with timestamps

shopt -s histappend cmdhist
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
export HISTSIZE=100
export HISTFILESIZE=-1
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$"\n"}history -a; history -c; history -r"
export HISTTIMEFORMAT='%F %T '


# Additional shell options

# cdspell: correct minor errors in the spelling of a directory component in a cd command
# checkwinsize: check and update the window size of the current terminal window after each command
# expand_aliases: expand aliases
# globstar: pattern "**" matches all files and zero or more directories and subdirectories
shopt -s \
    cdspell \
    checkwinsize \
    expand_aliases \
    globstar 


# Aliases

if [ -d "${HOME}/.bash_aliases.d" ]
then
    for ALIAS_PATH in ${HOME}/.bash_aliases.d/*
    do
        if [ -r "${ALIAS_PATH}" ]
        then
            . "${ALIAS_PATH}"
        fi
    done
fi


# Configuration extensions

if [ -d "${HOME}/.bashrc.d" ]
then
    for ALIAS_PATH in ${HOME}/.bashrc.d/*
    do
        if [ -r "${ALIAS_PATH}" ]
        then
            . "${ALIAS_PATH}"
        fi
    done
fi


# Enable shell completion

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


# Default terminal prompt

if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null
then
    if [ -x "$(which starship)" ]
    then
        eval "$(starship init bash)"
    else
        PS1="\\n\u@\e[38;5;25m\H \e[38;5;244m\w $(tput bold)$(git branch 2>/dev/null | grep '*')$(tput sgr0)\\n[\#] "
    fi
else
    PS1="\\n\u@\H \w $(git branch 2>/dev/null | grep '*')\\n[\#] "
fi
