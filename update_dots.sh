#!/bin/bash

if [ "$#" -ne 1 ]
then
    echo "Usage: ./update_dots commitname"
    exit 1
fi
cd ~/dots
git add .
git commit -m "$1"
git push origin master
