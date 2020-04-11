#!/bin/bash -x
echo "Welcome To Pin Code Validation Program"

#CONSTANTS
PINCODEPATTERN="^[1-9][0-9]{5}$"
PINCODEPATTERN1="^[1-9]{1}[0-9]{2}\s{0,1}[0-9]{3}$"

#function for check pattern
function Check_Pattern()
{
   if [[ $1 =~ $2 ]]
   then
        echo "Valid Pattern."
   else
        echo "Invalid Pattern."
   fi
}

#user input and passing the parameter
read -p "Enter The Pincode : " Pincode
Check_Pattern $Pincode $PINCODEPATTERN

read -p "Enter The Pincodes : " Pincode1
Check_Pattern $Pincode1 $PINCODEPATTERN1
