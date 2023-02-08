set -x
############################################################################
# OH MY ZSH
############################################################################

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Plugins
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# oh-my-zsh theme
ZSH_THEME="robbyrussell"

# Insecure completion dependent issue
ZSH_DISABLE_COMPFIX=true

source $ZSH/oh-my-zsh.sh
