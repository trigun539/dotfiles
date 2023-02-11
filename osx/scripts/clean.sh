#!/bin/bash

source ~/dotfiles/shared/scripts/_utils.sh

# ------------------------------------------------------------------------------
e_pending "Cleaning OSX"
# ------------------------------------------------------------------------------

get_consent "Remove OSX symlinks"
if has_consent; then
  e_pending "Removing OSX symlinks"
  while read -r source link; do 
    cmd="rm ${link}"
    eval "$cmd"
  done < ~/dotfiles/osx/files/symlinks.txt
fi
