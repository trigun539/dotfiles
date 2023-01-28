#!/bin/bash

source _utils.sh

# ------------------------------------------------------------------------------
e_pending "Global NPM Packages"
# ------------------------------------------------------------------------------

if has_command "npm"; then
  sed 's/#.*//' files/npm-packages.txt | xargs npm install -g
fi