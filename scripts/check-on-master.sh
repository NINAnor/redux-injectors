#!/bin/sh

# Check to make sure we are on the nina branch
# See: https://stackoverflow.com/a/34658774/3006989
current_branch=$(git branch | grep '*');

if [ "$current_branch" != "* (HEAD detached at origin/nina)" -a "$current_branch" != "* nina" ]; then
    echo "Not on nina - cannot proceed, please change to nina by using:\n\n     git checkout nina\n"
    exit 1
fi
