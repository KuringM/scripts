#!/usr/bin/env bash

# install some necessary software
sudo pacman -S dmenu neofetch ranger pandoc texlive-most youtube-dl python-pdftotext perl-image-exiftool mupdf w3m fzf feh picom xorg-apps xorg-xinit xorg-server zsh networkmanager nm-connection-editor network-manager-applet xfce4-power-manager flameshot alsa-utils screenkey nautilus zip unzip thefuck acpi htop ripgrep

echo "Installing done!!!"

# install yay for archlinux
git clone https://aur.archlinux.org/yay.git ~/Github
cd /Github/yay
makepkg -si
cd ~/

echo "Installing yay done!!!"

# change software source
yay --aururl "https://aur.tuna.tsinghua.edu.cn" --save

# install some necessary software
yay -S acpitool google-chrome lazygit haruna

