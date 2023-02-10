# Environment Setup

This sets up a pretty good dev environment which focuses on the terminal. Using NeoVim / Tmux as the development workflow.

## Prerequisites

- Install Xcode and run `xcode-install`
- Install [homebrew](https://brew.sh)
  ```bash
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  brew doctor
  ```
- Install Git: `brew install git`
- Clone repo: `git clone git@github.com:trigun539/dotfiles.git`

## Terminal Tools

- Homebrew
- iTerm
- zsh
- Spectacle
- Vim
- NeoVim
- Tmux
  - Tmux-Powerline
- Base16 - shell
- Oh My ZSH
- Fira Code Nerd Font
- git

## General Tools

- Docker
- Karabiner-Elements
- Flux
- Spectacle
- VS Code

## Install Instructions

- Clone this repo
- Install `Fira Code Nerd Font` by dragging font files under `fonts/` to `Font Book`
- Run `cd scripts && sh install.sh`

# Last steps

- Run `brew bundle` to install all brew packages
- Open neovim by running: `nvim`:
  - Run `:Ex`
  - Navigate to `shared/nvim/lua/base/packer.lua` file
  - Run `:so` to source packer
  - Run `:PackerSync`.
- Configure `git` user
- Confgure `iTerm`

![](iterm-opts.png 'iTerm settings')

- Configure `Spectacle`

![](spectacle-settings.png 'Spectacle settings')

- Configure `git` repositories individually with user/email.

## Clean up

Run `sh script/clean.sh` to clean up and remove directories, repos, symlinks added.

## TODO:

- [] Set up key bindings for enabling spelling
