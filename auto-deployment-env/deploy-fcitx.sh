#! /usr/bin/bash

sudo pacman -S fcitx5 fcitx5-chewing fcitx5-chinese-addons fcitx5-configtool fcitx5-gtk fcitx5-qt fcitx5-rime fcitx5-material-color

yay -S fcitx5-pinyin-zhwiki fcitx5-pinyin-moegirl-rime

echo "GTK_IM_MODULE DEFAULT=fcitx" >> ~/.pam_environment
echo "QT_IM_MODULE  DEFAULT=fcitx" >> ~/.pam_environment
echo "XMODIFIERS    DEFAULT=\@im=fcitx" >> ~/.pam_environment
echo "SDL_IM_MODULE DEFAULT=fcitx" >> ~/.pam_environment
