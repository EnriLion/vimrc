#!/bin/bash
system=$(uname -r)

# Check the operating system
if [[ "$system" == *"microsoft"* ]]; then
    echo "Operating System = WSL"
 
    #Create the file and settings
 touch ~/.vimrc

elif [[ "$system" == *"linux"* ]]; then
    echo "Operating System = Linux"

    #Create the file and settings
 touch ~/.vimrc

else
    echo "Operating System = Unknown"
fi
