#!/bin/bash
# Authors : Colton O'Connor
# Date: 2/7/2020

#Problem 1 Code:
#Make sure to document how you are solving each problem!
echo "Input Filename: "
read filename
echo "Input search (showemail, showareacode, storeemail): "
read expression
a='showemail'
b='showareacode'
c='storeemail'
if [ "$a" = "$expression" ]
then
	egrep "@.*" $filename
	echo "number of emails: "
	grep -c "@.*" $filename
fi
if [ "$b" = "$expression" ] 
then	
	egrep "303.*" $filename
fi
if [ "$c" = "$expression" ]
then
	egrep "@.*" $filename >> email_results.txt
fi
