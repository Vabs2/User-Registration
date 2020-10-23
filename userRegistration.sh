#!/bin/bash

checkDetails()
{
read -p "Enter First Name " firstname
read -p "Enter Last Name " lastname

pattern="^[A-Z][a-z]{2,}$"

if [[ $firstname =~ $pattern ]]
then
   echo "Valid First Name"
else
   echo "Invalid First Name"
fi

if [[ $lastname =~ $pattern ]]
then
   echo "Valid Last Name"
else
   echo "Invalid Last Name"
fi

}
checkDetails
