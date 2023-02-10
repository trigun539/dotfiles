#!/bin/bash

source ~/dotfiles/shared/scripts/_utils.sh

# ------------------------------------------------------------------------------
e_pending "Configuring ruby"
# ------------------------------------------------------------------------------

get_consent "Install ruby 3.2.0"
if has_consent; then
  e_pending "Installing ruby 3.2.0"
  rbenv install 3.2.0
  rbenv global 3.2.0
fi

get_consent "Install ruby gems"
if has_consent; then
  e_pending "Install ruby gems"
  while read -r lib; do 
    cmd="gem install ${lib}"
    eval "$cmd"
  done < ~/dotfiles/shared/files/gems.txt
fi

