#!/bin/bash
echo "Welcome to the Allsky Camera installer"
echo -en '\n'
echo -en '\n'
echo "Sunwait installation"
cp sunwait /usr/local/bin
echo -en '\n'
echo -en '\n'
apt-get update && apt-get install libopencv-dev libusb-dev libav-tools gawk lftp entr imagemagick -y
echo -en '\n'
echo -en '\n'
echo -en 'Using the camera without root access'
install lib/asi.rules /lib/udev/rules.d
echo -en '\n'
echo -en '\n'
echo -en 'Copying shared libraries to user library'
cp lib/armv7/libASICamera2* /usr/local/lib
echo -en '\n'
echo -en '\n'
echo -en 'Autostart script'
echo "@xterm -hold -e /home/pi/allsky/allsky.sh" >> /home/pi/.config/lxsession/LXDE-pi/autostart
