#!/bin/bash

trash(){
 [ ! -d ~/Trash ] && mkdir ~/Trash ]
 mv "$1" ~/Trash
}
if [ $# != 1 ]; then
  echo "Invalid number of arguments"
  exit
else
  if [[ -f "$1" ]]; then #Check if file exist
    if [[ -w "$1" ]]; then #Check if file is writeable
      trash "$1"
    else
      echo "The file is not writeable"
      exit
    fi
  else
     echo "The file does not exist"
     exit
  fi
fi
