#!/bin/sh

# p3nguin-kun's Auto Rice Script
# Author: Khanh Hien Hoang/p3nguin-kun (kh4nhhi3n@hotmail.com)
# GitHub: p3nguin-kun

# Show welcome text
clear
echo "^_^ Welcome to penguinRice (BSPWM ver.)

Ubuntu is bloated! Arch with penguinRice is better! (UwU)

This script will automatically install fully-featured tiling window manager-based system on any Arch Linux or Arch-based system 
"
echo "penguinRice will start now (OwO)

"
# Update repositories
sudo rm -rf /var/lib/pacman/db.lck
sudo pacman -Syu

# Install yay (an aur helper)
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Install packages
sudo pacman -S --noconfirm acpi alsa-utils arandr archlinux-xdg-menu blueberry bspwm btop calcurse dex dunst feh file-roller firefox fish gthumb gtk-engine-murrine gvfs gvfs-afc gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-smb jq libreoffice-still lightdm lightdm-slick-greeter lxappearance-gtk3 mpc mpd mpv ncmpcpp neofetch neovim nerd-fonts networkmanager network-manager-applet numlockx pavucontrol pipewire pipewire-pulse playerctl polkit-gnome polybar ranger rofi scrot sed sxhkd sysstat ttf-iosevka-nerd ttf-font-awesome tumbler ueberzug unrar unzip wireplumber xautolock xbindkeys xdg-user-dirs-gtk xfce4-power-manager xfce4-terminal xorg-xbacklight xorg-xdpyinfo zathura zip

# Install AUR stuffs
yay -S betterlockscreen dragon-drop gruvbox-dark-gtk picom-pijulius-git qogir-icon-theme

# Clone dotfiles repo
cd ~/
git clone https://github.com/p3nguin-kun/cozy-gruvbox-bspwm

# Copy dotfiles
cd ~/cozy-gruvbox-bspwm
cp -r .config ~/
chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/sxhkd/sxhkdrc
chmod -R +x ~/.config/polybar/scripts
chmod -R +x ~/.config/rofi/launchers
chmod -R +x ~/.config/rofi/powermenu
chmod +x ~/.config/ranger/scope.sh
cd ~/

# Change shell
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/bin/fish

#Config LightDM
echo "exec bspwm" >>~/.xinitrc
sudo mkdir -p /usr/share/backgrounds/
sudo cp ~/.config/wallpapers/wall2.png /usr/share/backgrounds
sudo sed -i "s/#greeter-session=example-gtk-gnome/greeter-session=lightdm-slick-greeter/g" /etc/lightdm/lightdm.conf
sudo cp ~/penguinRice/config-files/slick-greeter.conf /etc/lightdm/

# Config pacman (for what?)
grep "^Color" /etc/pacman.conf >/dev/null || sudo sed -i "s/^#Color$/Color/" /etc/pacman.conf
grep "ILoveCandy" /etc/pacman.conf >/dev/null || sudo sed -i "/#VerbosePkgLists/a ILoveCandy" /etc/pacman.conf

# Config NeoVim
git clone https://github.com/p3nguin-kun/penguinVim ~/.config/nvim

# Start services with OS
sudo systemctl enable mpd.service
sudo systemctl enable lightdm
sudo systemctl enable pipewire pipewire-pulse wireplumber

# Delete dotfiles repo
cd ~/
rm -rf cozy-gruvbox-bspwm

# Finish ricing
clear
echo "Done!( ꈍᴗꈍ)
Now you need to restart for better experience"
