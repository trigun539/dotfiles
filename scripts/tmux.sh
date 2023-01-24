# ------------------------------------------------------------------------------
e_pending "Setting up TMUX"
# ------------------------------------------------------------------------------

mkdir -p ~/.tmux/plugins

if has_command "zsh"; then
  if ! has_path ".tmux/plugins/tpm"; then
    get_consent "Install tpm"
    if has_consent; then
      e_pending "Installing tpm"
      git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
      test_path ".tmux/plugins/tpm"
    fi
  fi
fi
