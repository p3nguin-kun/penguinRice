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
# Update repositories
sudo pacman -Syu

# Clone dotfiles repo
cd ~/
git clone https://github.com/p3nguin-kun/cozy-gruvbox-i3

# Install packages
sudo pacman -S --noconfirm acpi alsa-utils arandr archlinux-xdg-menu awesome-terminal-fonts blueberry dex dmenu dunst feh file-roller firefox fish gthumb gtk-engine-murrine gvfs gvfs-afc gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-smb htop i3-wm i3blocks i3lock i3status jq libreoffice-still lightdm lightdm-gtk-greeter lxappearance-gtk3 mpc mpd mpv ncmpcpp neofetch networkmanager network-manager-applet numlockx pavucontrol playerctl polkit-gnome ranger rofi scrot sed sysstat ttc-iosevka ttf-font-awesome tumbler unrar unzip vim xbindkeys xdg-user-dirs-gtk xfce4-clipman-plugin xfce4-terminal xorg-xbacklight xorg-xdpyinfo zathura zip

# Install yay (an aur helper)
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Copy dotfiles
cd ~/cozy-gruvbox-i3
cp -r .config ~/                                  
chmod +x ~/.config/i3/scripts
chmod +x ~/.config/rofi/launchers
chmod +x ~/.config/rofi/powermenu
cd ~/

# Change shell
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/bin/fish

#Config LightDM
echo "exec i3" >> ~/.xinitrc
sudo mkdir -p /usr/share/backgrounds/
sudo cp ~/.config/wallpapers/wall2.png /usr/share/backgrounds
sudo sed -i "s/#greeter-session=example-gtk-gnome/greeter-session=lightdm-gtk-greeter/g" /etc/lightdm/lightdm.conf
sudo sed -i "s/#background=/background=\/usr\/share\/backgrounds\/wall2.png/g" /etc/lightdm/lightdm-gtk-greeter.conf
sudo sed -i "s/#font-name/font-name=Iosevka/g" /etc/lightdm/lightdm-gtk-greeter.conf

# Install Icons and Themes
yay -S qogir-icon-theme
yay -S gruvbox-dark-gtk

# Config pacman (for what?)
grep "^Color" /etc/pacman.conf >/dev/null || sudo sed -i "s/^#Color$/Color/" /etc/pacman.conf
grep "ILoveCandy" /etc/pacman.conf >/dev/null || sudo sed -i "/#VerbosePkgLists/a ILoveCandy" /etc/pacman.conf

# Start LightDM with OS
sudo systemctl enable lightdm

# Delete dotfiles repo
cd ~/
rm -rf cozy-minimal-i3
rm -rf Qogir-icon-theme
rm -rf yay

# Finish ricing
clear
echo "Done!( ꈍᴗꈍ)
Now you need to restart for better experience"
