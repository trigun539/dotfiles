#!/bin/bash

source _utils.sh

# ------------------------------------------------------------------------------
e_pending "Cleaning"
# ------------------------------------------------------------------------------

get_consent "Remove symlinks"
if has_consent; then
  e_pending "Removing symlinks"
  while read -r source link; do 
    cmd="rm ${link}"
    eval "$cmd"
  done < files/symlinks.txt
fi

get_consent "Remove directories"
if has_consent; then
  e_pending "Remove directories"
  while read -r dirLoc; do 
    cmd="rm -rf ${dirLoc}"
    eval "$cmd"
  done < files/directories.txt
fi

get_consent "Remove Git repos"
if has_consent; then
  e_pending "Remove Git repos"
  while read -r url dirLoc; do 
    cmd="rm -rf ${dirLoc}"
    eval "$cmd"
  done < files/repos.txt
fi

# TODO: Clean up plugins installed by packer, tmp, oh-my-zsh
