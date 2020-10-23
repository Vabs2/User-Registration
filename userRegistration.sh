#!/bin/bash -x
shopt -s extglob

namePattern="^[A-Z][a-z]{2,}$"
emailPattern="^[a-zA-Z]{1,}([.]?[a-zA-Z]{1,})?[@]{1}[a-zA-Z]{1,}[.]{1}[a-z]{2,3}([.]?[a-z]{2})?$"
mobilePattern="^([0-9]{2}\s{1}[0-9]{10})$"

checkFirstName()
{
	read -p "Enter First Name " firstname
	if [[ $firstname =~ $namePattern ]]
	then
		echo Valid First Name
	else
		echo Invalid First Name
	fi
}
checkLastName()
{
	read -p "Enter Last Name " lastname
   if [[ $lastname =~ $namePattern ]]
   then
      echo Valid Last Name
   else
      echo Invalid Last Name
   fi
}
checkEmail()
{
	read -p "Enter Email-id " email
	if [[ $email =~ $emailPattern ]]
	then
   	echo Valid Email-Id
	else
   	echo Invalid Email-Id
	fi
}
checkMobileNumber()
{
	echo "Enter Mobile Number With Country Code " 
	read mobile
	if [[ $mobile =~ $mobilePattern ]]
   then
      echo Valid Mobile Number
   else
      echo Invalid Mobile Number
   fi

}
checkFirstName
checkLastName
checkEmail
checkMobileNumber
