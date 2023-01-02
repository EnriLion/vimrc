#!/bin/bash

system=$(uname -r)
#function to install vim plug
function plug {
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

}

# Check the operating system
if [[ "$system" == *"microsoft"* ]]; then
<<<<<<< HEAD
    echo "Operating System = WSL" 
    plug
=======
    echo "Operating System = WSL"
 
    #Create the file and settings
 touch ~/.vimrc

>>>>>>> 843cd977b0f8d13974620300ba7649440c7611e1
elif [[ "$system" == *"linux"* ]]; then
    echo "Operating System = Linux"

    #Create the file and settings
 touch ~/.vimrc

else
    echo "Operating System = Unknown"
fi
