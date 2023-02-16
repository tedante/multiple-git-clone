#!/bin/sh

for element in $(ls -d */)
do
  echo "Archiving $element..."
  cd $element && gh repo archive -y
  cd ..
done
