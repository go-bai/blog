#!/bin/sh
git checkout master
rm -rf public/
hugo
git add .
git commit -m "deploy"
git push origin master