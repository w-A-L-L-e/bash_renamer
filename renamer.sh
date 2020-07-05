#!/bin/bash
# author: Walter Schreppers
# description: recursive bash script to rename all files and directories with spaces

function traverse_dir() {
    ls -1 "$1" | while read file;
    do
      path=${1}/${file}
      renamed_path=`echo ${path} | sed -e 's/ /_/g'` # replace _ with - or . or whatever you want as space replacement here

      if [[ "$path" != "$renamed_path" ]]; then
        echo -n "found spaces in ${path} renaming to ${renamed_path}... "
        mv "${path}" "${renamed_path}"
        echo "done"
      fi

      if [[ -d ${renamed_path} ]]; then
          traverse_dir "${renamed_path}"
      fi
    done
}

if [[ $# != 1 ]]; then
  echo "USAGE: $0 <directory> : renames all files and directories with spaces to _"
  exit 1;
else
  traverse_dir $1
fi

