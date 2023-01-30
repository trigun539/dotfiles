#!/bin/bash

source _utils.sh

# ------------------------------------------------------------------------------
e_pending "Configuring node"
# ------------------------------------------------------------------------------

if !has_command "node"; then
  curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 

  if has_command "npm"; then
    sed 's/#.*//' files/npm-packages.txt | xargs npm install -g
  fi
fi

