#! /bin/bash

domain=$(dsconfigad -show | awk '/Active Directory Domain/{print $NF}')
echo "Checking whether computer is bound."

if [ -z "$domain" ]
then
echo "This machine is not bound to AD.
else
echo "This machine is bound to AD."
fi
