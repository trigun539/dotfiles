# Environment Setup

This sets up a pretty good dev environment which focuses on the terminal. Using NeoVim / Tmux as the development workflow.

## Prerequisites

- Install Xcode and run `xcode-install`


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
- Base16 Manager
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
- Run `sh install.sh`

# Last steps

- Run `brew bundle` to install all brew packages
- Install `base16-manager` themes
  ```bash
  base16-manager install chriskempson/base16-shell
  ```
- Open neovim by running: `nvim`:
  - Run `:PackerInstall`.
- Configure `git` user
- Copy/clone `ultisnips` snippets repository to `~/.vim/ultisnips` directory
- Confgure `iTerm`

![](iterm-opts.png 'iTerm settings')

- Configure `Spectacle`

![](spectacle-settings.png 'Spectacle settings')

- Configure `git` repositories individually with user/email.

## TODO:

- [] Set up key bindings for enabling spelling
