#!/bin/bash
system=$(uname -r)

# Check the operating system
if [[ "$system" == *"microsoft"* ]]; then
    echo "Operating System = WSL" 
elif [[ "$system" == *"linux"* ]]; then
    echo "Operating System = Linux"
else
    echo "I am unable to determine the operating system you are using."
fi
