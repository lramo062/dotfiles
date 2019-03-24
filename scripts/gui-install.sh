# update system
sudo pacman -Syu

# pacman packages 
sudo pacman -S yaourt zsh emacs scrot ttf-hack noto-fonts i3lock rofi git curl docker ranger tmux arc-gtk-theme jdk-openjdk nodejs npm --noconfirm

# yaourt packages
yaourt -S paper-icon-theme-git ttf-font-awesome-4 ttf-all-the-icons slack-desktop ttf-monaco jetbrains-toolbox ttf-freefont nvm otf-san-francisco --noconfirm

# clone dotfiles
git clone https://github.com/lramo062/dotfiles

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# tmux conf 
echo "set -g mouse on" > ~/.tmux.conf
