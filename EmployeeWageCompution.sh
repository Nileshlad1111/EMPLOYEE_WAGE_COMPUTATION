#!/bin/bash -x

#INITIAL VALUE TO ASSING PRESENT
isPresent=1

#TO VARIABLE
randomNumber=$((RANDOM%2))
caseChoce=$randomNumber

read -p "To use case four case statement:"caseChoce

#TO CHECK THE EMPLOYEE PRESENT AND ABSENT
if [ $randomNumber -eq 	$isPresent ]
then
	echo "Employee Present"

#USING USE CASE STATEMENT
case "$caseChoce" in
	0) echo "To calculate Daily Employee Wage"

		#TO FUNCTION CALCULATE EMPLOYEE WAGE
		function calculateDailyEmployeeWae(){
		read -p "Assume Wage per hour is :" isWagePerHour "rupees"
		read -p "To full day hours is :" isFullDayHour
		calculateEmployeeWage=$(( $isWagePerHour * $isFullDayHour ))
		echo "To calculate daily employee wage :" $calculateEmployeeWage "rupees"
		}
		calculateDailyEmployeeWae
		;;

	1)echo "To calculate part time Employee and wage"

		#TO FUNCTION PART TIME EMPLOYEE WAGE
		function partTimeEmployeeAndWage(){
		read -p "Assume Wage per hour is :" isWagePerHour "rupees"
		read -p "To part time hour is :" isFullDayHour
		calculatePartTimeEmployeeWage=$(( $isWagePerHour * $isFullDayHour ))
		echo "To calculate part time employee and wage :" $calculatePartTimeEmployeeWage "rupees"
			}
		partTimeEmployeeAndWage
		;;
		*)echo "No choice"
		;;
esac

else
   echo "Employee Absent"
 fi
