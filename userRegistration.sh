#!/bin/bash -x
shopt -s extglob

namePattern="^[A-Z][a-z]{2,}$"
emailPattern="^[a-zA-Z0-9]{1,}([.]?[-]?[+]?[a-zA-Z0-9]{1,})?[@]{1}[a-zA-Z0-9]{1,}[.]{1}[a-z]{2,3}([.]?[a-z]{2})?$"
mobilePattern="^([0-9]{2}\s{1}[0-9]{10})$"
checkFirstName()
{
	read -p "Enter First Name " firstname
	if [[ $firstname =~ $namePattern ]]; then
		echo Valid First Name
	else
		echo Invalid First Name
	fi
}
checkLastName()
{
	read -p "Enter Last Name " lastname
   if [[ $lastname =~ $namePattern ]]; then
      echo Valid Last Name
   else
      echo Invalid Last Name
   fi
}
checkEmail()
{
	read -p "Enter Email-id " email
	if [[ $email =~ $emailPattern ]]; then
   	echo Valid Email-Id
	else
   	echo Invalid Email-Id
	fi
}
checkMobileNumber()
{
	echo "Enter Mobile Number With Country Code "
	read mobile
	if [[ $mobile =~ $mobilePattern ]]; then
      echo Valid Mobile Number
   else
      echo Invalid Mobile Number
   fi
}
checkPassword()
{
read -p "please enter password:" pass
count=`echo ${#pass}`
if [[ $count -lt 8 ]];then
echo "Password length should be 8 charactore"
exit 1;
fi
echo $pass | grep "[A-Z]" | grep "[a-z]" | grep "[0-9]" | grep "[@#$%^&*]"

if [[ $? -ne 0 ]];then

echo "Password Must contain upparcase ,lowecase,number and special charactor"
exit 2;
else
   echo "password is valid"
fi
}
checkFirstName
checkLastName
checkEmail
checkMobileNumber
checkPassword
