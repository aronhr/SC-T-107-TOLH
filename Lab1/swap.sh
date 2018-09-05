#!/bin/bash
swap()
{
  local TMPFILE=tmp.$$
  mv "$1" $TMPFILE
  mv "$2" "$1"
  mv $TMPFILE "$2"
}

if [ $# != 2 ]; then
  echo "Invalid number of arguments."
  exit
else
  if [[ -f "$1" && -f "$2" ]]; then
    echo "Both files exist"
    if [[ -r "$1" && -r "$2" ]];
    then
      echo "Both files are readable"
      if [[ -w "$1" && -w "$2" ]];
      then
        echo "Both files are writable"
        swap "$1" "$2"
      else
        echo "One or both of the files are not writeable"
        exit
      fi
    else
      echo "One or both of the files are not readable"
      exit
    fi
  else
     echo "One or both of the files do not exist"
     exit
  fi
fi