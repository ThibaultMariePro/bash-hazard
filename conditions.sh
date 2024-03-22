#!/bin/bash

if [ ${1,,} = boss ]; then
	echo "Oh, hey boss"
elif [ ${1,,} = help ]; then
	echo "enter uname"
else 
	echo "I don't know who u are"
fi

