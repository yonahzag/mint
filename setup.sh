#!/bin/bash
echo "System setting up"
echo ""
echo "this script requires root access"
sudo
# Setting up aliases 

echo "making .bash_aliases"
touch ~/.bash_aliases
echo "setting up aliases"

echo "alias cl='clear'" > ~/.bash_aliases
echo "alias gtg='exit'" >> ~/.bash_aliases
echo "alias ls='ls -a'" >> ~/.bash_aliases
echo "alias install='apt install'" >> ~/.bash_aliases
echo "alias remove='apt autoremove'"

echo "checking what shell is in use"
FILE=~/.zshrc
if test -f "$FILE"; then
    echo "zsh"
    echo "adding aliases"
    echo "source .bash_aliases" >> ~/.zshrc
    source .bash_aliases
fi
FILE=~/.bashrc
if test -f "$FILE"; then
   echo "bash"
   echo "adding aliases"
   echo "source .bash_aliases" >> ~/.bashrc
   source .bash_aliases
fi

# Setting background

echo "Making background folder"
cd ~/whitedesk/Pictures/
mkdir backgrounds
cd backgrounds
echo "Downloading background"
touch background.jpg
curl https://cdni.iconscout.com/illustration/premium/thumb/mountains-at-night-3864545-3318134.png?f=webp -o background.jpg -s
echo "Setting background"
gsettings set org.gnome.desktop.background picture-uri file:///home/whitedesk/Pictures/backgrounds/background.jpg
