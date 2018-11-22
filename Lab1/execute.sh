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

for file in `find $LINK_OR_DIR -type f | sort`; do
  if [ -x "$file" ]; then
    #echo "about to execute $file"
    bash $file
 # else
  #  echo "file $file is not executable"
  fi
done;
