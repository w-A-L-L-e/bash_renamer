#!/bin/bash


function traverse_dir() {
    ls -1 "$1" | while read file;
    do
      path=${1}/${file}
      renamed_path=`echo ${path} | sed -e 's/ /_/g'` #replace space with _

      if [[ "$path" != "$renamed_path" ]]; then
        echo "found spaces in ${1}/${file} renaming to ${renamed_path}"
        mv "${path}" "${renamed_path}"
      else
        echo "skipping rename for ${renamed_path}"
      fi

      if [[ -d ${renamed_path} ]]; then
          traverse_dir "${renamed_path}"
      fi
    done
}

function main() {
    traverse_dir "$1"
}

if [[ $# != 1 ]]; then
  echo "USAGE: $0 <directory> : renames all files and directories with spaces to _"
  exit 1;
else
  main $1
fi

