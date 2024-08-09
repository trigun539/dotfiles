############################################################################
# PATH
############################################################################

GEM_HOME=$HOME/.gem
GEM_PATH=$HOME/.gem

export PATH="/usr/bin:$PATH"
export PATH="/usr/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/opt/X11/bin:$PATH"

############################################################################
# VIM FZF
############################################################################

export FZF_DEFAULT_COMMAND='ag --nocolor --ignore node_modules -g ""'

############################################################################
# NVM
############################################################################

export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh

############################################################################
# Z
############################################################################

source $(brew --prefix)/etc/profile.d/z.sh

############################################################################
# RUBY
############################################################################

eval "$(rbenv init - zsh)"

############################################################################
# GIT
############################################################################

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"
