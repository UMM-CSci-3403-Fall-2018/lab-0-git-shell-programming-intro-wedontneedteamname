#!/bin/bash

DIR=$1

SCRATCH=$2

HERE=$(pwd)

tar -xvzf $DIR -C $SCRATCH

cd $SCRATCH

grep -rl "DELETE ME!" . | xargs rm

tar -cvf cleaned_little_dir.tgz little_dir/

mv cleaned_little_dir.tgz $HERE


