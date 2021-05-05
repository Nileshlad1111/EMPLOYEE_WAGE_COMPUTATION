#!/bin/bash -x

#INITIAL VALUE TO ASSING PRESENT
isPresent=1

#TO VARIABLE
randomNumber=$((RANDOM%2))

#TO CHECK THE EMPLOYEE PRESENT AND ABSENT
if [ $randomNumber -eq 	$isPresent ]
then
	echo "Employee Present"
  	#TO FUNCTION PART TIME EMPLOYEE AND  WAGE
	function partTimeEmployeeAndWage(){
	read -p "Assume Wage per hour is :" isWagePerHour "rupees"
	read -p "To part time hour is :" isFullDayHour
	calculatePartTimeEmployeeWage=$(( $isWagePerHour * $isFullDayHour ))
	echo "To calculate part time employee and wage :" $calculatePartTimeEmployeeWage "rupees"
}
partTimeEmployeeAndWage
else
   echo "Employee Absent"
 fi
