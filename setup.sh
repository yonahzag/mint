#!/bin/bash
echo "welcome to setup!"
echo "Loading aliases."

echo "alias cl='clear'" > ~/.bash_aliases
echo "alias gtg='exit'" >> ~/.bash_aliases

echo "checking what shell is in use"
FILE=~/.zshrc
if test -f "$FILE"; then
    echo "zsh"
    echo "adding aliases"
    echo "source .bash_aliases" >> ~/.zshrc
fi
FILE=~/.bashrc
if test -f "$FILE"; then
   echo "bash"
   echo "adding aliases"
   echo "source .bash_aliases" >> ~/.bashrc
fi
sleep 2
clear
echo "loading wifi script"
mkdir ~/.scripts
mv wifi.sh ~/.scripts
mkdir ~/background
gsettings set org.gnome.desktop.background picture-uri-dark file://~/background/
echo "please restart terminal for changes to take effect."
