#!/bin/bash

source ~/dotfiles/shared/scripts/_utils.sh

# ------------------------------------------------------------------------------
e_pending "Installing OSX homebrew modules"
# ------------------------------------------------------------------------------

if has_command "brew"; then
  get_consent "Install brew packages"
  if has_consent; then
    e_pending "Install brew packages"
    brew bundle --file=~/dotfiles/osx/configs/Brewfile
  fi
fi
