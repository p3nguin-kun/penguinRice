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
	echo  "                                 
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
printf '%s%sThis script will automatically install fully-featured tiling/floating window manager-based system on any Ubuntu system. \n\nMy dotfiles DO NOT modify any of your system configuration. \nYou will be prompted for your root password to install missing dependencies and/or to switch to fish shell if its not your default. \n\nThis script doesnt have potential power to break your system, it only copies files from my repo to your HOME directory. %s\n\n' "${BLD}" "${CRE}" "${CNC}"

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

dependencies="alacritty arandr bspwm btop calcurse curl dunst feh fish gtk2-engines-murrine gvfs i3-wm jq lightdm lightdm-gtk-greeter lxappearance menu-xdg mpc mpd mpv ncmpcpp neovim network-manager network-manager-gnome obconf openbox pamixer pavucontrol picom pipewire pipewire-pulse plank playerctl policykit-1-gnome polybar ranger rofi sed sxhkd thunar thunar-archive-plugin thunar-volman udisks2 ueberzug unrar unzip wireplumber xarchiver xbindkeys xdg-user-dirs-gtk xfce4-power-manager xfce4-screenshooter xorg xserver-xorg xss-lock zathura zathura-pdf-poppler zip"

#Installing packages
for pkg in $dependencies ; do
  if dpkg --get-selections | grep -q "^$pkg[[:space:]]*install$"; then
      echo "${GREEN}[  OK  ]${WHITE} Package skipped:   '$pkg' (already installed)"
        else
          if sudo apt-get -qq install $pkg; then
            echo "${GREEN}[  OK  ]${WHITE} Package installed: '$pkg'"
          else
            echo ""
            echo "Could not locate '$pkg', please install manually"
            echo ""
            sleep 2
          fi
  fi
done
clear

# Installing Brave (browser)
logo "Installing Brave (browser)"
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
if dpkg --get-selections | grep -q "brave-browser"; then
      echo "${GREEN}[  OK  ]${WHITE} Package skipped:   'brave-browser' (already installed)"
        else
          if sudo apt-get -qq install brave-browser; then
            echo "${GREEN}[  OK  ]${WHITE} Package installed: 'brave-browser'"
          else
            echo ""
            echo "Could not locate 'brave-browser', please install manually"
            echo ""
            sleep 2
          fi
  fi

# Installing betterlockscreen
logo "Installing betterlockscreen"
sudo apt install -y autoconf gcc make pkg-config libpam0g-dev libcairo2-dev libfontconfig1-dev libxcb-composite0-dev libev-dev libx11-xcb-dev libxcb-xkb-dev libxcb-xinerama0-dev libxcb-randr0-dev libxcb-image0-dev libxcb-util-dev libxcb-xrm-dev libxkbcommon-dev libxkbcommon-x11-dev libjpeg-dev
cd
rm -rf i3lock-color
git clone https://github.com/Raymo111/i3lock-color.git
cd i3lock-color
./install-i3lock-color.sh

cd
wget https://github.com/betterlockscreen/betterlockscreen/archive/refs/heads/main.zip
unzip main.zip
cd betterlockscreen-main/
chmod u+x betterlockscreen
sudo cp betterlockscreen /usr/local/bin/

# Installing lmaofetch
logo "Installing lmaofetch"
cd
rm -rf lmaofetch
git clone https://github.com/p3nguin-kun/lmaofetch && sudo cp ~/lmaofetch/lmaofetch /usr/bin/ && sudo chmod +x /usr/bin/lmaofetch

# Installing qogir-icon-theme
logo "Installing qogir-icon-theme"
cd
rm -rf Qogir-icon-theme
git clone https://github.com/vinceliuice/Qogir-icon-theme
cd Qogir-icon-theme
./install.sh

# Preparing folders
logo "Preparing Folders"
if [ ! -e $HOME/.config/user-dirs.dirs ]; then
	xdg-user-dirs-update
	echo "Creating xdg-user-dirs"
else
	echo "user-dirs.dirs already exists"
fi
sleep 2 
clear

# Downloading dotfiles
logo "Downloading dotfiles"
[ -d ~/penguinDotfiles ] && rm -rf ~/penguinDotfiles
printf "Cloning rice from https://github.com/p3nguin-kun/penguinDotfiles\n"
cd
git clone --depth=1 https://github.com/p3nguin-kun/penguinDotfiles.git
sleep 2
clear

# Backup dotfiles
logo "Backing-up dotfiles"
printf "Backup files will be stored in %s%s%s/.RiceBackup%s \n\n" "${BLD}" "${CRE}" "$HOME" "${CNC}"
sleep 10

if [ ! -d "$backup_folder" ]; then
	mkdir -p "$backup_folder"
fi

for folder in alacritty bspwm btop calcurse dunst fish gtk-3.0 gtk-4.0 i3 mpd ncmpcpp neofetch nvim openbox picom plank ranger rofi sxhkd wallpapers xfce4 zathura; do
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
		echo "The folder $folder does not exist in $HOME/.mozilla/firefox/"
	fi
done

printf "%s%sDone!!%s\n\n" "${BLD}" "${CGR}" "${CNC}"
sleep 5
clear

# Installing dotfiles
logo "Installing dotfiles.."
printf "Copying files to respective directories..\n"

[ ! -d ~/.config ] && mkdir -p ~/.config
[ ! -d ~/.themes ] && mkdir -p ~/.themes
mkdir -p ~/.fonts

for archivos in ~/penguinDotfiles/.config/*; do
	cp -R "${archivos}" ~/.config/
	if [ $? -eq 0 ]; then
		printf "%s%s%s folder copied succesfully!%s\n" "${BLD}" "${CGR}" "${archivos}" "${CNC}"
		sleep 1
	else
		printf "%s%s%s failed to been copied, you must copy it manually%s\n" "${BLD}" "${CRE}" "${archivos}" "${CNC}"
		sleep 1
	fi
done

for archivos in ~/penguinDotfiles/themes/*; do
	cp -R "${archivos}" ~/.themes/
	if [ $? -eq 0 ]; then
		printf "%s%s%s folder copied succesfully!%s\n" "${BLD}" "${CGR}" "${archivos}" "${CNC}"
		sleep 1
	else
		printf "%s%s%s failed to been copied, you must copy it manually%s\n" "${BLD}" "${CRE}" "${archivos}" "${CNC}"
		sleep 1
	fi
done

for archivos in ~/penguinDotfiles/wallpapers; do
	cp -R "${archivos}" ~/
	if [ $? -eq 0 ]; then
		printf "%s%s%s folder copied succesfully!%s\n" "${BLD}" "${CGR}" "${archivos}" "${CNC}"
		sleep 1
	else
		printf "%s%s%s failed to been copied, you must copy it manually%s\n" "${BLD}" "${CRE}" "${archivos}" "${CNC}"
		sleep 1
	fi
done

for archivos in ~/penguinDotfiles/fonts/*; do
	cp -R "${archivos}" ~/.fonts/
	if [ $? -eq 0 ]; then
		printf "%s%s%s folder copied succesfully!%s\n" "${BLD}" "${CGR}" "${archivos}" "${CNC}"
		sleep 1
	else
		printf "%s%s%s failed to been copied, you must copy it manually%s\n" "${BLD}" "${CRE}" "${archivos}" "${CNC}"
		sleep 1
	fi
done

clear

# Installing NvChad
[ -d ~/NvChad ] && rm -rf ~/NvChad
logo "Installing NvChad"
rm -rf ~/.local/share/nvim
rm -rf ~/.config/nvim
cd
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
clear

# Configuring dotfiles
logo "Configuring dotfiles"
chmod -R +x ~/.config/bspwm/
chmod -R +x ~/.config/openbox
chmod -R +x ~/.config/i3
chmod -R +x ~/.config/style
chmod +x ~/.config/sxhkd/sxhkdrc
chmod -R +x ~/.config/polybar
chmod -R +x ~/.config/rofi
chmod +x ~/.config/ranger/scope.sh
cp /etc/X11/xinit/xinitrc .xinitrc
echo "exec bspwm" >>.xinitrc
touch ~/.Xresources
printf "Xcursor.theme: Qogir-dark\nXcursor.size: 16" >>~/.Xresources
clear

# Configuring fonts
logo "Configuring fonts"
sudo fc-cache
clear

# Disable currently enabled display manager
if systemctl list-unit-files | grep enabled | grep -E 'gdm|lightdm|lxdm|lxdm-gtk3|sddm|slim|xdm'; then
	echo "Disabling currently enabled display manager"
	sudo systemctl disable $(systemctl list-unit-files | grep enabled | grep -E 'gdm|lightdm|lxdm|lxdm-gtk3|sddm|slim|xdm' | awk -F ' ' '{print $1}')
fi

echo "Enabling LightDM"
sudo systemctl enable lightdm
clear

# Enabling services
logo "Enabling services"

systemctl --user enable mpd.service
systemctl --user start mpd.service
sudo systemctl enable NetworkManager
systemctl --user enable pipewire pipewire-pulse wireplumber
printf "%s%sDone!%s\n\n" "${BLD}" "${CGR}" "${CNC}"
sleep 2
clear

# Removing unneeded files
logo "Removing unneeded files"
cd
rm -rf betterlockscreen-main i3lock-color lmaofetch Qogir-icon-theme

# Changing shell to fish and goodbye
logo "Changing default shell to fish"
chsh -s /usr/bin/fish
printf "Goodbye and see you again! Now reboot."
