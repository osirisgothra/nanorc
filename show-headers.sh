#!/bin/bash -r
for i in `cat ~/.nanorc | grep '^\s*include' | grep -Po '(\w|\.|\-)*$'`; do echo -ne "$i:"; cat "$i" | grep ^syntax | sed 's/syntax/\x1b[30G\0/g'; done
