#!/bin/bash -x

checkDetails()
{
read -p "Enter First Name " firstname

pattern="^[A-Z][a-z]{2,}$"

if [[ $firstname =~ $pattern ]]
then
	echo Valid
else
	echo Invalid
fi
}
checkDetails
