#!/usr/bin/env bash

# create directory
cd ~/
mkdir ~/Github ~/prog ~/Pictures ~/Videos ~/Desktop ~/Documents ~/Downloads ~/Music ~/.zim ~/.config

# clone config st dwn wallpapers and install dwm st
git clone https://github.com/KuringMIN/.config ~/config
cp -r ~/config/* ~/.config
git clone https://github.com/KuringMIN/st ~/prog/st
cd ~/prog/st
sudo make clean install
cd ~/
git clone https://github.com/KuringMIN/dwm ~/prog/dwm
cd ~/prog/dwm
sudo make clean install
cd ~/
git clone https://github.com/KuringMIN/wallpapers ~/Pictures
cd ~/

# install some necessary software
sudo pamcan -S dmenu neofetch chromium ranger fzf feh picom xorg-apps xorg-xinit xorg-server zsh networkmanager nm-connection-editor network-manager-applet xfce4-power-manager trayer flameshot alsa-utils screenkey

# install yay for archlinux
git clone https://aur.archlinux.org/yay.git ~/Github
cd /Github/yay
sudo makepkg -si
cd ~/

# change software source
yay --aururl "https://aur.tuna.tsinghua.edu.cn" --save

# install some necessary fonts and software
yay -S ttf-linux-libertine ttf-inconsolata ttf-joypixels ttf-twemoji-color noto-fonts-emoji ttf-liberation ttf-droid wqy-bitmapfont wqy-microhei wqy-microhei-lite wqy-zenhei adobe-source-han-mono-cn-fonts adobe-source-han-sans-cn-fonts adobe-source-han-serif-cn-fonts otf-nerd-fonts-fira-code nerd-fonts-source-code-pro acpitool

# config zsh
sudo chsh -s /usr/bin/zsh
ln ~/.config/zsh/zshenv ~/.zshenv
ln ~/.config/zsh/zshrc ~/.zshrc
ln ~/.config/zsh/zlogin ~/.zlogin
ln ~/.config/zsh/zimrc ~/.zimrc
cp ~/.config/zsh/zimfw.zsh ~/.zim
zsh ~/.zim/zimfw.zsh install
zimfw install
zimfw update
zimfw upgrade
