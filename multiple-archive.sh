#!/bin/sh

# Fill the github organization
github_organization=

for repo in $(ls -d */)
do
  full_path="$github_organization/${repo%?}"
  echo "Archiving $full_path"
  gh repo archive -y "$full_path"
done
