export QT_QPA_PLATFORMTHEME=qt5ct
export EDITOR=/usr/bin/nvim
export BROWSER=/usr/bin/firefox

export PATH="$PATH:$HOME/.local/bin"
export LESSHISTFILE=-

# Setting up XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# Moving default config
export CONDARC="$XDG_CONFIG_HOME/conda/condarc"
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export VIMINIT="set nocp | source ${XDG_CONFIG_HOME:-$HOME/.config}/vim/vimrc"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export JUPYTER_CONFIG_PATH="$XDG_CONFIG_HOME/jupyter"
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export CONDARC="$XDG_CONFIG_HOME"/conda/condarc
export PYTHONHISTFILE=/dev/null
#export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority


# automatically start x-session
if [[ "$(tty)" = "/dev/tty1" ]]; then
    exec startx ~/.config/X11/xinitrc
fi
