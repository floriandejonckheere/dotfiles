# Set workspace grid to 5x3
xprop -root -f _NET_DESKTOP_LAYOUT 32cccc -set _NET_DESKTOP_LAYOUT 0,5,3,0

# Set 15 workspaces
xprop -root -f _NET_NUMBER_OF_DESKTOPS 32c -set _NET_NUMBER_OF_DESKTOPS 15

# Set environment
TERMINAL="terminator"

# Load key bindings
xbindkeys

# Terminate session on Ctrl+Alt+Backspace
setxkbmap -option terminate:ctrl_alt_bksp

# Use right alt (Alt Gr) as Compose key
setxkbmap -option compose:ralt

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Added by Toolbox App
export PATH="$PATH:/home/florian/.local/share/JetBrains/Toolbox/scripts"
