#!/bin/zsh

# restore .emacs
cp ~/dotfiles/emacs/.emacs ~/.emacs
cp -r ~/dotfiles/emacs/.emacs.d ~/.emacs.d 

# restore i3
cp ~/dotfiles/i3/config ~/.config/i3/config 
cp ~/dotfiles/i3/lockScript.sh ~/.config/i3/lockScript.sh
cp -r ~/dotfiles/i3/i3blocks ~/.config/i3/

# restore compton
cp ~/dotfiles/compton/compton.conf ~/.config/compton/compton.conf 
