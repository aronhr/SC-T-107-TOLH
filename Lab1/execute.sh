#!/bin/bash

run(){
  if [ -x "$LINK_OR_DIR" ]; then
    for f in *.sh; do  # or wget-*.sh instead of *.sh
      bash "$f" -H   || break # if needed
    done
  else
    echo "Something went wrong"
  fi
}
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
    run #Calls function run
  else
     echo "Directory does not exist"
     exit
  fi
fi
