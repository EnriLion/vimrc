#!/bin/bash

## Author : Enrique Lion

system=$(uname -r)

## vimrc-style installer script

## ANSI Colors (FG & BG)


## Banner

banner () {
	clear
	echo "

██╗░░░██╗██╗███╗░░░███╗██████╗░░█████╗░
██║░░░██║██║████╗░████║██╔══██╗██╔══██╗
╚██╗░██╔╝██║██╔████╔██║██████╔╝██║░░╚═╝
░╚████╔╝░██║██║╚██╔╝██║██╔══██╗██║░░██╗
░░╚██╔╝░░██║██║░╚═╝░██║██║░░██║╚█████╔╝
░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝╚═╝░░╚═╝░╚════╝░

░██████╗████████╗██╗░░░██╗██╗░░░░░███████╗░██████╗
██╔════╝╚══██╔══╝╚██╗░██╔╝██║░░░░░██╔════╝██╔════╝
╚█████╗░░░░██║░░░░╚████╔╝░██║░░░░░█████╗░░╚█████╗░
░╚═══██╗░░░██║░░░░░╚██╔╝░░██║░░░░░██╔══╝░░░╚═══██╗
██████╔╝░░░██║░░░░░░██║░░░███████╗███████╗██████╔╝
╚═════╝░░░░╚═╝░░░░░░╚═╝░░░╚══════╝╚══════╝╚═════╝░
"	

}
## Prerequisites

function plug() {
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

}

#function overwritevim

function overwritevim() {
 	echo "overwrite vim"	
	
	}



#function to install vim plug

function existvimrc {

	if test ! -f /home/$USER ; then
	      overwritevim
	else
	    touch /home/$USER/.vimrc
	    echo "What type of configuration are you using for your vim"
	    echo "a)Everything in one(All plugins and vim tweaks on your .vimrc for your development environment)"
	    echo "b)Web Development"
	    echo "c)Python Development"

	fi

}

## Main 
main() {
	banner

	if [[ "$system" == *"microsoft"* ]]; then
    		echo "Operating System = WSL" 
		    existvimrc 
 
		 touch ~/.vimrc

	elif [[ "$system" == *"linux"* ]]; then
	    echo "Operating System = Linux"
	    existvimrc

	    #Create the file and settings
		 touch ~/.vimrc

	else
	    echo "Operating System = Unknown"
	fi


}

main

