# added by ssh-agent 
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
# added by TeXLive
export PATH="$HOME/.local/texlive/2018/bin/x86_64-linux:$PATH"
# added by pywal
export PATH="${PATH}:${HOME}/.local/bin/"

# autostart X at login
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    exec startx
fi
