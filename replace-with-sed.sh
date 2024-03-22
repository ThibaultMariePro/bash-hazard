#!/bin/bash

BOLDBLUE="\e[1;34m"
ITALICPURPLE="\e[3;35m"
ENDCOLOR="\e[0m"

echo -e "${BOLDBLUE}>Replaced:${ENDCOLOR} \"${ITALICPURPLE}$1${ENDCOLOR}\" ${BOLDBLUE}by${ENDCOLOR} \"${ITALICPURPLE}$2${ENDCOLOR}\" ${BOLDBLUE}in $3, $3.ori saved.${ENDCOLOR}"

sed -i.ori 's/'$1'/'$2'/g' $3
