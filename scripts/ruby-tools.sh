#!/bin/bash

source _utils.sh

# ------------------------------------------------------------------------------
e_pending "Ruby gems"
# ------------------------------------------------------------------------------

get_consent "Install ruby gems"
if has_consent; then
  e_pending "Install ruby gems"
  while read -r lib; do 
    cmd="gem install ${lib}"
    eval "$cmd"
  done < files/gems.txt
fi
