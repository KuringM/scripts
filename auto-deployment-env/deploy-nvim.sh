#! /usr/bin/bash

git clone https://github.com/KuingMIN/nvim ~/.config

sudo pacman -S python python2 python-pip python2-pip nodejs npm yarn ruby the_silver_searcher figlet xclip ctags xdg-utils curl nodejs

pip install pynvim debugpy ueberzug
pip2 install pynvim

sudo nmp install -g neovim
yarn global add neovim
gem install neovim

pip install --user smdv
sudo nmp install -g instant-markdown-d
