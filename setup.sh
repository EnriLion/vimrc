#!/bin/bash
system=$(uname -r)

# Check the operating system
if [[ "$system" == *"microsoft"* ]]; then
    echo "Operating System = WSL" 
elif [[ "$system" == *"linux"* ]]; then
    echo "Operating System = Linux"
else
    echo "Operating System = Unknown"
fi
