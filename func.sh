#!/bin/bash

up="--"
since="--"

echo $up$since
showuptime(){
	local up=$(uptime -p | cut -c4- )
	local since=$(uptime -s)
	cat << EOF
----
This machine has been up for ${up}
This machine has been running since ${since}
----
EOF
}
echo $up$since
showuptime
