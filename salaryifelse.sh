#!/bin/bash -x

prttime=1;
fulltime=2;
checkemp=$(($RANDOM%3));
emprateperhrs=20;
if [ $prttime -eq $checkemp ];
then 
     echo "employee is present fulltime";
        workinghrs=8;
	salary=$(( $workinghrs * $emprateperhrs ));
	echo "$salary : salary of employee"
elif [ $fulltime -eq $checkemp ];
then
     echo "employee is present parttime";
        workinghrs=4;
	salary=$(( $workinghrs * $emprateperhrs ));
	echo "$salary : salary of employee"
else
     echo "employee is absent";
fi

