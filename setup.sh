#!/bin/bash
system=$(uname -r)

# Check the operating system
if [[ "$system" == *"microsoft"* ]]; then
    echo "Operating System = WSL"
 
    #Create the file and settings
    

elif [[ "$system" == *"linux"* ]]; then
    echo "Operating System = Linux"

    #Create the file and settings

else
    echo "Operating System = Unknown"
fi
