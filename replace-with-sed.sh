#!/bin/bash

BOLDBLUE="\e[1;${GREEN}"
ENDCOLOR="\e[0m"

echo -e "${BOLDBLUE} replaced $1 by $2 in $3, $3.ori saved."

sed -i.ori 's/'$1'/'$2'/g' $3
