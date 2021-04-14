#!/bin/sh
#Installs the following programs:

#FireFox
#VLC Media Player
#Neofetch
#Git
#Vim
#Lollypop Music Player
#Libre Office
#Zathura PDF Reader
#Zathura add-ons for PDF and EPUB support
#mpv Media Player
#xwallpaper Wallpaper config
#xsetroot

sudo pacman -S firefox vlc neofetch git vim lollypop libreoffice zathura zathura-pdf-mupdf nitrogen xorg-xsetroot

#Set up vim plug installer
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#One final update
sudo pacman -Syu

echo "Finished installing software"

#Install dwm, st and dmenu in .config folder

dwm="https://git.suckless.org/dwm"

st="https://git.suckless.org/st"

dmenu="https://git.suckless.org/dmenu"

slstatus="https://git.suckless.org/slstatus"

#Clone the latest build of dwm from source
git clone "$dwm" ".config/suckless"
cd dwm
sudo make clean install
cd ..

#Clone the latest build of st from source
git clone "$st" ".config/suckless"
cd st
sudo make clean install
cd ..

#Clone the lates build of dmenu from the source
git clone "$dmenu" ".config/suckless"
cd dmenu
sudo make clean install

echo "Finished installing suckless software"
