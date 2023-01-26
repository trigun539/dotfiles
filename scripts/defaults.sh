#!/bin/bash

source _utils.sh

# ------------------------------------------------------------------------------
e_pending "Creating defaults"
# ------------------------------------------------------------------------------

get_consent "Autohide Dock"
if has_consent; then
  e_pending "Autohiding Dock"
  defaults write com.apple.dock autohide -boolean true
  killall Dock
fi

get_consent "Display hidden Finder files/folders"
if has_consent; then
  e_pending "Displaying hidden Finder files/folders"
  defaults write com.apple.finder AppleShowAllFiles -boolean true
  killall Finder
fi

get_consent "Increase key repeat"
if has_consent; then
  e_pending "Inceasing key repeat"
  defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
  defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)
  defaults write -g ApplePressAndHoldEnabled -bool false # Disable press and hold
fi

get_consent "Re-sort Launchpad applications"
if has_consent; then
  e_pending "Re-sorting Launchpad applications"
  defaults write com.apple.dock ResetLaunchPad -boolean true
  killall Dock
fi

get_consent "Install Xcode tools"
if has_command "xcode-select"; then
  e_pending "Installing xcode-select (CLI tools)"
  xcode-select --install
  test_command "xcode-select"
fi

get_consent "Install Homebrew"
if ! has_command "brew"; then
  e_pending "Installing brew (Homebrew)"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  brew doctor
  test_command "brew"
fi
