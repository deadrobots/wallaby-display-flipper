#!/bin/bash
# giving a 1 to this script will reverse the display orientation from the KIPR default

# put it back to normal
echo "displaying normal orientation"
if grep --quiet '#Option "Rotate' /etc/X11/xorg.conf.d/20-display.conf.lcd; then
        # uncomment it
	sed -i 's/#Option "Rotate"/Option "Rotate"/g' /etc/X11/xorg.conf.d/20-display.conf.lcd
fi
DISPLAY=:0 xinput set-prop 'ADS7846 Touchscreen' 'Evdev Axes Swap' 0
DISPLAY=:0 xinput --set-prop 'ADS7846 Touchscreen' 'Evdev Axis Inversion' 0 0


