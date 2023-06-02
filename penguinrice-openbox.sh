#!/usr/bin/env bash

# penguinRice
# p3nguin-kun's auto rice script
# Author: Khanh Hien Hoang (p3nguin-kun)
# GitHub: p3nguin-kun
# Website: https://p3nguin-kun.github.io

CRE=$(tput setaf 1)
CYE=$(tput setaf 3)
CGR=$(tput setaf 2)
CBL=$(tput setaf 4)
BLD=$(tput bold)
CNC=$(tput sgr0)

backup_folder=~/.RiceBackup
date=$(date +%Y%m%d-%H%M%S)

logo() {

	local text="${1:?}"
	echo -en "                                 
  penguinRice (Openbox ver.)\n\n"
	printf ' %s [%s%s %s%s %s]%s\n\n' "${CRE}" "${CNC}" "${CYE}" "${text}"
}

# Check if this script is run as root
if [ "$(id -u)" = 0 ]; then
	echo "This script MUST NOT be run as root."
	exit 1
fi

# Intro
clear
logo "Welcome!"
printf '%s%sThis script will automatically install fully-featured tiling window manager-based system on any Arch Linux or Arch-based system. \n\nMy dotfiles DO NOT modify any of your system configuration. \nYou will be prompted for your root password to install missing dependencies and/or to switch to fish shell if its not your default. \n\nThis script doesnt have potential power to break your system, it only copies files from my repo to your HOME directory. %s\n\n' "${BLD}" "${CRE}" "${CNC}"

while true; do
	read -rp " Do you want to continue? [y/n]: " yn
	case $yn in
	[Yy]*) break ;;
	[Nn]*) exit ;;
	*) printf "Just write 'y' or 'n'\n\n" ;;
	esac
done
clear

# Install packages
logo "Installing needed packages"

dependencies=(acpi alsa-utils arandr archlinux-xdg-menu blueberry btop calcurse dunst feh firefox fish gtk-engine-murrine gvfs gvfs-afc gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-smb jq libreoffice-still lxappearance-gtk3 mpc mpd mpv ncmpcpp neofetch neovim nerd-fonts networkmanager network-manager-applet numlockx openbox obconf pavucontrol pipewire pipewire-pulse playerctl polkit-gnome polybar ranger rofi scrot sddm sed sysstat thunar ttc-iosevka ttf-iosevka-nerd ttf-font-awesome udisks2 ueberzug unrar unzip wireplumber xarchiver xbindkeys xdg-user-dirs-gtk xf86-input-libinput xf86-input-evdev xf86-video-amdgpu xf86-video-ati xf86-video-fbdev xf86-video-intel xf86-video-nouveau xf86-video-vmware xfce4-power-manager xfce4-terminal xorg xorg-xbacklight xorg-xdpyinfo xorg-xinit xss-lock zathura zip)

is_installed() {
	pacman -Qi "$1" &>/dev/null
	return $?
}

printf "%s%sChecking for required packages%s\n" "${BLD}" "${CBL}" "${CNC}"
for paquete in "${dependencies[@]}"; do
	if ! is_installed "$paquete"; then
		sudo pacman -S "$paquete" --noconfirm
		printf "\n"
	else
		printf '%s%s is already installed on your system!%s\n' "${CGR}" "$paquete" "${CNC}"
		sleep 1
	fi
done
sleep 3
clear

# Installing yay
logo "Installing yay and AUR packages"
if command -v yay &>/dev/null; then
	echo "Yay is installed in your system"
else
	echo "Installing yay"
	sudo pacman -S --needed --noconfirm base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si --noconfirm && cd ..
fi

echo "Installing AUR packages"
yay -S --noconfirm betterlockscreen dragon-drop gruvbox-dark-gtk picom-animations-git pixterm-git qogir-icon-theme sddm-sugar-dark ttf-icomoon-feather

# Preparing folders
logo "Preparing folders"
if [ ! -e $HOME/.config/user-dirs.dirs ]; then
	xdg-user-dirs-update
	echo "Creating xdg-user-dirs "
else
	echo "user-dirs.dirs already exists"
fi
sleep 2
clear

# Downloading dotfiles
logo "Downloading dotfiles"
[ -d ~/cozy-gruvbox-openbox ] && rm -rf ~/cozy-gruvbox-bspwm
printf "Cloning rice from https://github.com/p3nguin-kun/cozy-gruvbox-openbox\n"
cd
git clone --depth=1 https://github.com/p3nguin-kun/cozy-gruvbox-openbox.git
sleep 2
clear

# Backup dotfiles
logo "Backing-up dotfiles"
printf "Backup files will be stored in %s%s%s/.RiceBackup%s \n\n" "${BLD}" "${CRE}" "$HOME" "${CNC}"
sleep 10

if [ ! -d "$backup_folder" ]; then
	mkdir -p "$backup_folder"
fi

for folder in btop calcurse dunst fish gtk-3.0 gtk-4.0 mpd ncmpcpp openbox neofetch picom ranger rofi sxhkd wallpapers xfce4; do
	if [ -d "$HOME/.config/$folder" ]; then
		mv "$HOME/.config/$folder" "$backup_folder/${folder}_$date"
		echo "$folder folder backed up successfully at $backup_folder/${folder}_$date"
	else
		echo "The folder $folder does not exist in $HOME/.config/"
	fi
done

for folder in chrome; do
	if [ -d "$HOME"/.mozilla/firefox/*.default-release/$folder ]; then
		mv "$HOME"/.mozilla/firefox/*.default-release/$folder "$backup_folder"/${folder}_$date
		echo "$folder folder backed up successfully at $backup_folder/${folder}_$date"
	else
		echo "The folder $folder does not exist in $HOME/.mozilla/firefox/"
	fi
done

for file in user.js; do
	if [ -e "$HOME"/.mozilla/firefox/*.default-release/$file ]; then
		mv "$HOME"/.mozilla/firefox/*.default-release/$file "$backup_folder"/${file}_$date
		echo "$file file backed up successfully at $backup_folder/${file}_$date"
	else
		echo "The file $file does not exist in $HOME/.mozilla/firefox/"
	fi
done

printf "%s%sDone!!%s\n\n" "${BLD}" "${CGR}" "${CNC}"
sleep 5

# Installing dotfiles
logo "Installing dotfiles.."
printf "Copying files to respective directories..\n"

[ ! -d ~/.config ] && mkdir -p ~/.config
[ ! -d ~/.themes ] && mkdir -p ~./themes

for archivos in ~/cozy-gruvbox-openbox/config/*; do
	cp -R "${archivos}" ~/.config/
	if [ $? -eq 0 ]; then
		printf "%s%s%s folder copied successfully!%s\n" "${BLD}" "${CGR}" "${archivos}" "${CNC}"
		sleep 1
	else
		printf "%s%s%s failed to been copied, you must copy it manually%s\n" "${BLD}" "${CRE}" "${archivos}" "${CNC}"
		sleep 1
	fi
done

for archivos in ~/cozy-gruvbox-openbox/fxcss/*; do
	cp -R "${archivos}" ~/.mozilla/firefox/*.default-release/
	if [ $? -eq 0 ]; then
		printf "%s%s%s folder copied successfully!%s\n" "${BLD}" "${CGR}" "${archivos}" "${CNC}"
		sleep 1
	else
		printf "%s%s%s failed to been copied, you must copy it manually%s\n" "${BLD}" "${CRE}" "${archivos}" "${CNC}"
		sleep 1
	fi
done

for archivos in ~/cozy-gruvbox-openbox/sddm-config/*; do
	sudo cp -R "${archivos}" /etc/
	if [ $? -eq 0 ]; then
		printf "%s%s%s folder copied successfully!%s\n" "${BLD}" "${CGR}" "${archivos}" "${CNC}"
		sleep 1
	else
		printf "%s%s%s failed to been copied, you must copy it manually%s\n" "${BLD}" "${CRE}" "${archivos}" "${CNC}"
		sleep 1
	fi
done

for archivos in ~/cozy-gruvbox-openbox/themes/*; do
	cp -R "${archivos}" ~/.themes/
	if [ $? -eq 0 ]; then
		printf "%s%s%s folder copied successfully!%s\n" "${BLD}" "${CGR}" "${archivos}" "${CNC}"
		sleep 1
	else
		printf "%s%s%s failed to been copied, you must copy it manually%s\n" "${BLD}" "${CRE}" "${archivos}" "${CNC}"
		sleep 1
	fi
done

# Configuring dotfiles
logo "Configuring dotfiles"
chmod -R +x ~/.config/openbox/scripts
chmod -R +x ~/.config/polybar
chmod -R +x ~/.config/rofi/launchers
chmod -R +x ~/.config/rofi/powermenu
chmod +x ~/.config/ranger/scope.sh

# Configuring pacman (for what???)
logo "Configuring pacman (for what???)"

grep "^Color" /etc/pacman.conf >/dev/null || sudo sed -i "s/^#Color$/Color/" /etc/pacman.conf
grep "ILoveCandy" /etc/pacman.conf >/dev/null || sudo sed -i "/#VerbosePkgLists/a ILoveCandy" /etc/pacman.conf
printf "%s%sDone!\n\n" "${BLD}" "${CGR}" "${CNC}"
sleep 2

# Disable currently enabled display manager
if systemctl list-unit-files | grep enabled | grep -E 'gdm|lightdm|lxdm|lxdm-gtk3|sddm|slim|xdm'; then
	echo "Disabling currently enabled display manager"
	sudo systemctl disable $(systemctl list-unit-files | grep enabled | grep -E 'gdm|lightdm|lxdm|lxdm-gtk3|sddm|slim|xdm' | awk -F ' ' '{print $1}')
fi

echo "Enabling SDDM"
sudo systemctl enable sddm

# Enabling services
logo "Enabling services"

systemctl --user enable mpd.service
systemctl --user start mpd.service
sudo systemctl enable pipewire pipewire-pulse wireplumber NetworkManager
printf "%s%sDone!%s\n\n" "${BLD}" "${CGR}" "${CNC}"
sleep 2

# Changing shell to fish and goodbye
logo "Changing default shell to fish"
printf "%s%sIf your shell is not fish will be changed now.\nYour root password is needed to make the change.\n\nAfter that is important for you to reboot.\n %s\n" "${BLD}" "${CYE}" "${CNC}"
if [[ $SHELL != "/usr/bin/fish" ]]; then
	echo "Changing shell to fish, your root pass is needed."
	chsh -s /usr/bin/fish
else
	printf "%s%sYour shell is already fish\nGood bye! installation finished, now reboot%s\n" "${BLD}" "${CGR}" "${CNC}"
	fish
fi