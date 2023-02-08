#!/bin/bash

source _utils.sh

# ------------------------------------------------------------------------------
e_pending "Installing homebrew modules"
# ------------------------------------------------------------------------------

if has_command "brew"; then
  get_consent "Install brew packages"
  if has_consent; then
    e_pending "Install brew packages"
    brew bundle --file=~/dotfiles/configs/Brewfile
  fi
fi

# ------------------------------------------------------------------------------
e_pending "Installing special tools"
# ------------------------------------------------------------------------------

if has_command "zsh"; then
  if ! has_path ".oh-my-zsh"; then
    get_consent "Install oh-my-zsh"
    if has_consent; then
      e_pending "Installing oh-my-zsh"
      sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
      test_path ".oh-my-zsh"
    fi
  fi
fi

# ------------------------------------------------------------------------------
e_pending "Installing nvm"
# ------------------------------------------------------------------------------

if has_command "nvm"; then
  get_consent "Install node LTS"
  if has_consent; then
    e_pending "Install node LTS"
    nvm install --lts
  fi
fi
