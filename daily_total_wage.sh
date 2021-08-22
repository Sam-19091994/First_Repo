#!/bin/bash

Full_Time=1
Part_Time=2
Wage_per_hr=20
Working_days=20
salary=0
Total_hrs=0

for (( days=emphrs=1; days<=$Working_days && emphrs<=100; days++,emphrs++ ))
do
   Empl_check=$((RANDOM%3));
   if [ $Empl_check -eq $Full_Time ]
   then
      emphrs=8
		echo "Wage for today is : $((emphrs*Wage_per_hr))"
   elif [ $Empl_check -eq $Part_Time ]
   then
      emphrs=4
		echo "Wage for today is : $((emphrs*Wage_per_hr))"
   else
      emphrs=0
		echo "Wage for today is : $((emphrs*Wage_per_hr))"
   fi

   Emp_Wages=$(( $emphrs * $Wage_per_hr ))
   salary=$(($salary + $Emp_Wages))
done
echo "Employees Salary: $salary"
