#!/bin/bash

if [ $# -ne 2 ]
then
    echo "Usage: ./update_dots commitname"
cd ~/dots
git add .
git commit -m "$1"
git push origin master
