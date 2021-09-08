#/bin/bash
echo "provide your username"
read user
sudo pacman -S feh zsh xcompmgr xorg-init make xorg-server curl ttf-fira-code
cp /home/$user/aritxRice/.xinitrc /home/$user
cp -r  /home/$user/aritxRice/.themes /home/$user
cp /home/$user/aritxRice/.arch.png /home/$user
cp /home/$user/aritxRice/.zshrc /home/$user
cd home/$user/artixRice
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
sudo make clean install
cd /home/$user
gsettings set org.gnome.desktop.interface gtk-theme "Nordic"
gsettings set org.gnome.desktop.wm.preferences theme "Nordic"
feh --bg-scale /home/$user/.arch.png
xcompmgr -c -r 0




sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

source .zshrc
