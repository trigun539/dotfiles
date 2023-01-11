# ENVIRONMENT VARIABLES

############################################################################
# PATH
############################################################################

GEM_HOME=$HOME/.gem
GEM_PATH=$HOME/.gem

export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="/usr/bin:$PATH"
export PATH="/usr/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/opt/X11/bin:$PATH"
export PATH="/opt/homebrew/opt/python@3.10/bin:$PATH"

# Add Visual Studio Code (code)
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"

export JAVA_HOME=$(/usr/libexec/java_home)

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
# RUBY
############################################################################

eval "$(rbenv init - zsh)"

############################################################################
# TMUX
############################################################################

############################################################################
# Autocompletion
############################################################################

# source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

############################################################################
# ZSH Highlighting
############################################################################

# source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters

############################################################################
# BASE SHELL
############################################################################

BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="robbyrussell"

# Set default base16 theme
base16-manager set dracula

############################################################################
# GIT
############################################################################

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)
