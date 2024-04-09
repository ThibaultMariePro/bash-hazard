#!/bin/bash

# change the path of Music File as needed.
MUSICFILE="Music/sounds/soundeffect_wow_fairy_tales.mp3"

HLB="\e[1;3;35;40m"
HLR="\e[1;31m"
HELP="\e[1;32m"
EOC="\e[0m"

Min="0"
Sec="0"

Help()
{
	echo -e "${HELP} ===󱤣=== TIMER WITH SOUND ===󱤣=== ${EOC} \n--
 h	Print this Help.\n s	seconds to be counted\n m 	minutes to be counted\n--\nexemple :\n timer -m 15 -s 30\nwill start a timer oh 15 minutes and 30 seconds ${EOC}\n--\n${HELP}WARNING: for this script to work properly you might need to change the path to your MUSICFILE in it!${EOC} " 
}

Timer()
{
 	if [ $Min -eq 0 ] && [ $Sec -eq 0 ]
	then
		echo -e "${HLB}Timer for what duration (s) ?: ${EOC}"
		read DURATION
	else
		DURATION=$(($Min*60+$Sec))
		echo "> $Min minutes $Sec seconds"
	fi
	
	for i in $(seq ${DURATION} -1 1); 
	do 
		sleep 1
		if [ ${i} -lt  10 ]
		then
			echo -e "${HLR}󱫌  ${i} !${EOC}"
		else
			tput cuu1 # move cursor up by one line
			tput el # clear the line
			echo "󱫌  ${i}"
		fi
	done
	echo -e "${HLB}󰀨 TIME's OVER 󰀨${EOC}"
	paplay $MUSICFILE

}

###########
# OPTIONS #
###########

while getopts ":hm:s:" option; do
	case $option in
		h) # display help
			Help
			exit;;
		m) # add minutes to count
			Min=$OPTARG;;
		s) # add seconds to count
			Sec=$OPTARG;;
		\?) # invalid options
			echo "Error: Invalid ption"
			exit;;
	esac
done

Timer

##########
# AUTHOR #
##########
# TIBO, Skeggang => thibault.marie.pro@gmail.com
# from ECPGPP org
#
# keep calm till the end or the warming world.
