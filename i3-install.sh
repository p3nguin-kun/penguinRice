#!/usr/bin/env bash 
git clone https://github.com/p3nguin-kun/cozy-gruvbox-i3
cd cozy-gruvbox-i3
cp -R .config ~/                                            
chmod -R +x ~/.config/i3/scripts
curl -LO https://raw.githubusercontent.com/p3nguin-kun/pasaai/main/i3-packages-list
sudo pacman -S --needed - < i3-packages-list
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
grep "^Color" /etc/pacman.conf >/dev/null || sed -i "s/^#Color$/Color/" /etc/pacman.conf
grep "ILoveCandy" /etc/pacman.conf >/dev/null || sed -i "/#VerbosePkgLists/a ILoveCandy" /etc/pacman.conf
cd ..
rm -rf cozy-minimal-i3
clear
