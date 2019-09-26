#
# ~/.bashrc
#

usermodmap=$HOME/.Xmodmap
useraliases=$HOME/.bash_aliases

if [[ $DISPLAY ]]; then
    # If not running interactively, don't do anything
    [[ $- != *i* ]] && return
fi

if [ -f "$useraliases" ]; then
	. "$useraliases"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

alias ls='ls --color=auto'
PS1='[\W]\$ '

xset r rate 200 80
