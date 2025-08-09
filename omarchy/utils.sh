# ------------------------------------
# GENERAL
# ------------------------------------

if [ eza ]; then
  alias ll='eza -l --icons'
else
  alias ll='ls -alf'
fi

alias lla='ll -a'
alias fhere="find . -name "
alias myip="curl http://ipecho.net/plain; echo"

export REACT_EDITOR=nvim

# ------------------------------------
# GIT
# ------------------------------------

alias gb="git branch"
alias gco="git checkout"
alias gcb="git checkout -b "
alias gst="git status"
alias ggl="git pull"
alias ggp="git push"
alias ggf="git push --force"
alias gaa="git add -A ."
alias gcmsg="git commit -m "
alias gcme="git --amend --no-edit"

# ------------------------------------
# TMUX
# ------------------------------------

# alias tmux="TERM=screen-256color-bce tmux"
alias tll="tmux list-sessions"
ts() { tmux new -s $1; }
ta() { tmux a -t $1; }

# ------------------------------------
# TMUXP
# ------------------------------------

export DISABLE_AUTO_TITLE='true'
tpl() { tmuxp load $1; }

# ------------------------------------
# Docker alias and function
# ------------------------------------

# Start Docker Daemon
alias dockstart="bash --login '/Applications/Docker/Docker Quickstart Terminal.app/Contents/Resources/Scripts/start.sh'"

# Get latest container ID
alias dl="docker ps -l -q"

# Get container process
alias dps='docker ps --format "table {{.Names}}\t{{.State}}\t{{.Ports}}"'

# Get process included stop container
alias dpa="docker ps -a"

# Get images
alias di="docker images"

# Get volume list
alias dvls="docker volume ls"

# Get volume remove
alias dvrm="docker volume rm"

# Get container IP
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"

# Run deamonized container, e.g., $dkd base /bin/echo hello
alias dkd="docker run -d -P"

# Run interactive container, e.g., $dki base /bin/bash
alias dki="docker run -i -t -P"

# Execute interactive container, e.g., $dex base /bin/bash
alias dex="docker exec -i -t"

# Stop all containers
dstop() { docker stop $(docker ps -a -q); }

# Remove all containers
drm() { docker rm $(docker ps -a -q); }

# Stop and Remove all containers
alias drmf="docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)"

# Remove image
dri() { docker rmi $1; }

drif() { docker rmi -f $1; }

# Remove all images
driall() { docker rmi $(docker images -q --filter "dangling=true"); }

# Dockerfile build, e.g., $dbu tcnksm/test
dbu() { docker build -t=$1 .; }

# Show all alias related docker
dalias() { alias | grep "docker" | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/" | sed "s/['|\']//g" | sort; }

# ------------------------------------
# DOCKER COMPOSE
# ------------------------------------

dcup() { docker-compose up $1; }
dcpull() { docker-compose pull $1; }
dcstop() { docker-compose stop $1; }
dcdown() { docker-compose down $1; }
dcbuild() { docker-compose build $1; }
dclogs() { docker-compose logs -f $1; }
