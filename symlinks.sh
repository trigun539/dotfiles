#!/bin/bash

source _utils.sh

# ------------------------------------------------------------------------------
e_pending "Generating Symlinks"
# ------------------------------------------------------------------------------

get_consent "Create symlinks"
if has_consent; then
  e_pending "Create symlinks"
  while read F  ; do
    eval $F
  done <symlinks.txt
fi
