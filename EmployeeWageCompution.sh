#!/bin/bash -x

#INITIAL VALUE TO ASSING PRESENT
isPresent=1


#TO VARIABLE
randomNumber=$((RANDOM%2))
echo "Choice"
read -p "To use case five case statement and case choice zero is Daily employee wage and case choice one is parttime employee wage:" caseChoice
#TO CHECK THE EMPLOYEE PRESENT AND ABSENT
if [ $randomNumber -eq 	$isPresent ]
then
	echo "Employee Present"

#using use case statement
case "$caseChoice" in
	0) echo "To calculate Daily Employee Wage"

		#TO FUNCTION CALCULATE EMPLOYEE WAGE
		function calculateDailyEmployeeWageWorkHours(){
		read -p "Assume Wage per hour is :" isWagePerHour "rupees"
		isDayHour=8

		#TO ONE DAY WORKING EMPLOYEE WAGE
		calculateEmployeeWageForOneDay=$(( $isWagePerHour * $isDayHour ))
		read -p "working days :" isDay
		#TO MONTH DAY WORKING EMPLOYEE WAGE
		calculateEmployeeWageForMonth=$(( $calculateEmployeeWageForOneDay  *  $isDay ))
		echo "To calculate employee wages for a Month :" $calculateEmployeeWageForMonth "rupees"
		}
		#TO FUNCTION CALL
		calculateDailyEmployeeWageWorkHours
		;;
	1)echo "To calculate part time Employee and wage"

		#TO FUNCTION CALCULATE PART TIME EMPLOYEE WAGE
		function partTimeEmployeeAndWageWorkHours(){
		read -p "Assume Wage per hour is :" isWagePerHour "rupees"
		isDayHour=8

		#TO ONE DAY WORKING EMPLOYEE WAGE
		calculateEmployeeWageForOneDay=$(( $isWagePerHour * $isDayHour ))
		read -p "TO part time working days :" isDay

		#TO MONTH DAY WORKING EMPLOYEE WAGE
		calculateEmployeeWageForMonth=$(( $calculateEmployeeWageForOneDay * $isDay ))
		echo "To calculate employee part time wages for a Month :" $calculateEmployeeWageForMonth "rupees"
		}
		partTimeEmployeeAndWageWorkHours
		;;
		*)echo "No choice."
		;;
esac

else
   echo "Employee Absent."
 fi
