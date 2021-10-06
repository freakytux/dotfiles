#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f ~/.config/dir_colors ]] && eval $(dircolors ~/.config/dir_colors)

[[ -f ~/.bash_aliases ]] && source ~/.bash_aliases

export HISTFILE="$XDG_DATA_HOME"/bash/bash_history
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
export PROMPT_COMMAND='history -a'

# colorful man
export LESS_TERMCAP_mb=$'\e[1;34m'
export LESS_TERMCAP_md=$'\e[1;34m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;38m'

# Custom prompt
PS1="\n [ \e[1;34m\w\e[0m ]\n   "

# change terminal title
case ${TERM} in

  xterm*|rxvt*|Eterm|aterm|kterm|alacritty|gnome*)
     PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s%s%s\007" " : " "${PWD/#$HOME/\~}"'

    ;;
  screen*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
esac
