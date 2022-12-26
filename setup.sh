#!/bin/bash

## Which operating system we are using variable
host=$(cat /proc/sys/kernel/hostname)
OS=$(uname -s)
if [ "${OS}" = "Linux" ] ; then
	echo "operating system: WSL(Windows Subsystem Linux)"
	echo "hostname: " $host
else
  echo "operating system: UNKWOWN"	
  echo "hostname: " $host
fi
 

