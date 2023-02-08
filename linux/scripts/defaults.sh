#!/bin/bash

source _utils.sh

get_consent "Install Homebrew"
if ! has_command "brew"; then
  e_pending "Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  brew doctor
  test_command "brew"
fi
