#!/bin/bash

sudo apt update && sudo apt upgrade -y

#Steam

#Lutris

#Vim

#Discord

#Gimp

#FireFox

#LibreOffice

#VLC Media Player

#Python 3

#Neofetch

sudo apt install steam lutris vim discord git firefox libreoffice vlc python3 neofetch

#Set up vim plug installer
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Finished"

'Sources:
https://www.linuxquestions.org/questions/programming-9/bash-determine-what-package-manager-to-use-817036/
https://askubuntu.com/questions/175836/creating-a-script-to-install-software-after-a-clean-install
https://linuxhint.com/30_bash_script_examples/#t1 '
