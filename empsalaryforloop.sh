#!/bin/bash -x

part_time=1;
full_time=2;
absent=0;
empRatePerHr=20;
numOfWorkingDays=20;

for (( day=1 ; day<=$numOfWorkingDays ; day++ ))
do
        checkemp=$(($RANDOM % 3));
        case $checkemp in
        $part_time)
        empHrs=4;
        ;;
        $full_time)
        empHrs=8;
        ;;
        $absent)
        empHrs=0;
        ;;
        esac

        salary=$(($empRatePerHr*$empHrs));
        totalsalary=$(($totalsalary+$salary));
        echo "day = $day" "$empHrs salary = $totalsalary";
done
