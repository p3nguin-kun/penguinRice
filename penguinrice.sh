#!/usr/bin/env bash 

# p3nguin-kun's Auto Rice Script
# Author: Khanh Hien Hoang/p3nguin-kun (kh4nhhi3n@hotmail.com)
# GitHub: p3nguin-kun

# Show welcome text
clear
echo "^_^ Welcome to penguinRice

Ubuntu is bloated! Arch with penguinRice is better! <(￣︶￣)>

This script will automatically install fully-featured tiling window manager-based system on any Arch Linux or Arch-based system 
"
echo "penguinRice will start now (OwO)

"
# Update repositories
sudo pacman -Syu

# Install yay (an aur helper)
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Install packages
sudo pacman -S --noconfirm acpi alsa-utils arandr archlinux-xdg-menu blueberry calcurse dex dunst feh file-roller firefox fish gthumb gtk-engine-murrine gvfs gvfs-afc gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-smb htop i3-wm i3blocks i3lock i3status jq kitty libreoffice-still lightdm lightdm-slick-greeter lxappearance-gtk3 mpc mpd mpv ncmpcpp neofetch neovim nerd-fonts networkmanager network-manager-applet numlockx papirus-icon-theme pavucontrol picom pipewire pipewire-media-session pipewire-pulse pipewire playerctl polkit-gnome ranger rofi scrot sed sysstat ttf-iosevka-nerd ttf-font-awesome tumbler unrar unzip xbindkeys xdg-user-dirs-gtk xfce4-power-manager xorg-xbacklight xorg-xdpyinfo zathura zip

# Install AUR stuffs
yay -S betterlockscreen dragon-drop gruvbox-dark-gtk

# Clone dotfiles repo
cd ~/
git clone https://github.com/p3nguin-kun/cozy-gruvbox-i3

# Copy dotfiles
cd ~/cozy-gruvbox-i3
cp -r .config ~/                                  
chmod -R +x ~/.config/i3/scripts
chmod -R +x ~/.config/rofi/launchers
chmod -R +x ~/.config/rofi/powermenu
cd ~/

# Change shell
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/bin/fish

#Config LightDM
echo "exec i3" >> ~/.xinitrc
sudo mkdir -p /usr/share/backgrounds/
sudo cp ~/.config/wallpapers/wall2.png /usr/share/backgrounds
sudo sed -i "s/#greeter-session=example-gtk-gnome/greeter-session=lightdm-slick-greeter/g" /etc/lightdm/lightdm.conf
sudo cp ~/parsai/config-files/slick-greeter.conf /etc/lightdm/

# Config pacman (for what?)
grep "^Color" /etc/pacman.conf >/dev/null || sudo sed -i "s/^#Color$/Color/" /etc/pacman.conf
grep "ILoveCandy" /etc/pacman.conf >/dev/null || sudo sed -i "/#VerbosePkgLists/a ILoveCandy" /etc/pacman.conf

# Add background for betterlockscreen
betterlockscreen -u ~/.config/wallpapers/wall2.png

# Config NeoVim
git clone https://github.com/p3nguin-kun/penguinVim ~/.config/nvim

# Start LightDM and pipewire with OS
sudo systemctl enable lightdm
sudo systemctl enable pipewire pipewire-media-session pipewire-pulse


# Delete dotfiles repo
cd ~/
rm -rf cozy-minimal-i3

# Finish ricing
clear
echo "Done!( ꈍᴗꈍ)
Now you need to restart for better experience"
