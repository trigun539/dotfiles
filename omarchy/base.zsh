############################################################################
# PATH
############################################################################

GEM_HOME=$HOME/.gem
GEM_PATH=$HOME/.gem

export PATH="/usr/bin:$PATH"
export PATH="/usr/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/opt/X11/bin:$PATH"
export PATH="$PATH:$(go env GOBIN):$(go env GOPATH)/bin"

############################################################################
# MISE
############################################################################

eval "$(/usr/sbin/mise activate zsh)"

############################################################################
# VIM FZF
############################################################################

export FZF_DEFAULT_COMMAND='ag --nocolor --ignore node_modules -g ""'

############################################################################
# SDKMAN
############################################################################

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

############################################################################
# GIT
############################################################################

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"
