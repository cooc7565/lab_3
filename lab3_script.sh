#!/bin/bash
# Authors : Colton O'Connor
# Date: 2/7/2020

#Problem 1 Code:
#Make sure to document how you are solving each problem!
echo "Input Filename: "	#user puts in inteded file name "regex_practice.txt
read filename		#reads file name
echo "Input search (showemail, showareacode, storeemail): " #asks user what task to perform
read expression		#reads task
a='showemail'		#if user wants to display all emails
b='showareacode'	#if user wants to display all phone numbers using 
c='storeemail'
if [ "$a" = "$expression" ]	#displays emails found and gives total number
then
	egrep "@.*" $filename
	echo "number of emails: "
	grep -c "@.*" $filename
fi
if [ "$b" = "$expression" ] 	#displas 303 area code numbers found and displasy number
then	
	egrep "303.*" $filename
	echo "number of phone numbers: "
        grep -c "303." $filename

fi
if [ "$c" = "$expression" ]	#saves emails to email_results.txt
then
	egrep "@.*" $filename >> email_results.txt
fi
