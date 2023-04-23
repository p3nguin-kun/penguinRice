#!/usr/bin/env bash 
git clone https://github.com/p3nguin-kun/cozy-gruvbox-i3
cd cozy-gruvbox-i3
cp -R .config ~/                                            
chmod -R +x ~/.config/i3/scripts
curl -LO https://raw.githubusercontent.com/p3nguin-kun/pasaai/main/i3-packages-list
sudo pacman -S --noconfirm acpi arandr archlinux-xdg-menu awesome-terminal-fonts dex dmenu dunst feh file-roller firefox fish galculator gthumb gtk-engine-murrine gvfs gvfs-afc gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-smb htop i3-wm i3blocks i3lock i3status jq libreoffice-still lightdm lightdm-gtk-greeter lightdm-slick-greeter lxappearance-gtk3 mpc mpd mpv ncmpcpp network-manager-applet numlockx playerctl polkit-gnome rofi scrot sed sysstat thunar thunar-archive-plugin thunar-volman ttc-iosevka tumbler unrar unzip vim xbindkeys xdg-user-dirs-gtk xfce4-terminal xorg-xbacklight xorg-xdpyinfo zip
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
grep "^Color" /etc/pacman.conf >/dev/null || sed -i "s/^#Color$/Color/" /etc/pacman.conf
grep "ILoveCandy" /etc/pacman.conf >/dev/null || sed -i "/#VerbosePkgLists/a ILoveCandy" /etc/pacman.conf
cd ..
rm -rf cozy-minimal-i3
clear
