#!/bin/bash -x

#CONSTANT
WAGE_PER_HOUR=20
IS_FULL_TIME=2
IS_PART_TIME=1
EMPLOYEE_HOUR_FULLTIME=8
EMPLOYEE_HOUR_PARTTIME=4

#GIVEN WORKING OF DAY AND HOURSE
read -p "To number of working day :" NUMBER_OF_WORKING_DAYS
read -p "To number of working hours :" NUMBER_OF_WORKING_HOURS

#VARIABLE
totalSalary=0
totalEmployeeHours=0
totalWorkingDays=0

#CALCULATE DAILY WAGE TILL CONDITION SATISFIED
while [[ $totalEmployeeHours -le $NUMBER_OF_WORKING_HOURS &&
			$totalWorkingDays -le $NUMBER_OF_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	randomShiftCheck=$((RANDOM%3))
	case $randomShiftCheck in

		$IS_FULL_TIME )
			employeeHour=$((EMPLOYEE_HOUR_FULLTIME))
			;;
		$IS_PART_TIME )
			employeeHour=$((EMPLOYEE_HOUR_PARTTIME))
			;;
		* )
			employeeHour=0
			;;
	esac
	totalEmployeeHours=$(($totalEmployeeHours + $employeeHour))
	echo "To total employee hours :" $totalEmployeeHours	
done

#PRINT SALARY FOR A MONTH
totalWorkingWage=$(($totalEmployeeHours * $WAGE_PER_HOUR))
