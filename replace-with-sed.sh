#!/bin/bash

echo replaced $1 by $2 in $3, $3.ori saved

sed -i.ori 's/'$1'/'$2'/g' $3
