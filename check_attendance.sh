#!/bin/bash

randNo=$((RANDOM%3))
attendance=0
for (( i=1; i<=20; i++ ))
do
	read n
	if [ $randNo -eq $n ]
	then
		echo "Employee is present"
		attendance=$((attendance + 1))
	else
		echo "Employee is absent"
	fi
done
echo "$attendance"
