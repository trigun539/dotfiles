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
# VIM FZF
############################################################################

export FZF_DEFAULT_COMMAND='ag --nocolor --ignore node_modules -g ""'

############################################################################
# NVM
############################################################################

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

############################################################################
# SDKMAN
############################################################################

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

############################################################################
# Z
############################################################################

source /usr/share/z/z.sh

############################################################################
# RUBY
############################################################################

eval "$(rbenv init - zsh)"

############################################################################
# PYENV
############################################################################
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc

echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
eval "$(pyenv init -)"

############################################################################
# GIT
############################################################################

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"
