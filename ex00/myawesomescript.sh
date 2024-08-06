#!/bin/sh

if [ -z "$1" ]; then
  echo "Usage: $0 <bit.ly URL>"
  exit 1
fi

# Get the final URL after following redirections
final_url=$(curl -Ls -o /dev/null -w %{url_effective} "$1")

echo "$final_url" 

