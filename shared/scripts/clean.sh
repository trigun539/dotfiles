#!/bin/bash

source ~/dotfiles/shared/scripts/_utils.sh

# ------------------------------------------------------------------------------
e_pending "Cleaning"
# ------------------------------------------------------------------------------

get_consent "Remove symlinks"
if has_consent; then
  e_pending "Removing symlinks"
  while read -r source link; do 
    cmd="rm ${link}"
    eval "$cmd"
  done < ~/dotfiles/shared/files/symlinks.txt
fi

get_consent "Remove directories"
if has_consent; then
  e_pending "Remove directories"
  while read -r dirLoc; do 
    cmd="rm -rf ${dirLoc}"
    eval "$cmd"
  done < ~/dotfiles/shared/files/directories.txt
fi

get_consent "Remove Git repos"
if has_consent; then
  e_pending "Remove Git repos"
  while read -r url dirLoc; do 
    cmd="rm -rf ${dirLoc}"
    eval "$cmd"
  done < ~/dotfiles/shared/files/repos.txt
fi

get_consent "Remove Packer Plugins, Cache"
if has_consent; then
  e_pending "Removing Packer Plugins, Cache"
  rm -rf ~/.local/share/nvim
fi
