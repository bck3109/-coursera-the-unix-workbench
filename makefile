#!/usr/bin/env bash
touch README.md
echo "Project Title: Peer-graded Assignment: Bash, Make, Git, and GitHub" > README.md
echo "Date make ran at:" >> README.md
date >> README.md
echo "Number of lines file guessinggame.sh contains:" >> README.md
cat guessinggame.sh | wc -l >> README.md
