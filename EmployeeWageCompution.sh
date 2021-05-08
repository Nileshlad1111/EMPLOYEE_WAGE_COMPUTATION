#!/bin/bash -x


#CONSTANT
WAGE_PER_HOUR=20
IS_FULL_TIME=2
IS_PART_TIME=1
EMPLOYEE_HOUR_FULLTIME=8
EMPLOYEE_HOUR_PARTTIME=4

# USER INPUTE
read -p "To number of working days :" NUMBER_OF_WORKING_DAYS
read -p "To number of working hour :" NUMBER_OF_WORKING_HOURS

#VARIABLE
totalSalary=0
totalEmployeeHours=0
totalWorkingDays=0

#TO FUNCTION TO GET WORK HOURS
function getWorkHours()
{
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
	echo $employeeHour
}

#FUNCTION TO CALCULATE WAGE
function calculateWage()
{
	employeeHour=$1
	wage=$(($employeeHour*$WAGE_PER_HOUR))
	echo $wage
}

#GET WORK HOUR FROM FUNCTION AND CALCULATE DAILY WAGE TILL CONDITION SATISFIED
while [[ $totalEmployeeHours -lt $NUMBER_OF_WORKING_HOURS && $totalWorkingDays -lt $NUMBER_OF_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	dailyWage[totalWorkingDays]=$(calculateWage $(getWorkHours))
	totalEmployeeHours=$(($totalEmployeeHours + $(getWorkHours)))
done

#TO PRINT AND STORE WAGES FOR A MONTH
totalWageOfMonth=$(($(calculateWage $totalEmployeeHours)))
echo "Total wage :"$totaleWageOfMonth
echo "Daily wages: ${dailyWage[@]}"
echo "Day:${!dailyWage[@]}"
