# ***Keybindings and commands for penguinRice***

## ***Contents***
1. [i3 (window manager)](#i3-window-manager)
2. [Ranger (file manager)](#ranger-file-manager)

## ***i3 (window manager)***

### ***Mod key***
By default, ``` Mod key ``` will be ``` Windows key ``` or ``` Super key ```, but you can switch to ``` Alt key ``` in ~/.config/i3/config

### ***Full keybinding list***
``` Mod + ` ```

### ***Common keybindings***
- ``` Mod + d ``` - Start application launcher
- ``` Mod + Return ``` - Start terminal
- ``` Mod + q ``` - Kill focused window
- ``` Mod + Shift + e ``` - Power menu
- ``` Mod + 1/2/3/4/... ``` or ``` Mod + Tab ``` - Change workspace
- ``` Mod + Backspace ``` - Lock the system
- ``` Mod + t ``` - Window switcher menu
- ``` Mod + Shift + c ``` - Reload the configuration file
- ``` Mod + Shift + r ``` - Restart i3
- ``` Mod + p ``` - Redirect sound to headphones/speakers
- ``` PrtScn ``` - Take screennshot

### ***Manage windows***

#### ***Change window focus***
- ``` Mod + h ``` or ``` Mod + Left ``` - Focus left
- ``` Mod + j ``` or ``` Mod + Down ``` - Focus down
- ``` Mod + k ``` or ``` Mod + Up ``` - Focus up
- ``` Mod + l ``` or ``` Mod + Right ``` - Focus right

#### ***Move focused window***
- ``` Mod + Shift + h ``` or ``` Mod + Shift + Left ``` - Move left
- ``` Mod + Shift + j ``` or ``` Mod + Shift + Down ``` - Move down
- ``` Mod + Shift + k ``` or ``` Mod + Shift + Up ``` - Move up
- ``` Mod + Shift + l ``` or ``` Mod + Shift + Right ``` - Move right

#### ***Change container layout***
- ``` Mod + s ``` - Stacking
- ``` Mod + w ``` - Tabbed
- ``` Mod + e ``` - Toggle split

#### ***Use mouse to manage windows***
- ``` Mod + LMB ``` - Move window / move floating window
- ``` Mod + RMB ``` - Resize floating window

#### ***Other manage windows keybindings***
- ``` Mod + f ``` - Enter fullscreen mode
- ``` Mod + Shift + Space ``` - Toggle tiling/floating
- ``` Mod + Space ``` - Change focus between tiling/floating windows
- ``` Mod + a ``` - Focus the parent container

## ***Ranger (file manager)***

### ***General***
- ```Q```, ```q```, ```ZZ```, ```ZQ```, ```:q```, ```:quit```  or ```:exit``` - Quit ranger
- ```R``` - Reload current directory
- ```?``` - View manpages/shortcuts
- ```:```, ```;```, ```!``` - Console

### ***Navigation***

- ```H``` or ```Left``` - Move left
- ```J``` or ```Down``` - Move down
- ```K``` or ```Up``` - Move up
- ```L``` or ```Right``` - Move right
- ```gg``` - Go to top of list
- ```G``` - Go to bottom of list
- ```J``` - Half page down
- ```K``` - Half page up
- ```H``` - History back
- ```L``` - History forward
- ```~``` or ```:set viewmode!``` - Change viewmode 
- ```Alt + 1/2/3/4/...``` - Go to tab 1/2/3/4/...
- ```Tab``` - Next tab
- ```Shift + Tab``` - Previous tab

### ***File operation***
- ```r``` or ```:open_with``` - Open file with
- ```yy``` or ```:copy``` - Copy file
- ```pp``` or ```:paste``` - Paste file
- ```dd``` or ```:cut``` - Cut file
- ```:mkdir``` - New folder
- ```:touch ``` - New file
- ```dD```, ```Delete``` or ```:delete``` - Delete file
- ```cw``` or ```:rename``` - Rename file
- ```zh```, ```Backspace``` or ```:set show_hidden!``` - Show hidden files
- ```/``` or ```:search``` - Search files
- ```+```, ```-```, ```=``` or ```:chmod``` - Change file permission
- ```n``` - Next match
- ```N``` - Previous match
- ```o``` - Sort
- ```u``` - Undo
- ```z``` - Change settings
