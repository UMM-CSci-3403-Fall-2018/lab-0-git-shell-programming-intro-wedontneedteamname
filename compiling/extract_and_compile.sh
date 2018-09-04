#!/bin/bash

tar -C $2 -xf NthPrime.tgz

cd $2/NthPrime

gcc -o NthPrime main.c nth_prime.c

./NthPrime $1


