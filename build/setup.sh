#!/bin/bash

echo "SETUP!"
cd ../..
git config --global user.email 'sidorares@yandex.com'
git config --global user.name 'Andrey Sidorov'

git clone "https://sidorares@github.com/sidorares/gitgit.git" gitgit-gh-pages
cd gitgit-gh-pages
git checkout origin/gh-pages
git checkout -b gh-pages
ls -l
git push --set-upstream origin gh-pages
cd ../gitgit/build
ls -l
