#!/bin/bash

source ~/dotfiles/shared/scripts/_utils.sh

# ------------------------------------------------------------------------------
e_pending "Generating Symlinks"
# ------------------------------------------------------------------------------

get_consent "Create symlinks"
if has_consent; then
  e_pending "Create symlinks"
  while read -r source link; do 
    cmd="ln -sf ${source} ${link}"
    eval "$cmd"
  done < ~/dotfiles/shared/files/symlinks.txt
fi
