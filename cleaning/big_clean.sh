#! /bin/bash

NAME=$1
SCRATCH=$2
HERE=$(pwd)

mkdir $SCRATCH
tar -xzf $NAME -C $SCRATCH
cd $SCRATCH
grep -rl "DELETE ME!" | xargs rm

CLEANEDNAME="cleaned_$NAME"
CLEANEDSCRATCH=${1%.*}

tar -czf $CLEANEDNAME $CLEANEDSCRATCH
mv $CLEANEDNAME $HERE


