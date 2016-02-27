#!/bin/bash
sudo -s
cd <project-folder> #replace with real project folder
git checkout master
git pull
# npm install # for any package changes
# gulp deploy # if gulp web server isn't running, replace this with any server as you please
