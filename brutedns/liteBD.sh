#!/bin/bash
#
#
FDNS=$(cat dns_name)
DWORD=$(cat d_word)
#
# Welocme
First=$(echo 'Enter domain:' && read DOMAIN)
#
func_dictionary ()
{
	$First
	for PNAME in $FDNS
	 do 
	  host $PNAME.$DOMAIN | grep "has address"
 	done
}
#
func_brute ()
{
	$First
	for WORD in $DWORD
	 do
	  host $WORD.$DOMAIN | grep "has address"	
  	done
}
#
func_help ()
{
	echo
	echo "_____Welcome____"
	echo "The script      "
	echo "command:        "
	echo "-d)   dictionary"
	echo "-b)   bruteforce"
	echo "-h)   help      "
	echo
}
#
while [ -n "$1" ]
 do
	 case "$1" in 
		 -d) func_dictionary ;;
		 -b) func_brute ;;
		 -h) func_help ;;
		 *) echo "Error, please enter ./liteBD -h" ;;
	 esac
	 shift
 done
