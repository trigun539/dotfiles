#!/bin/bash

source _utils.sh

# ------------------------------------------------------------------------------
e_pending "Install packages"
# ------------------------------------------------------------------------------

get_consent "Install packges"
if has_consent; then
  e_pending "Install packges"
  while read -r package; do 
    cmd="apt install -y ${package}"
    eval "$cmd"
  done < files/packages.txt
fi
