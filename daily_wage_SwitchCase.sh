#!/bin/bash

Full_Time=1
Part_Time=2
Wage_per_hr=20
Working_days=22
salary=0

for (( days=1; days<=$Working_days; days++ ))
do
   Empl_check=$((RANDOM%3));
   case $Empl_check in
		$Full_Time)
      	emphrs=8
			;;
   	$Part_Time)
			emphrs=4
			;;
   	*)
      	emphrs=0
   esac

   Emp_Wages=$(( $emphrs * $Wage_per_hr ))
   salary=$(($salary + $Emp_Wages))
done
echo "Employees Salary: $salary"
