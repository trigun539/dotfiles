#!/bin/bash

source ~/dotfiles/shared/scripts/clean.sh

if [ "$(uname)" == "Darwin" ]; then
  source ~/dotfiles/osx/scripts/clean.sh
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  source ~/dotfiles/linux/scripts/clean.sh
fi
