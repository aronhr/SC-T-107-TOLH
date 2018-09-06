#!/bin/bash
if [ $# -gt 1 ]; then
  echo "Invalid number of arguments"
  exit
fi

if [ $# -eq 0 ]; then
  LINK_OR_DIR="."
else
  LINK_OR_DIR="$1"
fi

if [ -d "$LINK_OR_DIR" ]; then
  if [ -L "$LINK_OR_DIR" ]; then
    echo "The directory provided is a symlink"
  else
    echo "The directory provided is a solid directory!"
  fi
else
  echo "The provided argument is not a directory"
  exit
fi

ls -h "$LINK_OR_DIR" | sort -t0 -k2
