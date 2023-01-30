#!/bin/bash

source _utils.sh

# ------------------------------------------------------------------------------
e_pending "Generating Symlinks"
# ------------------------------------------------------------------------------

get_consent "Create symlinks"
if has_consent; then
  e_pending "Create symlinks"
  while read -r source link; do 
    cmd="ln -sf ${source} ${link}"
    eval "$cmd"
  done < files/symlinks.txt
fi
