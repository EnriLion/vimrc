#!/bin/bash

system=$(uname -r)

#function to install vim plug

function plug {
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

}

#function overwritevim

function overwritevim {
	cat > .vimrc
	"Vim configuration
	set number
	"Vim-Plug
	call plug#begin('~/.vim/plugged')

	Plug 'wakatime/vim-wakatime'

	Plug 'mattn/emmet-vim'

	Plug 'joshdick/onedark.vim'

	Plug'itchyny/lightline.vim'

	Plug '907th/vim-auto-save'

	#Plug 'preservim/nerdtree'

        #Plug 'ryanoasis/vim-devicons' 

	call plug#end()

}



#function to install vim plug

function existvimrc {

if test ! -f /home/$USER ; then
      overwritevim
else
    touch /home/$USER/.vimrc
    overwritevim



fi

}




# Check the operating system
if [[ "$system" == *"microsoft"* ]]; then
    echo "Operating System = WSL" 
    existvimrc 
    overwritevim
 
    #Create the file and settings
 touch ~/.vimrc

elif [[ "$system" == *"linux"* ]]; then
    echo "Operating System = Linux"

    #Create the file and settings
 touch ~/.vimrc

else
    echo "Operating System = Unknown"
fi
