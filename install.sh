#!/bin/bash

source ~/dotfiles/shared/scripts/install.sh

if [ "$(uname)" == "Darwin" ]; then
  source ~/dotfiles/osx/scripts/install.sh
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  source ~/dotfiles/linux/scripts/install.sh
fi
