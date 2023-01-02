#!/bin/bash

system=$(uname -r)

#function to install vim plug

function plug {
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

}

#function to install vim plug

function existvimrc {

if test ! -f /home/$USER ; then
	
else
	touch /home/$USER/.vimrc


fi

}



# Check the operating system
if [[ "$system" == *"microsoft"* ]]; then
    echo "Operating System = WSL" 
    existvimrc 
 
    #Create the file and settings
 touch ~/.vimrc

elif [[ "$system" == *"linux"* ]]; then
    echo "Operating System = Linux"

    #Create the file and settings
 touch ~/.vimrc

else
    echo "Operating System = Unknown"
fi
