#!/bin/sh

# default: list all folders from current directory
WORKDIR=*/

# check if there's an argument
if [ $# -eq 1 ]; then
  # add custom directory (optional)
  DIR=$1
  WORKDIR=$DIR*/
fi

for element in $(ls -d $WORKDIR); do
  echo "pulling $element"
  cd $element && git pull
  cd ..
done
