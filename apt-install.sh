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
#Neofetch

sudo apt install steam lutris firefox vim discord git vlc neofetch git vim lollypop libreoffice zathura zathura-pdf-mupdf mpv doas neofetch

#Set up vim plug installer
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Finished"

'Sources:
https://www.linuxquestions.org/questions/programming-9/bash-determine-what-package-manager-to-use-817036/
https://askubuntu.com/questions/175836/creating-a-script-to-install-software-after-a-clean-install
https://linuxhint.com/30_bash_script_examples/#t1 '
