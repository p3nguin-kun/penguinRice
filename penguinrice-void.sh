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
	echo "                                 
  penguinRice\n\n"
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
printf '%s%sThis script will automatically install fully-featured tiling/floating window manager-based system on any Void Linux system. \n\nMy dotfiles DO NOT modify any of your system configuration. \nYou will be prompted for your root password to install missing dependencies and/or to switch to fish shell if its not your default. \n\nThis script doesnt have potential power to break your system, it only copies files from my repo to your HOME directory. %s\n\n' "${BLD}" "${CRE}" "${CNC}"

while true; do
	read -rp " Do you want to continue? [y/n]: " yn
	case $yn in
	[Yy]*) break ;;
	[Nn]*) exit ;;
	*) printf "Just write 'y' or 'n'\n\n" ;;
	esac
done
clear

# Update system
logo "Updating system"
sudo xbps-install -Syuv
printf "%s%sDone!!%s\n\n" "${BLD}" "${CGR}" "${CNC}"
sleep 1
clear

# Install X.Org
logo "Installing X.Org"
sudo xbps-install -Sy xorg
printf "%s%sDone!!%s\n\n" "${BLD}" "${CGR}" "${CNC}"
sleep 2
clear

# Install Pipewire (audio)
logo "Installing Pipewire (audio)"
sudo xbps-install -Sy pipewire
printf "%s%sDone!!%s\n\n" "${BLD}" "${CGR}" "${CNC}"
sleep 2
clear

# Install non-free repo
logo "Installing non-free repo"
sudo xbps-install void-repo-nonfree
sudo xbps-install -Syuv
sleep 2
clear

# Install xbps-src
# logo "Installing xbps-src"
#[ -d ~/void-packages ] && rm -rf ~/void-packages
#cd
#git clone https://github.com/void-linux/void-packages
#cd void-packages
#./xbps-src binary-bootstrap
#sleep 2
#clear

# Install packages
logo "Installing needed packages"

sudo xbps-install -Sy alacritty arandr betterlockscreen bspwm btop calcurse curl dragon dunst feh firefox fish-shell git gtk-engine-murrine gvfs gvfs-afc gvfs-mtp gvfs-smb i3 i3lock-color inetutils jq lightdm lightdm-webkit2-greeter lxappearance mpc mpd mpv ncmpcpp neofetch neovim NetworkManager network-manager-applet obconf openbox pamixer papirus-icon-theme pavucontrol picom plank playerctl polkit-gnome polybar ranger rofi sed sxhkd Thunar thunar-archive-plugin thunar-volman font-sarasa-gothic udisks2 ueberzug unrar unzip xarchiver xbindkeys xclip xdg-user-dirs-gtk xfce4-power-manager xfce4-screenshooter xss-lock zathura zathura-pdf-mupdf zip

sleep 1
clear

# Preparing folders
logo "Preparing Folders"
if [ ! -e $HOME/.config/user-dirs.dirs ]; then
	xdg-user-dirs-update
	echo "Creating xdg-user-dirs"
else
	echo "user-dirs.dirs already exists"
fi
sleep 1
clear

# Downloading dotfiles
logo "Downloading dotfiles"
[ -d ~/penguinDotfiles-void ] && rm -rf ~/penguinDotfiles-void
[ -d ~/penguinFox ] && rm -rf ~/penguinFox
printf "Cloning rice from https://github.com/p3nguin-kun/penguinDotfiles-void\n"
cd
git clone --depth=1 https://github.com/p3nguin-kun/penguinDotfiles-void.git
printf "Cloning rice from https://github.com/p3nguin-kun/penguinFox\n"
cd
git clone --depth=1 https://github.com/p3nguin-kun/penguinFox.git
printf "%s%sDone!!%s\n\n" "${BLD}" "${CGR}" "${CNC}"
sleep 1
clear


# Backup dotfiles
logo "Backing-up dotfiles"
printf "Backup files will be stored in %s%s%s/.RiceBackup%s \n\n" "${BLD}" "${CRE}" "$HOME" "${CNC}"
sleep 1

if [ ! -d "$backup_folder" ]; then
	mkdir -p "$backup_folder"
fi

for folder in alacritty bspwm btop calcurse dunst fish gtk-3.0 gtk-4.0 i3 mpd ncmpcpp neofetch nvim openbox picom plank ranger rofi sxhkd sv wallpapers xfce4 zathura; do
	if [ -d "$HOME/.config/$folder" ]; then
		mv "$HOME/.config/$folder" "$backup_folder/${folder}_$date"
		echo "$folder folder backed up successfully at $backup_folder/${folder}_$date"
	else
		echo "The folder $folder does not exist in $HOME/.config/"
	fi
done

for folder in wallpapers; do
	if [ -d "$HOME"/$folder ]; then
		mv "$HOME"/$folder "$backup_folder"/${folder}_$date
		echo "$folder folder backed up successfully at $backup_folder/${folder}_$date"
	else
		echo "The folder $folder does not exist in $HOME"
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

for file in user.js prefs.js; do
	if [ -e "$HOME"/.mozilla/firefox/*.default-release/$file ]; then
		mv "$HOME"/.mozilla/firefox/*.default-release/$file "$backup_folder"/${file}_$date
		echo "$file file backed up successfully at $backup_folder/${file}_$date"
	else
		echo "The file $file does not exist in $HOME/.mozilla/firefox/"
	fi
done

printf "%s%sDone!!%s\n\n" "${BLD}" "${CGR}" "${CNC}"
sleep 1
clear

# Installing dotfiles
logo "Installing dotfiles.."
printf "Copying files to respective directories..\n"

[ ! -d ~/.config ] && mkdir -p ~/.config
[ ! -d ~/.themes ] && mkdir -p ~/.themes
[ ! -d ~/.fonts ] && mkdir -p ~/.fonts
[ ! -d ~/.local/share/applications ] && mkdir -p ~/.local/share/applications

for archivos in ~/penguinDotfiles-void/config/*; do
	cp -R "${archivos}" ~/.config/
	if [ $? -eq 0 ]; then
		printf "%s%s%s folder copied succesfully!%s\n" "${BLD}" "${CGR}" "${archivos}" "${CNC}"
	else
		printf "%s%s%s failed to been copied, you must copy it manually%s\n" "${BLD}" "${CRE}" "${archivos}" "${CNC}"
		sleep 1
	fi
done

for archivos in ~/penguinDotfiles-void/themes/*; do
	cp -R "${archivos}" ~/.themes/
	if [ $? -eq 0 ]; then
		printf "%s%s%s folder copied succesfully!%s\n" "${BLD}" "${CGR}" "${archivos}" "${CNC}"
	else
		printf "%s%s%s failed to been copied, you must copy it manually%s\n" "${BLD}" "${CRE}" "${archivos}" "${CNC}"
		sleep 1
	fi
done

for archivos in ~/penguinDotfiles-void/fonts/*; do
	cp -R "${archivos}" ~/.fonts/
	if [ $? -eq 0 ]; then
		printf "%s%s%s folder copied succesfully!%s\n" "${BLD}" "${CGR}" "${archivos}" "${CNC}"
	else
		printf "%s%s%s failed to been copied, you must copy it manually%s\n" "${BLD}" "${CRE}" "${archivos}" "${CNC}"
		sleep 1
	fi
done

for archivos in ~/penguinDotfiles-void/lightdm-config/*; do
	sudo cp -R "${archivos}" /etc/lightdm/
	if [ $? -eq 0 ]; then
		printf "%s%s%s folder copied succesfully!%s\n" "${BLD}" "${CGR}" "${archivos}" "${CNC}"
	else
		printf "%s%s%s failed to been copied, you must copy it manually%s\n" "${BLD}" "${CRE}" "${archivos}" "${CNC}"
		sleep 1
	fi
done

for archivos in ~/penguinDotfiles-void/wallpapers; do
	cp -R "${archivos}" ~/
	if [ $? -eq 0 ]; then
		printf "%s%s%s folder copied succesfully!%s\n" "${BLD}" "${CGR}" "${archivos}" "${CNC}"
	else
		printf "%s%s%s failed to been copied, you must copy it manually%s\n" "${BLD}" "${CRE}" "${archivos}" "${CNC}"
		sleep 1
	fi
done

for archivos in ~/penguinDotfiles-void/misc/applications/*; do
  cp -R "${archivos}" ~/.local/share/applications/
  if [ $? -eq 0 ]; then
	printf "%s%s%s file copied succesfully!%s\n" "${BLD}" "${CGR}" "${archivos}" "${CNC}"
  else
	printf "%s%s%s failed to been copied, you must copy it manually%s\n" "${BLD}" "${CRE}" "${archivos}" "${CNC}"
	sleep 1
  fi
done

for archivos in ~/penguinFox/*; do
	cp -R "${archivos}" ~/.mozilla/firefox/*.default-release/
	if [ $? -eq 0 ]; then
		printf "%s%s%s folder copied succesfully!%s\n" "${BLD}" "${CGR}" "${archivos}" "${CNC}"
	else
		printf "%s%s%s failed to been copied, you must run sh ~/penguinFox/penguinfox-installer.sh or copy it manually%s\n" "${BLD}" "${CRE}" "${archivos}" "${CNC}"
		sleep 1
	fi
done

printf "%s%sDone!\n\n" "${BLD}" "${CGR}" "${CNC}"
sleep 1
clear

# Installing NvChad
[ -d ~/NvChad ] && rm -rf ~/NvChad
logo "Installing NvChad"
rm -rf ~/.local/share/nvim
rm -rf ~/.config/nvim
cd
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
printf "%s%sDone!\n\n" "${BLD}" "${CGR}" "${CNC}"
sleep 1
clear

# Configuring dotfiles
logo "Configuring dotfiles"
chmod -R +x ~/.config/
cp /etc/X11/xinit/xinitrc .xinitrc
touch ~/.Xresources
printf "Xcursor.theme: Qogir-dark\nXcursor.size: 16" >>~/.Xresources
printf "%s%sDone!\n\n" "${BLD}" "${CGR}" "${CNC}"
sleep 1
clear

# Install LightDM theme
[ -d ~/lightdm-minimal ] && rm -rf ~/lightdm-minimal
logo "Installing LightDM theme"
cd
git clone https://github.com/p3nguin-kun/lightdm-minimal
sudo cp -R ~/lightdm-minimal /usr/share/lightdm-webkit/themes/minimal
printf "%s%sDone!\n\n" "${BLD}" "${CGR}" "${CNC}"
sleep 1

# Disable currently enabled display manager
if ls /var/service/ | grep -E 'gdm|lightdm|lxdm|lxdm-gtk3|sddm|slim|xdm'; then
	echo "Disabling currently enabled display manager"
	sudo rm /var/service/$(ls /var/service/ | grep -E 'gdm|lightdm|lxdm|lxdm-gtk3|sddm|slim|xdm')
fi

echo "Enabling LightDM"
sudo ln -s /etc/sv/lightdm /var/service/
printf "%s%sDone!%s\n\n" "${BLD}" "${CGR}" "${CNC}"
sleep 1
clear

# Enabling services
logo "Enabling services"
sudo ln -s /etc/sv/NetworkManager /var/service/
printf "%s%sDone!%s\n\n" "${BLD}" "${CGR}" "${CNC}"
sleep 1
clear

# Changing shell to fish and goodbye
logo "Changing default shell to fish"
printf "%s%sIf your shell is not fish will be changed now.\nYour root password is needed to make the change.\n\nAfter that is important for you to reboot.\n %s\n" "${BLD}" "${CYE}" "${CNC}"
if [ $SHELL != "/usr/bin/fish" ]; then
	echo "Changing shell to fish, your root pass is needed."
	chsh -s /usr/bin/fish
else
	printf "%s%sYour shell is already fish\nGood bye! installation finished, now reboot%s\n" "${BLD}" "${CGR}" "${CNC}"
fi
