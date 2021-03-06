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
