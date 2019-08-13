#!/bin/bash

c=$(command -v stow)

if [[ ! -a $c ]]
then
  echo "Stow needs to be installed" >&2
  exit 1
fi

for file in *; do
  if [[ -d $file ]]
  then
    stow -t $HOME $file
    echo "Linked $file"
  fi
done
