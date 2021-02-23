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
echo "Finishing install dwn st!!!"
cd ~/
git clone https://github.com/KuringMIN/wallpapers ~/Pictures
cd ~/

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

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "config down zsh"
