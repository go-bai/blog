#!/bin/sh
git checkout master
rm -rf public/
git add .
git commit -m "deploy"
git push origin master