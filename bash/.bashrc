#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias
alias ls='ls --color=auto --group-directories-first'

# funcions

function mkcd (){
	mkdir "$@" && cd "$@"
}

function capture_desktop (){
	ffmpeg -video_size 1920x1080 -framerate 25 -f x11grab -i :0.0+0,0 output.mp4
}

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

