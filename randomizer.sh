#!/bin/bash
#robin-tab-feb-2019

folder=/path/to/output/folder
random_string() {
  echo "$(date +%s%N)$RANDOM" | awk '{print $1}'
}

find /path/to/target/folder/filetype* -type d | while read DIR; do
  mv "$DIR" "$folder/$(random_string)"
done
