#!/bin/bash

git add .
git cm -m 'commit for deploy'

git push origin master
ssh smurakami.com "cd /var/www/apps/whiteday/; git pull origin master"
# scp -r . smurakami.com:/var/www/apps/whiteday
