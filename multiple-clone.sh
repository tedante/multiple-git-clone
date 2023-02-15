#!/bin/sh

batchName=$1
prefix=$2

function usage() {
  cat <<USAGE
    Missing some arguments
    Usage: $0 <org_name> <prefix_name>

    Example:
        <org_name>  : h8-fsjs-gitclass-p1-23
        <prefix>    : fsjs-p1-v1-c1
USAGE
  exit 1
}

# check if only 1 or none argument
if [ $# -eq 0 ] || [ $# -eq 1 ]; then
  usage
  exit 1
fi

for element in $(cat usernameList.txt)
do
  echo "clonning $element"
  git clone https://github.com/$batchName/$prefix-$element
done
