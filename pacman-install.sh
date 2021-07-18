#!/bin/sh

echo "Installing various applications."

# List of programs installed:
# Firefox
# VLC Media Player
# Neofetch
# Git
# Vim
# Lollypop Music Player
# Libre Office 19
# Zathura PDF Reader
# Zathura add-ons for PDF and EPUB support
# mpv Media Player
# nitrogen
# xsetroot
# doas

sudo pacman -S firefox vlc neofetch git vim lollypop libreoffice zathura zathura-pdf-mupdf mpv nitrogen xorg-xsetroot doas

#Set up vim plug installer
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#One final update
sudo pacman -Syu

echo "Finished installing applications."

# Install dwm, st and dmenu in .config folder

echo "Installing desktop enviornment."

dwm="https://git.suckless.org/dwm"

st="https://git.suckless.org/st"

dmenu="https://git.suckless.org/dmenu"

slstatus="https://git.suckless.org/slstatus"

mkdir $HOME/.config/suckless

cd $HOME/.config/suckless

# The below clone sections could probably be replaced with a function.

# Clone the latest build of dwm from source
git clone "$dwm"
cd dwm
sudo make clean install
cd ..

#Clone the latest build of st from source
git clone "$st"
cd st
sudo make clean install
cd ..

#Clone the lates build of dmenu from the source
git clone "$dmenu"
cd dmenu
sudo make clean install
cd ..

# Clone the lates build of slstatus from the source
git clone "$slstatus"
cd slstatus
sudo make clean install
cd

echo "Finished installing desktop enviornment"

echo "Finalizing config"

startup="#!/bin/bash
nitrogen --set-zoom-fill ~/Pictures/Wallpapers/computer.png &
xinput set-prop 12 321 1 &"

xinit="#!/bin/bash
# ~/.xinitrc
# Executed by window manager (run your window manaager from here

exec dwm &
source ~/.config/startup.sh &
slstatus"

zshrc="autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000

unsetopt beep

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
 
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
 
# Vi keybindings
set -o vi"

echo "$startup" > $HOME/.config/startup.sh

echo "$xinit" > .xinitrc

echo "$zshrc" > .zshrc

echo "Config has been finalized."
