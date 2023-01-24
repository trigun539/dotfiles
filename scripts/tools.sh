#!/bin/bash

source _utils.sh

# ------------------------------------------------------------------------------
e_pending "Installing tools"
# ------------------------------------------------------------------------------

if has_command "brew"; then
  brew bundle
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
e_pending "Installing node LTS"
# ------------------------------------------------------------------------------

nvm install --lts

if has_command "zsh"; then
  if ! has_path ".config/tmux-powerline"; then
    get_consent "Install tmux-powerline"
    if has_consent; then
      e_pending "Install tmux-powerline"
      git clone https://github.com/erikw/tmux-powerline.git ~/.config/tmux-powerline
      test_path ".config/tmux-powerline"
    fi
  fi
fi


if has_command "zsh"; then
  if ! has_path ".config/base16-shell"; then
    get_consent "Install base16-shell"
    if has_consent; then
      e_pending "Install base16-shell"
      git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
      test_path ".config/base16-shell"
    fi
  fi
fi

# ------------------------------------------------------------------------------
e_pending "Python libs"
# ------------------------------------------------------------------------------

python3 -m pip install --user --upgrade pynvim
python2 -m pip install --user --upgrade pynvim

# ------------------------------------------------------------------------------
# e_pending "Gem libs"
# ------------------------------------------------------------------------------

# gem install neovim

# ------------------------------------------------------------------------------
# e_pending "Git config"
# ------------------------------------------------------------------------------

# git config --global core.pager "less -FRX"
# git config --global push.default current
