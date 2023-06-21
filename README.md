# ***penguinRice***

# ***Note: I don't use GitHub anymore. Please switch to Codeberg***
https://codeberg.org/p3nguin-kun/penguinRice

[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fp3nguin-kun%2FpenguinRice&count_bg=%2379C83D&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=Views&edge_flat=true)](https://hits.seeyoufarm.com)
![lmao](https://img.shields.io/github/repo-size/p3nguin-kun/penguinRice?color=458588&style=for-the-badge)
![GitHub Repo stars](https://img.shields.io/github/stars/p3nguin-kun/penguinRice?color=ebdbb2&style=for-the-badge)
![GitHub issues](https://img.shields.io/github/issues/p3nguin-kun/penguinRice?color=cc241d&style=for-the-badge)
![GitHub pull requests](https://img.shields.io/github/issues-pr/p3nguin-kun/penguinRice?color=689d6a&style=for-the-badge)

- 👩‍💻 ***Author***: [@p3nguin-kun](https://github.com/p3nguin-kun)
- 🌐 ***Website***: https://p3nguin-kun.github.io/penguinRice
- ***Wiki***: https://github.com/p3nguin-kun/penguinRice/wiki
- 🗨️ ***Discord server***: [penguin clan](https://discord.gg/https://discord.gg/yzn442FGuZ)

***Status***: Complete

**[Ubuntu](https://ubuntu.com) is bloated! [Arch Linux](https://archlinux.org) with [penguinRice](https://p3nguin-kun.github.io/penguinRice/) is better! <(￣︶￣)>**

**This script will automatically install fully-featured tiling/floating window manager-based system on any Arch Linux or Arch-based distro.**

Showcase video:

[<img src="https://img.youtube.com/vi/aYcmIjYeFaU/maxresdefault.jpg" width="600" height="300"/>](https://www.youtube.com/embed/aYcmIjYeFaU)

# ***Menu***
- [Screenshots](#screenshots)
- [Packages](#-packages)
- [Types of penguinRice users](#-types-of-penguinrice-users)
- [What does this script do?](#-what-does-this-script-do)
- [Style selector](#style-selector)
- [Installation](#%EF%B8%8F-installation)
- [Tutorial](#-tutorial)
- [Support](#-support)

# ***Screenshots***

| Everforest | Tokyo Night | Gruvbox |
| :--------: | :---------: | :-----: |
| ![bspwm](https://i.imgur.com/Dff0iNs.png) | ![img](https://i.imgur.com/8ukG2qw.png) | ![img](https://i.imgur.com/RnDNwKk.png) |
| Nord | Catppuccin | Dracula |
| ![img](https://i.imgur.com/EvaZ5cR.png) | ![img](https://i.imgur.com/u94BEgG.png) | ![img](https://i.imgur.com/IWkbOb4.png) |

# 📦 ***Packages***
- 🔴 ***Dotfiles***: [penguinDotfiles](https://github.com/p3nguin-kun/penguinDotfiles)
- 🪟 ***Window Manager***: [i3](https://i3wm.org), [bspwm](https://github.com/baskerville/bspwm) and [Openbox](http://openbox.org/wiki/Main_Page)
- 📊 ***Status bar***: [polybar](https://github.com/polybar/polybar), [plank](https://launchpad.net/plank) (openbox)
- 👨‍💻 ***Terminal***: [alacritty](https://alacritty.org/)
- 🌐 ***Browser***: [Firefox](https://www.mozilla.org/en-US/firefox/) with [NvChad](https://github.com/NvChad/NvChad)
- 🗂️ ***File Manager***: [ranger](https://ranger.github.io/) and [Thunar](https://docs.xfce.org/xfce/thunar/start) (Openbox only)
- 🐚 ***Shell***: [fish](https://fishshell.com/)
- 🏘️ ***Launcher***: [Rofi](https://github.com/davatorium/rofi)
- 📄 ***Text editor***: [NeoVim](https://neovim.io) with [penguinVim](https://p3nguin-kun.github.io/penguinVim)
- 📄 ***PDF Viewer***: [zathura](https://pwmt.org/projects/zathura/)
- 📅 ***Calendar***: [calcurse](https://calcurse.org/)
- 🎞️ ***Media player***: [mpv](https://mpv.io) and [ncmpcpp](https://github.com/ncmpcpp/ncmpcpp)
- 🖼️ ***Photo viewer***: [feh](https://feh.finalrewind.org/)
- ℹ️ ***Fetch***: [lmaofetch](https://github.com/p3nguin-kun/lmaofetch)
- 📊 ***System monitor***: [btop](https://github.com/aristocratos/btop)
- 🖥️ ***Manage screens***: [ARandR](https://christian.amsuess.com/tools/arandr/)
- 🔔 ***Notification***: [dunst](https://dunst-project.org/)
- 🖵 ***Compositor***: [picom](https://github.com/yshui/picom)
- 🔒 ***Lockscreen***: [betterlockscreen](https://github.com/betterlockscreen/betterlockscreen)

# 👩‍💻 ***Types of penguinRice users***
- People who already know their stuff and just want to automate installing a system without doing the boring stuff you’ve done a million times.
- Those who want to use hacker computer setup like in many movies.
- People who want to automatically rice their Linux desktop.
- Who want productivity Linux desktop for study and work.
- Those who spend a whole day to install Arch Linux manually but lazy  to rice, config

# 📃 ***What does this script do?***
- Install some necessary packages such as Firefox, LibreOffice, NeoVim, ...
- Automatically rice tiling window manager
- Automatically config software such as neovim, neofetch, dunst, pacman (for what?), ...
- Customize your computer
- Automatically install yay, an AUR helper
- Config Firefox with FirefoxCSS, harden with arkenfox user.js and install uBlock Origin
- Change ```Caps Lock``` to ```Escape``` (because nobody use Caps Lock)

# ***Style selector***
penguinRice now has style selector for people want to change desktop's style, just press ```Alt + space``` and style selector will appear on your screen

![img](https://i.imgur.com/NcyrQcw.png)

# 🛠️ ***Installation***

***Note: You need to login as normal user to use this script***

1. Install [Arch Linux](https://archlinux.org) or any Arch-based distro
> You can use [archinstall](https://wiki.archlinux.org/title/archinstall) to install [Arch Linux](https://archlinux.org) (Choose Minimal profile)

2. Install [Git](https://git-scm.com/) if you don't have it
```
sudo pacman -S git
```

3. Clone this repository
```
git clone https://github.com/p3nguin-kun/penguinRice
```

4. Go to [penguinRice](https://p3nguin-kun.github.io/penguinRice) directory
```
cd penguinRice
```

5. Run this script
```
sh penguinrice.sh
```

6. Follow the instruction

7. Restart your computer

8. Done! Now you can use fully-featured floating/tiling window manager on your computer

# 📑 ***Tutorial***
- penguinRice has a keybinding list, you can read it by pressing ``` Super + ` ``` or click [here](https://github.com/p3nguin-kun/penguinRice/wiki/Keybindings-and-commands)
- You can read penguinRice's wiki [here](https://github.com/p3nguin-kun/penguinRice/wiki)
# ***Contributions***

1. Fork this project.
2. Edit the scripts, add/edit the keybindings.
3. Make a pull request.

# 💝 Support

If you like penguinRice and would like to support & appreciate it via donation then I'll gladly accept it.

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/C0C6LA1W6)
[![paypal](https://camo.githubusercontent.com/fd64c51a4afd8b4e2b84479f9a2b654084602bd15f25ab31cbd7a679d73d129a/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f50617950616c2d3030343537433f7374796c653d666f722d7468652d6261646765266c6f676f3d70617970616c266c6f676f436f6c6f723d7768697465)](https://paypal.me/p3nguinkun)
