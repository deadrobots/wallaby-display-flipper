#!/bin/bash
# reverse it
echo "reversing display orientation"
if grep --quiet '#Option "Rotate' /etc/X11/xorg.conf.d/20-display.conf.lcd ; then
        # do nothing
        echo ""
else
	# we need to comment out this Option
	sed -i 's/Option "Rotate"/#Option "Rotate"/g' /etc/X11/xorg.conf.d/20-display.conf.lcd
fi
DISPLAY=:0 xinput set-prop 'ADS7846 Touchscreen' 'Evdev Axes Swap' 0
DISPLAY=:0 xinput --set-prop 'ADS7846 Touchscreen' 'Evdev Axis Inversion' 1 1


