#!/bin/bash

# This is a simple Bash script
echo "Hello, this is my first shell script!"
echo "Current date is: $(date)"

# set git env

eval "$(ssh-agent -s)"
chmod 600 ~/.ssh/xiong_rsa
ssh-add ~/.ssh/xiong_rsa

echo "test github"
ssh -T git@github.com
#git clone git@github.com:linxiong2024/stocks.git
git add .
git commit -m 'update'
git push 