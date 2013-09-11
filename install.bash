#!/bin/bash

sandboxDir="$(dirname $0)"
if [ ! -d "${sandboxDir}" ] ; then
   echo >&2 "error: cannot find sandbox with dotfiles"
   exit 1
fi

echo $PWD/${sandboxDir}
exit 0

files="
   vimrc
   bash_aliases"

for file in ${files} ; do
   if [ -f ~/."${file}" ] ; then
      echo "renaming existing ${file}"
      mv ~/."${file}" ~/."${file}".old
   fi
   echo "creating symlink to ${file} in home directory"
   ln -s "${sandboxDir}/${file}" ~/."${file}"
done

exit 0
