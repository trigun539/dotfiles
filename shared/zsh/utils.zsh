# ------------------------------------
# GENERAL
# ------------------------------------

if [ eza ];
then
  alias ll='eza -l --icons'
else
  alias ll='ls -alf'
fi

alias lla='ll -a'
alias fhere="find . -name "
alias myip="curl http://ipecho.net/plain; echo"

export REACT_EDITOR=nvim

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

# Remove all volumes
dvrma() { docker volume rm $(docker volume ls -q); }

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
alias drmf='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'

# Remove image
dri() { docker rmi $1; }

drif() { docker rmi -f $1; }

# Remove all images
driall() { docker rmi $(docker images -q --filter "dangling=true"); }

# Dockerfile build, e.g., $dbu tcnksm/test
dbu() { docker build -t=$1 .; }

# Show all alias related docker
dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }

# ------------------------------------
# DOCKER COMPOSE
# ------------------------------------

dcup() { docker compose up $1; }
dcpull() { docker compose pull $1; }
dcstop() { docker compose stop $1; }
dcdown() { docker compose down $1; }
dcbuild() { docker compose build $1; }
dclogs() { docker compose logs -f $1; }

# ------------------------------------
# TERRAFORM
# ------------------------------------

alias tfi="terraform init"
alias tfc="terraform console"
alias tff="terraform fmt"
alias tfv="terraform validate"
alias tfp="terraform plan"
alias tfa="terraform apply"
alias tfaa="terraform apply --auto-approve"
alias tfd="terraform destroy"
alias tfda="terraform destroy --auto-approve"

# ------------------------------------
# ANSIBLE
# ------------------------------------

# Run playbook
arb() { ansible-playbook $1 -i "$HOME/environments/personal/inventory" --extra-vars="target=$2" -K; }
arv() { ansible-playbook --ask-vault-pass $1 -i "$HOME/environments/personal/inventory" --extra-vars="target=$2" -K; }

# Ansible vault
avc() { ansible-vault create $1}
ave() { ansible-vault edit $1}
aven() { ansible-vault encrypt $1}
avde() { ansible-vault decrypt $1}

# ------------------------------------
# AWS
# ------------------------------------

# Switch aws default profiles
awsll() {
  aws configure list-profiles
}
awscp() {
  if [[ $# -eq 0 ]] ;
  then
    echo 'No profile name provided'
  else
    if grep "AWS_PROFILE" ~/dotfiles/local.zsh
    then
      sed -i -e "s/$(awsp)/$1/g" ~/dotfiles/local.zsh
    else
      echo "export AWS_PROFILE=$1" >> ~/dotfiles/local.zsh
    fi

    source ~/dotfiles/local.zsh
  fi
}
awsp() {
  echo "$AWS_PROFILE"
}

# Make private s3 bucket
awsmbp() { aws s3api create-bucket --bucket $1 --region us-east-1 --acl private; }
awsS3Block() { aws s3api put-public-access-block \
    --bucket $1 \
    --public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=true,RestrictPublicBuckets=true"}

# ------------------------------------
# Task utils
# ------------------------------------

alias tskui="taskwarrior-tui"
