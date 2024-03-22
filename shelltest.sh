#!/bin/bash

RED="\e[31m"
GREEN="\e[32m"
PURPLE="\e[35m"
CYAN="\e[36m"
BLUE="\e[34m"
BOLDBLUE="\e[1;${GREEN}"
ITALICPURPLE="\e[3;${PURPLE}"
ENDCOLOR="\e[0m"

# echo -e "${RED}Red text${ENDCOLOR}"


echo -e "${BOLDBLUE}Choose an AI Model (e.g. wizardcoder)${ENDCOLOR}"
read AIMODEL
echo -e "${BOLDBLUE}What do you want to ask ?${ENDCOLOR}"
read PROMPT
echo -e "${BOLDBLUE}Give a title for this conversation${ENDCOLOR}"
read TITLE

echo "---------------"
echo "--- ${TITLE} ---"
echo -e "You asked ${ITALICPURPLE} ${AIMODEL} ${ENDCOLOR} to answer this:\n\"${CYAN}${PROMPT}${ENDCOLOR}\"."

