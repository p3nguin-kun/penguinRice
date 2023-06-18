# ***Keybindings and commands for penguinRice***

## ***Contents***
1. [i3 (window manager)](#i3-window-manager)
2. [BSPWM (window manager)](#bspwm-window-manager)
3. [Openbox (window manager)](#openbox-window-manager)
4. [Ranger (file manager)](#ranger-file-manager)
5. [NeoVim (text editor)](#neovim-text-editor)
6. [ncmpcpp (music player)](#ncmpcpp-music-player)
7. [Calcurse (calendar)](#calcurse-calendar)
8. [zathura (pdf viewer)](#zathura-pdf-viewer)

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
- ``` Mod + 1/2/3/4/... ``` - Change workspace
- ``` Mod + Backspace ``` - Lock the system
- ``` Mod + Tab ``` - Window switcher menu
- ``` Alt + Space ``` - Change style
- ``` Mod + Shift + c ``` - Reload the configuration file
- ``` Mod + Shift + r ``` - Restart i3
- ``` Mod + p ``` - Redirect sound to headphones/speakers
- ``` PrtScn ``` - Take screennshot
- ``` Mod + Shift + b ``` - Toggle Polybar

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

### ***Full keybindings list***
``` Super + ` ```

### ***Common keybindings***
- ```Super + Enter``` - Start terminal
- ```Super + Space``` - Start application launcher
- ```Super + w``` - Close/kill focused window
- ```Super + Shift + w``` - Close/kill all windows
- ```Super + Shift + e``` - Start power menu
- ```Super + Backspace``` - Lock screen
- ``` Super + Tab ``` - Window switcher menu
- ```Super + 1/2/3/4/...``` and ```Ctrl + Alt + Left/Right``` - Change workspaces
- ``` Alt + Space ``` - Change style
- ```Super + Alt + q / r``` - Quit / Restart BSPWM
- ```Super + Esc``` - Restart SXHKD
- ```PrtScn``` - Take screenshot
- ``` Super + Shift + b ``` - Toggle Polybar

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
- ``` Super + r ``` - Rotate windows
- ``` Super + = ``` - Make split ratio equal

#### ***Preselect***
- ```Super + Ctrl + h/j/k/l``` - Preselect the direction
- ```Super + Ctrl + 1/2/3/4/...``` - Preselect the ratio
- ```Super + Ctrl + Space``` - Cancel the preselection for focused window
- ```Super + Ctrl + Shift + Space``` - Cancel the preselection for focused desktop

## ***Openbox (window manager)***

### ***Super key***
By default, ``` Super key ``` will be ``` Windows key ```

### ***Common keybindings***
- ``` Super + Space ``` - Start application launcher
- ``` Super + Enter ``` - Start terminal
- ``` Super + q ``` and ```Alt + F4``` - Kill focused window
- ``` Super + Shift + e ``` - Power menu
- ``` Super + Backspace ``` - Lock the system
- ``` Super + Tab ``` and ```Alt + Tab``` - Window switcher menu
- ``` Alt + Space ``` - Change style
- ``` openbox --restart ``` and ``` Super + Shift + r ``` - Restart Openbox
- ``` PrtScn ``` - Take screennshot
- ``` Super + v ``` - Toggle audio settings (volume, audio devices, ...)

### ***Manage windows***
- ``` Super (+ Shift) + 1/2/3/4/... ``` - Change workspace / Send window to workspace
- ``` Super (+ Shift) + Left / Right ``` - Change workspace / Send window to next/previous workspace
- ``` Super + Left / Right ``` - Snap window to left/right
- ``` Super + Up / Down ``` - Make window larger/ smaller
- ``` Super + Ctrl + Left / Down / Up / Right ``` - Move window to edge
- ``` Super + a ``` - Move window to center
- ``` Super + t ``` - Toggle title bar
- ``` Super + f ``` - Toggle maximize
- ``` Super + z ``` - Toggle minimize
- ``` Super + u ``` - Toggle shade
- ``` Super + r ``` - Resize
- ``` Super + m ``` - Move

## ***Ranger (file manager)***

### ***General***
- ```ranger```- Open ranger in terminal
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
- ```:mount``` - List external drives/devices
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

## ***NeoVim (text editor)***
Too lazy to make NeoVim and NvChad cheatsheets
- ```:help``` - Tutorial
- ```:NvCheatsheet``` - NvChad cheatsheet

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

### ***Browser***
- ```Enter``` - Enter directory/Add item to playlist and play it
- ```Space``` - Add item to playlist/select it
- ```e``` - Edit song
- ```e``` - Edit playlist name
- ```2``` - Browse MPD database/local filesystem
- ``` ` ``` - Toggle sort mode
- ```o``` - Locate playing song
- ```Ctrl + h```/```Backspace``` - Jump to parent directory
- ```Delete``` - Delete selected items from disk
- ```G``` - Jump to playlist editor (playlists only)

### ***Search engine***
- ```Enter``` - Add item to playlist and play it/change option
- ```Space``` - Add item to playlist
- ```e``` - Edit song
- ```y``` - Start searching
- ```3``` - Reset search constraints and clear results

### ***Media library***
- ```4``` - Switch between two/three columns mode
- ```Left```/```h``` - Previous column
- ```Right```/```l``` - Next column
- ```Enter``` - Add item to playlist and play it
- ```Space``` - Add item to playlist
- ```e``` - Edit song
- ```e``` - Edit tag (left column)/album (middle/right column)
- ``` ` ``` - Toggle type of tag used in left column
- ```m``` - Toggle sort mode

### ***Playlist editor***
- ```Left```/```h``` - Previous column
- ```Right```/```l``` - Next column
- ```Enter``` - Add item to playlist and play it
- ```Space``` - Add item to playlist/select it
- ```e``` - Edit song
- ```e``` - Edit playlist name
- ```Ctrl + k```/```m``` - Move selected item(s) up
- ```n```/```Ctrl + j``` - Move selected item(s) down
- ```Delete``` - Delete selected playlists (left column)
- ```Delete``` - Delete selected item(s) from playlist (right column)
- ```c``` - Clear playlist
- ```C``` - Clear playlist except selected items

### ***Lyrics***
- ```Space``` - Toggle reloading lyrics upon song change
- ```e``` - Open lyrics in external editor
- ``` ` ``` - Refetch lyrics

### ***Tiny tag editor***
- ```Enter``` - Edit tag
- ```y``` - Save

### ***Tag editor***
- ```Enter``` - Edit tag/filename of selected item (left column)
- ```Enter``` - Perform operation on all/selected items (middle column)
- ```Space``` - Switch to albums/directories view (left column)
- ```Space``` - Select item (right column)
- ```Left```/```h``` - Previous column
- ```Right```/```l``` - Next column
    Ctrl-H Backspace - Jump to parent directory (left column, directories view)

## ***Calcurse (calendar)***

### ***General***
- ```calcurse``` - Open calcurse in terminal
- ```?``` - Help
- ```q``` - Quit
- ```:``` - Command
- ```i``` - Import
- ```x``` - Export
- ```R``` - Reload
- ```C``` - Config
- ```o``` - Other commands

### ***Navigation***
- ```Tab``` - Change window
- ```Ctrl + Tab``` - Previous window
- ```Ctrl + n``` - Next view
- ```Ctrl + p``` - Previous view
- ```h``` - Left
- ```j``` - Down
- ```k``` - Up
- ```l``` - Right
- ```g``` - Go to
- ```Ctrl + g``` - Today

### ***Manage calendar***
- ```0``` - Begin week
- ```$``` - End week
- ```Ctrl + a``` - Add appointment
- ```Ctrl + t``` - Add todo
- ```t``` - +1 day
- ```T``` - -1 day
- ```w``` - +1 week
- ```W``` - -1 week
- ```m``` - +1 month
- ```M``` - -1 month
- ```y``` - +1 year
- ```Ctrl + r``` - Redraw
- ```Y``` - -1 year

## ***zathura (pdf viewer)***

### ***General***
- ```zathura``` - Open zathura from terminal
- ```:``` - Open command
- ```q``` - Quit
- ```Ctrl + c```, ```Esc``` - Abort
- ```o```, ```O``` - Open document
- ```R``` - Reload document

### ***Navigation***
- ```h/j/k/l``` or ```Left/Down/Up/Right``` - Scroll
- ```J``` or ```Page Down``` - Next page
- ```K``` or ```Page Up``` - Previous page
- ```H```, ```L``` - Go to top or bottom of the current page
- ```Ctrl + t```, ```Ctrl + d```, ```Ctrl + u```, ```Ctrl+ y``` - Scroll a half page left, down, up, right
- ```gg```, ```G```, ```1/2/3/4/...G``` - Go to the first page, the last page or the nth page
- ```t```, ```Ctrl + f```, ```Ctrl + b```, ```space```, ```Shift + space```, ```y``` - Scroll a full page left, down, up or right
- ```P``` - Snaps to the current page
- ```Ctrl + o```, ```Ctrl + i``` - Move backward and forward through the jump list
- ```Ctrl + j```, ```Ctrl + k``` - Bisect forward and backward between the last two jump points
- ```f``` - Follow links
- ```F``` - Display link target
- ```c``` - Copy link target into the clipboard

### ***View***
- ```a```, ```s``` - Adjust window in best-fit or width mode
- ```Ctrl + r``` - Recolor
- ```r``` - Rotate 90 degrees
- ```Tab``` - Show index and switch to Index mode 
- ```d``` - Toggle dual page view
- ```F5``` - Switch to presentation mode
- ```F11``` - Switch to fullscreen mode
- ```Ctrl + m``` - Toggle input bar
- ```Ctrl + n``` - Toggle status bar
- ```+```, ```-```, ```=``` - Zoom in, zoom out or original size
- ```z - I```, ```z - O```, ```z - 0``` - Zoom in, zoom out or original size

### ***Search***
- ```/```, ```?``` - Search for text
- ```n```, ```N``` - Search for the next or previous result

### ***Index mode***
- ```k```, ```j``` - Move to upper or lower entry
- ```I``` - Expand entry
- ```L``` - Expand all entries
- ```h``` - Collapse entry
- ```H``` - Collapse all entries
- ```space```, ```Enter``` - Select and open entry
