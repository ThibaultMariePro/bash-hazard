#!/bin/bash

ARRAY=(one two three four)

echo $ARRAY

echo "---"

echo ${ARRAY[@]}

echo "---"

for item in ${ARRAY[@]}; do echo "$item";done

