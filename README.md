# ***penguinRice***

- ***author***: [p3nguin-kun](https://github.com/p3nguin-kun)
- ***wiki***: https://github.com/p3nguin-kun/penguinRice/wiki
- ***discord server***: [penguin clan](https://discord.gg/https://discord.gg/yzn442FGuZ)

**this script will automatically install fully-featured tiling/floating window manager-based system on any supported Linux distro.**

# ***menu***
- [screenshots](#screenshots)
- [packages](#packages)
- [types of penguinRice users](#types-of-penguinrice-users)
- [what does this script do?](#what-does-this-script-do)
- [style selector](#style-selector)
- [installation](#installation)
- [tutorial](#tutorial)
- [support](#support)

# ***screenshots***

| ***everforest*** | ***tokyo night*** | ***gruvbox*** |
| :--------: | :---------: | :-----: |
| ![img](https://i.imgur.com/bDQsb9t.png) | ![img](https://i.imgur.com/bW1LzHu.png) | ![img](https://i.imgur.com/XE0IoTx.png) |
| ***nord*** | ***catppuccin*** | ***dracula*** |
| ![img](https://i.imgur.com/LOZ4VTD.png) | ![img](https://i.imgur.com/49ohjOd.png) | ![img](https://i.imgur.com/QuiN2wr.png) |
| ***monochrome*** |
| ![img](https://i.imgur.com/lyDNUkM.png) |

# ***packages***
- ***dotfiles***: [penguinDotfiles](https://github.com/p3nguin-kun/penguinDotfiles), [penguinDotfiles-void](https://github.com/p3nguin-kun/penguinDotfiles-void)
- ***window manager***: [i3](https://i3wm.org), [bspwm](https://github.com/baskerville/bspwm) and [openbox](http://openbox.org/wiki/Main_Page)
- ***terminal***: [alacritty](https://alacritty.org/)
- ***browser***: [librewolf](https://librewolf.net/)  (i use librewolf-bin because my computer cant compile librewolf)
- ***file manager***: [ranger](https://ranger.github.io/) and [thunar](https://docs.xfce.org/xfce/thunar/start)
- ***launcher***: [rofi](https://github.com/davatorium/rofi)
- ***text editor***: [neovim](https://neovim.io) with [nvchad](https://github.com/NvChad/NvChad)
- ***pdf viewer***: [zathura](https://pwmt.org/projects/zathura/)
- ***calendar***: [calcurse](https://calcurse.org/)
- ***video player***: [mpv](https://mpv.io)
- ***music player***: [ncmpcpp](https://github.com/ncmpcpp/ncmpcpp)
- ***fetch***: [lmaofetch](https://github.com/p3nguin-kun/lmaofetch)
- ***system monitor***: [btop](https://github.com/aristocratos/btop)
- ***lockscreen***: [betterlockscreen](https://github.com/betterlockscreen/betterlockscreen)

# ***types of penguinRice users***
- people who already know their stuff and just want to automate installing a system without doing the boring stuff you’ve done a million times.
- those who want to use hacker computer setup like in many movies.
- people who want to automatically rice their Linux desktop.
- who want productivity Linux desktop for study and work.
- those who spend a whole day to install Arch Linux manually but lazy to rice their system

# ***what does this script do?***
- install some necessary packages such as brave, neovim, ...
- rice your system
- config some packages like nvim, ncmpcpp, ...
- install yay, an AUR helper

# ***style selector***
penguinRice now has style selector for people want to change desktop's style, just press ```Alt + space``` and style selector will appear on your screen

![img](https://i.imgur.com/KaAwop3.png)

# ***installation***

***note: you need to login as normal user to use this script***

1. install [Git](https://git-scm.com/) if you don't have it
```
sudo pacman -S git  (arch linux or arch-based distro)
sudo xbps-install -S git  (void linux)
```

2. clone this repository
```
git clone https://github.com/p3nguin-kun/penguinRice
```

3. go to penguinRice directory
```
cd penguinRice
```

4. run this script
```
sh penguinrice-arch.sh  (arch linux or arch-based distro)
sh penguinrice-void.sh  (void linux)
sh penguinrice-artixrunit.sh  (artix linux, enable arch repo before run this script)
```

5. follow the instruction

6. restart your computer

7. done! Now you can use fully-featured floating/tiling window manager on your computer

# ***tutorial***
- penguinRice has a keybinding list, you can read it by pressing ``` Super + ` ``` or click [here](https://github.com/p3nguin-kun/penguinRice/wiki/2.-Keybindings-and-commands)
- you can read penguinRice's wiki [here](https://github.com/p3nguin-kun/penguinRice/wiki)

# ***contributions***

1. fork this project.
2. edit the scripts, add/edit the keybindings.
3. make a pull request.
