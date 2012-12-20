#!/bin/bash
for f in `find . -type f | grep -v .git | grep -v .DS_ | sed 's/^..//'`
do
  echo "`md5 -q $f`|$f"
done
