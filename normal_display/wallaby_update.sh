#!/bin/bash

echo "copying flip script"
cp files/flip_input.sh /home/root
chmod +x /home/root/flip_input.sh

echo "starting script at boot"
rm /etc/xdg/autostart/BotuiFlip.desktop
cp files/BotuiFlip.desktop /etc/xdg/autostart

echo "rebooting..."
sleep 2
shutdown -r now
