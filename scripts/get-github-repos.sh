#!/bin/bash
user=$1
if [[ -n "$user" ]]; then
    curl https://api.github.com/users/${user}/repos
else
  echo "error: need username argument"
fi
