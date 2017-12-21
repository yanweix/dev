#!/bin/bash

hg up master
for x in $(hg book | awk '{print $1}')
do
  hg book -D $x
done
