#!/bin/bash
date_stamp=$(date +"%Y_%m_%d_%H_%M_%S")
# echo $date_stamp
git add .
git commit -m "$date_stamp"
git push -u origin master
