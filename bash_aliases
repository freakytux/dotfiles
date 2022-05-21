alias startx="startx ~/.config/X11/xinitrc"

alias ls="ls --color=auto --group-directories-first"
alias ll='ls -l'
alias lla='ls -la'
alias la='ls -A'
alias l='ls -CF'
alias lt="tree"

alias grep='grep --color=auto -i'
alias fgrep='fgrep --color=auto -i'
alias egrep='egrep --color=auto -i'
alias diff='colordiff'
alias rm='rm -i'
alias df='df -H'
alias more=less
alias free='free -m'

## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

# systecmtl
alias start="sudo systemctl start"
alias stop="sudo systemctl stop"
alias restart="sudo systemctl restart"
alias disable="sudo systemctl disable"
alias enable="sudo systemctl enable"
alias status="systemctl status"

# directory changing
alias dc="cd ~/documents"
alias dw="cd ~/other/downloads"
alias de="cd ~/desktop"
alias pc="cd ~/other/pictures"
alias vd="cd ~/other/videos"
alias pg="cd ~/desktop/3_LinuxPG"
alias itc="cd ~/documents/1_PDF-Material/info-tech"
alias mc="cd ~/other/music"

# Jupyter
alias ca="conda activate"
alias a="conda deactivate"
alias lab="jupyter lab"
alias nb="jupyter notebook"

# More
alias yd="youtube-dl"
alias music="youtube-dl -x --audio-format mp3 --audio-quality 0 -o '/home/narayanux/other/music/%(title)s-%(id)s.%(ext)s' "
alias mp3="youtube-dl -x --audio-format mp3 --audio-quality 0 "
alias pipe="pipes.sh"
alias wp="feh --no-fehbg --bg-fill "
alias p1='ping -c 1 '
alias t="tmux"
alias ta="tmux attach"
alias r="ranger"
alias o="xdg-open"
alias vim='nvim'
