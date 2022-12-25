#!/bin/bash

## Which operating system we are using variable
os=`cat /proc/version`
if [ `$os | grep WSL`] ; then
	echo "operating system: WSL"
else
  echo "operating system: UNKWOWN"	
fi
 

