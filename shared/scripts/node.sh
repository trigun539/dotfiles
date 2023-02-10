#!/bin/bash

source ~/dotfiles/shared/scripts/_utils.sh

# ------------------------------------------------------------------------------
e_pending "Installing nvm"
# ------------------------------------------------------------------------------

if has_command "nvm"; then
  get_consent "Install node LTS"
  if has_consent; then
    e_pending "Install node LTS"
    nvm install --lts
    nvm use --lts
  fi
fi

# ------------------------------------------------------------------------------
e_pending "Global NPM Packages"
# ------------------------------------------------------------------------------

get_consent "Install global npm packages"
if has_consent; then
  e_pending "Install global npm packages"
  if has_command "npm"; then
    sed 's/#.*//' ~/dotfiles/shared/files/npm-packages.txt | xargs npm install -g
  fi
fi