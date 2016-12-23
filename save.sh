#!/bin/zsh

# save .emacs
cp ~/.emacs ~/dotfiles/emacs/.emacs
cp -r ~/.emacs.d ~/dotfiles/emacs/.emacs.d

# save i3
cp ~/.config/i3/config ~/dotfiles/i3/config
cp ~/.config/i3/lockScript.sh ~/dotfiles/i3/lockScript.sh
cp -r ~/.config/i3/i3blocks ~/dotfiles/i3/


# save compton
cp ~/.config/compton/compton.conf ~/dotfiles/compton/compton.conf
