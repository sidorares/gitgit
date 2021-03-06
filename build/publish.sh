#!/bin/bash

cd "$(dirname "$0")"
cd ../../gitgit-gh-pages
ls -l
git checkout -- .
git clean -dfx
git fetch
git rebase
rm -Rf *
cd ../gitgit/build
ls -l
# generate code
./node_modules/.bin/marked ../index.md > ../../gitgit-gh-pages/index.html
ls -l ../..
# cd into repo
cd ../../gitgit-gh-pages
git add --all
git commit -m "update website" #maybe copy last commit message?

echo "AAAAAAAAAAAAAA"
ls -l ..
echo "==============="
ls -l ../..
echo "==============="
ls -l ../../..
echo "==============="

echo "git push -q $1" | ../gitgit/build/node_modules/.bin/cipherhub sidorares
echo "AAAAAAAAAAAAAA"

git push -q $1
cd ../gitgit/build
