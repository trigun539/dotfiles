############################################################################
# OH MY ZSH
############################################################################

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

############################################################################
# PLUGINS
############################################################################

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# oh-my-zsh theme
ZSH_THEME="robbyrussell"

# Insecure completion dependent issue
ZSH_DISABLE_COMPFIX=true

############################################################################
# PATH
############################################################################

GEM_HOME=$HOME/.gem
GEM_PATH=$HOME/.gem

export PATH="/usr/bin:$PATH"
export PATH="/usr/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/shims:$PATH"

source $ZSH/oh-my-zsh.sh
