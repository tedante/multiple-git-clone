#!/bin/sh

# Fill the github_organization
github_organization=

# Check if github_organization is empty
if [ -z "$github_organization" ]; then
  echo "❌ Error: github_organization variable is empty. Please provide a GitHub organization."
  exit 1
fi

for repo in $(ls -d */)
do
  full_path="$github_organization/${repo%?}"
  echo "⏳ Archiving $full_path"
  gh repo archive -y "$full_path"
done
