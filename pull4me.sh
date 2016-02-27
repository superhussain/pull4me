#!/bin/bash
read -p "Commit description: " desc
git checkout master
git add -A && \
git commit -am "$desc" && \
git push
ssh <user>@<host> 'bash -s' < ./pull4me-scripts.sh
# replace <user> and <host> with real stuff
