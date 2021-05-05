#!/bin/bash -x

echo "------------------------- Welcome To Employee Wage Compution ------------------------"

#INITIAL VALUE TO ASSING PRESENT
isPresent=1

#TO VARIABLE
randomNumber=$((RANDOM%2))

#TO CHECK THE EMPLOYEE PRESENT AND ABSENT
if [ $randomNumber -eq 	$isPresent ]
then
	echo "Employee Present"
else
	echo "Employee Absent"
fi


#TO FUNCTION CALCULATE EMPLOYEE WAGE
function calculateDailyEmployeeWage(){
	read -p "Assume Wage per hour is :" isWagePerHour "rupees"
	read -p "To full day hours is :" isFullDayHour
	calculateEmployeeWage=$(( $isWagePerHour * $isFullDayHour ))
	echo "To calculate daily employee wage :" $calculateEmployeeWage "rupees"
}
calculateDailyEmployeeWage

