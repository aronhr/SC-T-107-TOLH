#!/bin/bash

if [ $# != 2 ]; then
  echo "Invalid number of arguments."
  exit
fi

if [[ -f "$1" && -f "$2" ]]; then
  echo "Both files exist"
else
   echo "One or both of the files do not exist"
   exit
fi

if [[ -r "$1" && -r "$2" ]];
then
  echo "Both files are readable"
else
  echo "One or both of the files are not readable"
  exit
fi

if [[ -w "$1" && -w "$2" ]];
then
  echo "Both files are writable"
else
  echo "One or both of the files are not writeable"
  exit
fi
