#!/bin/sh

for element in $(ls -d */)
do
  echo "pulling $element"
  cd $element && git pull
  cd ..
done
