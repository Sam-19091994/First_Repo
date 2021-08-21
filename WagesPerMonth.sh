#!/bin/bash

Full_Time=1
Part_Time=2
Wage_per_hr=20
Working_days_per_Month=20
salary=0

for (( days=1; days<=$Working_days_per_Month; days++ ))
do
   Empl_check=$((RANDOM%3));
   if [ $Empl_check -eq $Full_Time ]
   then
      emphrs=8
   elif [ $Empl_check -eq $Part_Time ]
   then
      emphrs=4
   else
      emphrs=0
   fi

   Emp_Wages=$(( $emphrs * $Wage_per_hr ))
   salary=$(($salary + $Emp_Wages))
done
echo "Employees Salary Per Month: $salary"
