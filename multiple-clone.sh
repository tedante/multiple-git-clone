#!/bin/sh

prefix=$(cat prefix.txt)

batchName=$(cat organization.txt)

for element in $(cat usernameList.txt)
do
  echo "clonning $element"
  git clone https://github.com/$batchName/$prefix-$element
done
