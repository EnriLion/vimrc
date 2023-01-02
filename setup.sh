#!/bin/bash

system=$(uname -r)
#function to install vim plug
function plug {
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

}

# Check the operating system
if [[ "$system" == *"microsoft"* ]]; then
    echo "Operating System = WSL" 
    plug
elif [[ "$system" == *"linux"* ]]; then
    echo "Operating System = Linux"
else
    echo "Operating System = Unknown"
fi
