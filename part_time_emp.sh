#!/bin/bash -x

Fulltime=1
Parttime=2
empchk=$((RANDOM%3))
WagePrHr=20

if [ $empchk -eq $Fulltime ]
then
	emphrs=8
	echo "Employee is Full Time"
	echo "Wage Per Day = $(($emphrs*$WagePrHr))"
elif [ $empchk -eq $Parttime ]
then
	emphrs=4
	echo "Employee is Part Time"
	echo "Wage Per Day = $(($emphrs*$WagePrHr))"
else
	emphrs=0
	echo "Employee Absent"
	echo "Wage Per Day = 0"
fi
