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
# SDKMAN
############################################################################

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

############################################################################
# Z
############################################################################

source $(brew --prefix)/etc/profile.d/z.sh

############################################################################
# RUBY
############################################################################

eval "$(rbenv init - zsh)"

############################################################################
# PYENV
############################################################################

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

############################################################################
# RUST
############################################################################

source "$HOME/.cargo/env"

############################################################################
# GIT
############################################################################

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"
