############################################################################
# PATH
############################################################################

export PATH="/usr/bin:$PATH"
export PATH="/usr/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/opt/X11/bin:$PATH"

############################################################################
# VIM FZF
############################################################################

export FZF_DEFAULT_COMMAND='ag --nocolor --ignore node_modules -g ""'

############################################################################
# GIT
############################################################################

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"
