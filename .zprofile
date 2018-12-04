# autostart X at login
# if [[ ! $DISPLAY && $(tty) = "/dev/tty1" ]]; then
#     startx
# fi

# added by ssh-agent 
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
# added by Miniconda3 installer
# export PATH="/home/maximilian/miniconda3/bin:$PATH"
# added by TeXLive
export PATH="$HOME/.local/texlive/2018/bin/x86_64-linux:$PATH"
# added by pywal
export PATH="${PATH}:${HOME}/.local/bin/"
conda activate
