#!/bin/bash

source ~/dotfiles/shared/scripts/_utils.sh

# ------------------------------------------------------------------------------
e_pending "Python libs"
# ------------------------------------------------------------------------------

get_consent "Install python libs"
if has_consent; then
  e_pending "Install python libs"
  while read -r lib; do 
    cmd="pip3 install --user --upgrade ${lib}"
    eval "$cmd"
  done < ~/dotfiles/shared/files/python-libs.txt
fi
