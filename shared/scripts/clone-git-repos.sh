#!/bin/bash

source ~/dotfiles/shared/scripts/_utils.sh

# ------------------------------------------------------------------------------
e_pending "Cloning Git repos"
# ------------------------------------------------------------------------------

get_consent "Clone git repos"
if has_consent; then
  e_pending "Clone git repos"
  while read -r url dir; do 
    cmd="git clone ${url} ${dir}"
    eval "$cmd"
  done < ~/dotfiles/shared/files/repos.txt
fi
