#/bin/bash
sudo pacman -S feh zsh xcompmgr xorg xorg-server curl ttf-fira-code
cd $HOME/artixRice
cd dwm
sudo make clean install
cd ..
cd dmenu
sudo make clean install
cd ..
cd slstatus
sudo make clean install
cd ..
cd st 
sudo make clean isntall
cd cd ..
cp .xinitrc $HOME
cp .arch.png $HOME
cp -r .themes $HOME
gsettings set org.gnome.desktop.interface gtk-theme "Nordic"
gsettings set org.gnome.desktop.wm.preferences theme "Nordic"
feh --bg-scale .arch.png
xcompmgr -c -r 0




sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

source .zshrc
