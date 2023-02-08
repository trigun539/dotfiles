#!/bin/bash

source _utils.sh

# ------------------------------------------------------------------------------
e_pending "Generating Directories"
# ------------------------------------------------------------------------------

get_consent "Create directories"
if has_consent; then
  e_pending "Create directories"
  while read -r dirLoc; do 
    cmd="mkdir -p ${dirLoc}"
    eval "$cmd"
  done < files/directories.txt
fi
