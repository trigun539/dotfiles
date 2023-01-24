# ------------------------------------------------------------------------------
e_pending "Cloning ZSH plugins"
# ------------------------------------------------------------------------------

mkdir -p ~/.oh-my-zsh/custom/plugins

if has_command "zsh"; then
  if ! has_path ".oh-my-zsh/custom/plugins/zsh-autosuggestions"; then
    get_consent "Install zsh-autosuggestions"
    if has_consent; then
      e_pending "Installing zsh-autosuggestions"
      git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
      test_path ".oh-my-zsh/custom/plugins/zsh-autosuggestions"
    fi
  fi
fi

if has_command "zsh"; then
  if ! has_path ".oh-my-zsh/custom/plugins/zsh-syntax-highlighting"; then
    get_consent "Install zsh-syntax-highlighting"
    if has_consent; then
      e_pending "Install zsh-syntax-highlighting"
      git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
      test_path ".oh-my-zsh/custom/plugins/zsh-syntax-highlighting"
    fi
  fi
fi

