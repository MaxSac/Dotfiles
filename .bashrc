#
# ~/.bashrc
#

usermodmap=$HOME/.Xmodmap
useraliases=$HOME/.bash_aliases

if [[ $DISPLAY ]]; then
    # If not running interactively, don't do anything
    [[ $- != *i* ]] && return
    # [[ -z "$TMUX" ]] && exec tmux -2
    if which tmux >/dev/null 2>&1; then
        test -z "$TMUX" && (tmux attach || tmux new-session)
    fi
fi

if [ -f "$useraliases" ]; then
	. "$useraliases"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

if [[ -z "$TMUX" ]] ;then
    ID="$( tmux ls | grep -vm1 attached | cut -d: -f1 )" # get the id of a deattached session
    if [[ -z "$ID" ]] ;then # if not available create a new one
        tmux new-session
    else
        tmux attach-session -t "$ID" # if available attach to it
    fi
fi


alias ls='ls --color=auto'
PS1='[\W]\$ '

xset r rate 200 80
