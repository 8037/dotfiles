#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# exports!
export EDITOR="vim"
export TERMINAL="urxvt"
export RANGER_LOAD_DEFAULT_RC=FALSE
export PATH="$PATH:~/bin"
export HISTCONTROL=ignoreboth

# alias
alias ls='ls --color=auto --group-directories-first'
alias mkwebm='ffmpeg -i your_video.mkv -ss 00:00:10.000 -to 00:00:20.000 -c:v libvpx -crf 4 -b:v 1500K -vf scale=640:-1 -an output.webm'

#funcions
mkcd (){
	mkdir "$@" && cd "$@"
}

rec (){
	ffmpeg -video_size 1920x1080 -framerate 25 -f x11grab -i :0.0+0,0 output.mp4
}

# binds
bind '"\e[Z":menu-complete' # shift + tab = cycle through files/directories

# prompt and some colors
white="\[$(tput setaf 15)\]"
pink="\[$(tput setaf 12)\]"
reset="\[$(tput sgr0)\]"
export PS1=" ${pink}\w ${white}── "

