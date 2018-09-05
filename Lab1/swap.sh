#!/bin/bash


swap()
{
  local TMPFILE=tmp.$$
  cp "$1" $TMPFILE
  cp "$2" "$1"
  cp $TMPFILE "$2"
  rm $TMPFILE
}

if [ $# != 2 ]; then
  echo "Invalid number of arguments."
  exit
else
  if [[ -f "$1" && -f "$2" ]]; then
    if [[ -r "$1" && -r "$2" ]];
    then
      if [[ -w "$1" && -w "$2" ]];
      then
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




