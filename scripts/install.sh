#!/bin/sh

# update system
sudo pacman -Syu

# pacman packages 
sudo pacman -S yaourt chromium zsh emacs bspwm sxhkd scrot ttf-hack ttf-monaco noto-fonts i3lock termite dmenu feh git blueman compton docker ffmpeg firefox nautilus ranger tmux arc-gtk-theme --no-confirm

# yaourt packages
yaourt -S polybar paper-icon-theme-git oh-my-zsh-git ttf-font-awesome ttf-all-the-icons wal-git

# clone dotfiles
# git clone https://github.com/lramo062/dotfiles

# emacs
cp -r dotfiles/new_emacs_config/.emacs.d ~/
cp dotfiles/new_emacs_config/.emacs ~/

# create config folders and add files to them
cp -r dotfiles/bspwm .config/
cp -r dotfiles/polybar .config/
cp -r dotfiles/sxhkd .config/
cp -r dotfiles/termite .config/
cp -r dotfiles/polybar .config/
cp -r dotfiles/compton .config/

# zsh setup
sudo chsh -s /usr/bin/zsh lester
cp /usr/share/oh-my-zsh/zshrc ~/.zshrc
usermod -s /usr/bin/zsh

# git
git config --global user.email "lramo062@fiu.edu"
git config --global user.name "Lester Ramos"

# wal
# wal -i -c /home/lester/Pictures/wallpaper.png -n 

