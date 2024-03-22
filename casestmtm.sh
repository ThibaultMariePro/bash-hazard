#!/bin/bash

case ${1,,} in
	yes | y | 1 | true)
		echo "PASSED"
		;;
	no | n | 0 | false)
		echo "FAULTY"
		;;
	*)
		echo "TODO:TEST"
		;;
esac
