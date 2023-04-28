#!/usr/bin/env bash 

# p3nguin-kun's Auto Rice Script After Installation (PARSAI)
# Author: Khanh Hien Hoang/p3nguin-kun (kh4nhhi3n@hotmail.com)
# GitHub: p3nguin-kun

# Show welcome text
clear
echo "^_^ Welcome to p3nguin-kun's Auto Rice Script After Installation (PARSAI)

Ubuntu is bloated! Arch with PARSAI is better! <(￣︶￣)>

This script will automatically install fully-featured tiling window manager-based system on any Arch Linux or Arch-based system 
"
echo "PARSAI will start now (≧▽≦)

"
# Clone dotfiles repo
git clone https://github.com/p3nguin-kun/cozy-gruvbox-i3

# Install packages
sudo pacman -S --noconfirm acpi arandr archlinux-xdg-menu awesome-terminal-fonts dex dmenu dunst feh file-roller firefox fish galculator gthumb gtk-engine-murrine gvfs gvfs-afc gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-smb htop i3-wm i3blocks i3lock i3status jq libreoffice-still lightdm lightdm-gtk-greeter lightdm-slick-greeter lxappearance-gtk3 mpc mpd mpv ncmpcpp neofetch networkmanager network-manager-applet numlockx playerctl polkit-gnome rofi scrot sed sysstat thunar thunar-archive-plugin thunar-volman ttc-iosevka tumbler unrar unzip vim xbindkeys xdg-user-dirs-gtk xfce4-terminal xorg-xbacklight xorg-xdpyinfo zathura zip

# Copy dotfiles
mkdir ~/.config
cd ~/cozy-gruvbox-i3
cp -r.config ~/                                  
chmod -r +x ~/.config/i3/scripts
chmod -r +x ~/.config/rofi/launchers
chmod -r +x ~/.config/rofi/powermenu
cd ..

# Change shell
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/bin/fish

#Config sth
echo "exec i3" >> ~/.xinitrc
grep "#greeter-session=example-gtk-gnome" /etc/lightdm/lightdm.conf | echo "greeter-session=lightdm-slick-greeter"

# Install Qogir-icon-theme
git clone https://github.com/vinceliuice/Qogir-icon-theme.git
sh install.sh

# Config pacman (for what?)
grep "^Color" /etc/pacman.conf >/dev/null || sed -i "s/^#Color$/Color/" /etc/pacman.conf
grep "ILoveCandy" /etc/pacman.conf >/dev/null || sed -i "/#VerbosePkgLists/a ILoveCandy" /etc/pacman.conf

# Start LightDM with OS
sudo systemctl enable lightdm

# Delete dotfiles repo
cd ..
rm -rf cozy-minimal-i3

# Finish ricing
clear
echo "Done!( ꈍᴗꈍ)
Now you need to restart for better experience"
