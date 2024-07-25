#set vim terminal to 256 colors.
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
    export TERM='xterm-256color'
else
    export TERM='xterm-color'
fi

# configuring brew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
. "$HOME/.cargo/env"
