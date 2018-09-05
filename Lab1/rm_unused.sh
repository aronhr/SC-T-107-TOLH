#!/bin/bash

if [ $# -gt 1 ]; then
  echo "Invalid number of arguments"
  exit
else
  if [ $# -eq 0 ]; then
    LINK_OR_DIR="."
  else
    LINK_OR_DIR="$1"
  fi
  if [[ -d "$LINK_OR_DIR" ]]; then #Check if file exist
  find "$LINK_OR_DIR" -type f -name '*' -mtime +365 -exec rm {} \;
else
     echo "Directory does not exist"
     exit
  fi
fi
