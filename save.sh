#!/bin/bash
# definir variables para fecha y tiempo
date_stamp=$(date +"%Y_%m_%d_%H_%M_%S")
# echo $date_stamp
echo "git add."
git add .
echo "git commit -m $date_stamp"
git commit -m "$date_stamp"
echo "git push -u origin master"
git push -u origin master
