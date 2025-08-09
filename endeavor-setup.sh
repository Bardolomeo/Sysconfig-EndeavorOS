#!/bin/bash

cd ;
mkdir $HOME/.sysconfig;
cd $HOME/.sysconfig ;

SSH_KEY="$HOME/.ssh/id_rsa.pub"


if [ ! -f "$SSH_KEY" ]; then
 ssh-keygen -N '' -t rsa && cat $SSH_KEY && 
 while [ ! "$res" = "y" ]
 do
  read -p "Did you copied your ssh-key in github? (y/n)" res;
 done
fi



sudo pacman -S sway nemo nautilus waybar wofi kitty vscode git base-devel &&


if [ ! cd yay-bin ]; then
 git clone https://aur.archlinux.org/yay-bin.git && 
 cd yay-bin && 
 makepkg -si;
fi

yay eww &&
sudo pacman -S ly &&
sudo systemctl disable gdm &&
sudo systemctl enable ly &&
echo "reboot yor computer for the changes to take effect";
sudo mv -r sway  $HOME/.config/
