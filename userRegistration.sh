#!/bin/bash -x
shopt -s extglob

read -p "Enter First Name " firstname
read -p "Enter Last Name " lastname
read -p "Enter Email-id " email

namePattern="^[A-Z][a-z]{2,}$"
emailPattern="^[a-z0-9!#\$%&'*+/=?^_\`{|}~-]+(\.[a-z0-9!#$%&'*+/=?^_\`{|}~-]+)*@([a-z0-9]([a-z0-9-]*[a-z0-9])?\.)+[a-z0-9]([a-z0-9-]*[a-z0-9])?\$"

checkFirstName()
{
	firstname=$1

	if [[ $firstname =~ $namePattern ]]
	then
		echo Valid First Name
	else
		echo Invalid First Name
	fi
}
checkLastName()
{
	lastname=$1

   if [[ $lastname =~ $namePattern ]]
   then
      echo Valid Last Name
   else
      echo Invalid Last Name
   fi
}
checkEmail()
{
	email=$1

	if [[ $email =~ $emailPattern ]]
	then
   	echo Valid Email-Id
	else
   	echo Invalid Email-Id
	fi
}
checkFirstName $firstname
checkLastName $lastname
checkEmail $email
