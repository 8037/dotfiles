#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

# exports!
export EDITOR="vim"
export TERMINAL="urxvt"
export RANGER_LOAD_DEFAULT_RC=FALSE
export PATH="$PATH:~/bin"

export HISTCONTROL=ignoreboth

# prompt and some colors
WHITE="\[$(tput setaf 15)\]"
PINK="\[$(tput setaf 12)\]"
RESET="\[$(tput sgr0)\]"
export PS1=" ${PINK}\w ${WHITE}── "
