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

# Insecure completion dependent issue
ZSH_DISABLE_COMPFIX=true

source $ZSH/oh-my-zsh.sh
