#!/bin/bash
for f in `find . -type f | grep -v .git | grep -v .DS_ | sed 's/^..//'`
do
  if [ -f /usr/bin/md5sum ]
  then
    echo "`md5sum $f | awk '{ print $1 }'`|$f"
  else  
    echo "`md5 -q $f`|$f"
  fi
done
