#!/bin/bash

if [ "$#" -lt 1 ]
then
    echo "Usage: ./update_dots commitname"
    exit 1
fi
cd ~/dots
git add .
git commit -m "'$*'"
git push origin master
