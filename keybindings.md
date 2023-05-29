# ***Keybindings and commands for penguinRice***

## ***Contents***
1. [i3 (window manager)](#i3-window-manager)
2. [BSPWM (window manager)](#bspwm-window-manager)
3. [Ranger (file manager)](#ranger-file-manager)
4. [ncmpcpp (music player)](#ncmpcpp-music-player)

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

## ***BSPWM (window manager)***

### ***Super key***
By default, ``` Super key ``` will be ``` Windows key ```

### ***Common keybindings***
- ```Super + Enter``` - Start terminal
- ```Super + Space``` - Start application launcher
- ```Super + w``` - Close/kill focused window
- ```Super + Shift + w``` - Close/kill all windows
- ```Super + Shift + e``` - Start power menu
- ```Super + Backspace``` - Lock screen
- ```Super + 1/2/3/4/...``` - Change workspaces
- ```Super + Alt + q / r``` - Quit | Restart BSPWM
- ```Super + Esc``` - Restart SXHKD
- ```PrtScn``` - Take screenshot

### ***Manage windows***

#### ***Change window state/flags***
- ```Super + t/shift + t/s/f``` - Set the window state (Tiled, Pseudo Tiled, Floating, Fullscreen)
- ```Super + Ctrl + m/x/y/z``` - Set the window flags (Marked, Locked, Sticky, Private)

#### ***Change window focus***
- ``` Super + h ``` or ``` Super + Left ``` - Focus left
- ``` Super + j ``` or ``` Super + Down ``` - Focus down
- ``` Super + k ``` or ``` Super + Up ``` - Focus up
- ``` Super + l ``` or ``` Super + Right ``` - Focus right
- ```Super (+ Shift) + c``` - Focus the next/previous window
- ```Super + [ / ]``` - Focus the next/previous desktop
- ```Super + Tab``` - Focus the last window/desktop
- ```Super (+ Shift) + 1/2/3/4...``` - Focus desktop/send window to desktop

#### ***Move/resize focused window***
- ``` Super + Shift + h ``` or ``` Super + Shift + Left ``` - Move left
- ``` Super + Shift + j ``` or ``` Super + Shift + Down ``` - Move down
- ``` Super + Shift + k ``` or ``` Super + Shift + Up ``` - Move up
- ``` Super + Shift + l ``` or ``` Super + Shift + Right ``` - Move right
- ``` Super + Alt + h/j/k/l``` or ```Super + Alt + Left/Down/Up/Right``` - Expand window
- ```Super + Alt + Shift + h/j/k/l``` - Contract window
- ```Super + LMB``` - Move window with left mouse button
- ```Super + RMB``` - Resize window with right mouse button

#### ***Preselect***
- ```Super + Ctrl + h/j/k/l``` - Preselect the direction
- ```Super + Ctrl + 1/2/3/4/...``` - Preselect the ratio
- ```Super + Ctrl + Space``` - Cancel the preselection for focused window
- ```Super + Ctrl + Shift + Space``` - Cancel the preselection for focused desktop

## ***Ranger (file manager)***

### ***General***
-```ranger```- Open ranger in terminal
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

## ***ncmpcpp (music player)***

### ***General***
- ```ncmpcpp``` - Open ncmpcpp in terminal
- ```q``` - Quit ncmpcpp
- ```:``` - Execute command
- ```F1``` - Show help
- ```u``` - Update database
- ```1``` - Show playlists
- ```2``` - Show browser
- ```3``` - Show search engine
- ```4``` - Show media library
- ```5``` - Playlist editor
- ```6``` - Tag editor
- ```7``` - Change output
- ```8``` - Show visualizer
- ```+``` - Show clock
- ```.``` - Show lyrics
- ```@``` - Show server info
- ```\``` - Toggle user interface
- ```!``` - Toggle displaying separators between albums
- ```i``` - Show song info
- ```I``` - Show artist info
- ```L``` - Toggle lyrics fetcher
- ```F``` - Toggle fetching lyrics for playing songs in background
- ```|``` - Toggle mouse support
- ```P``` - Toggle display mode

### ***Navigation***
- ```Up```/```k``` - Move cursor up
- ```Down```/```j``` - Move cursor down
- ```[``` - Move cursor up one album
- ```]``` - Move cursor down one album
- ```{``` - Move cursor up one artist
- ```}``` - Move cursor down one artist
- ```Page Up``` - Page up
- ```Page Down``` - Page down
- ```Home``` - Home
- ```End``` - End
- ```Tab``` - Switch to next screen in sequence
```Shift + Tab``` - Switch to previous screen in sequence

### ***Music control***
- ```p``` - Play/pause
- ```s``` - Stop
- ```Ctrl + h```/```Backspace``` - Replay playing song
- ```-```/```=``` or ```Left```/```Right``` - Decrase/increase volume
- ```<```/```>``` - Next/previous track
- ```r```,```z```,```y```,```R```,```x``` - Toggle mode (repeat, random, single, cosume, crossfade)
- ```f```/```b``` - Seek forward/backward

### ***Playlist***
- ```Enter``` - Play selected item
- ```Delete``` - Delete selected item(s) from playlist
- ```c``` - Clear playlist
- ```C``` - Clear playlist except selected item(s)
- ```Ctrl + p``` - Set priority of selected items
- ```Ctrl + k```/```m``` - Move selected item(s) up
- ```n```/```Ctrl + j``` - Move selected item(s) down
- ```M``` - Move selected item(s) to cursor position
- ```A``` - Add item to playlist
- ```e``` - Edit song
- ```S``` - Save playlist
- ```Ctrl + v``` - Sort playlist
- ```Ctrl + R``` - Reverse playlist
- ```o``` - Jump to current song
- ```U``` - Toggle playing song centering

