#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export EDITOR="vim"
export TERMINAL="urxvt"
export RANGER_LOAD_DEFAULT_RC=FALSE


# reference
#if [ -n "$SSH_CONNECTION" ]; then
#export PS1="\[$(tput setaf 12)\]┌─╼ \[$(tput setaf 15)\][\w]\n\[$(tput setaf 12)\]\$(if [[ \$? == 0 ]]; then echo \"\[$(tput setaf 12)\]└────╼ \[$(tput setaf 15)\][ssh]\"; else echo \"\[$(tput setaf 12)\]└╼ \[$(tput setaf 15)\][ssh]\"; fi) \[$(tput setaf 15)\]"
#else
#export PS1="\[$(tput setaf 12)\]┌─╼ \[$(tput setaf 15)\][\w]\n\[$(tput setaf 12)\]\$(if [[ \$? == 0 ]]; then echo \"\[$(tput setaf 12)\]└────╼\"; else echo \"\[$(tput setaf 12)\]└╼\"; fi) \[$(tput setaf 15)\]"
#fi

# prompt and some colors
WHITE="\[$(tput setaf 15)\]"
PINK="\[$(tput setaf 12)\]"
RESET="\[$(tput sgr0)\]"
export PS1="${PINK}[${WHITE}\w${PINK}]${RESET}${PINK}┄┄─${WHITE} "
