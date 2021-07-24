#!/usr/bin/env bash

# install some necessary software
sudo pacman -S dmenu neofetch ranger pandoc texlive-most youtube-dl python-pdftotext perl-image-exiftool mupdf w3m fzf feh picom xorg-apps xorg-xinit xorg-server zsh networkmanager nm-connection-editor network-manager-applet xfce4-power-manager flameshot alsa-utils screenkey nautilus zip unzip thefuck acpi htop ripgrep tree gnome-font-viewer tmux ark ntfs-3g bc acpilight

yay -S acpitool google-chrome lazygit haruna

echo "Install down"

# intall Graphics drive
sudo pacman -S mesa lib32-mesa vulkan-intel lib32-vulkan-intel
sudo pacman -S nvidia nvidia-settings lib32-nvidia-utils nvidia-lts

# install optmus-manager
yay -S optimus-manager optimus-manager-qt
sudo systemctl enable optimus-manager

# install qv2ray
sudo pacman -S qv2ray-dev-git v2ray
yay -S cgproxy q2ray-plugin-ssr-dev-git
