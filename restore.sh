#! /bin/sh
HOME_DIR="/home/lester/"
CONFIG_DIR="$HOME_DIR .config/"

# UPDATE SYSTEM
sudo pacman -Syu --noconfirm

# DOWNLOAD CONFIGURATOIN
git clone https://github.com/lramo062/dotfiles
cd dotfiles

# INSTALL PACKAGES
sudo pacman -S - < pacman.txt --noconfirm

# RETORE CONFIG FILES

# emacs
cp emacs/.emacs $HOME_DIR
cp -r emacs/.emacs.d/* $HOME_DIR/.emacs.d/

# xinitrc
cp xinitrc/.xinitrc $HOME_DIR

# termite
cp termite/config $CONFIG_DIR/termite/

# sxhkd
cp sxhkd/sxhkdrc $CONFIG_DIR/sxhkd/sxhkdrc

# polybar
cp polybar/* $CONFIG_DIR/polybar/

# i3
# cp i3/* $CONFIG_DIR/i3/

# compton
cp compton/* $CONFIG_DIR/compton/

# bspwm
cp bspwm/* $CONFIG_DIR/bspwm/

# rofi
cp rofi/themes/}/* $CONFIG_DIR/rofi/themes/}/																																								
