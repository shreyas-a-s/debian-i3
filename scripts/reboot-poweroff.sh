#!/usr/bin/env bash

echo ""; echo "Configuring sudo reboot & sudo poweroff commands to work without having to type password..."
echo "
#Lines added by user
$username ALL=NOPASSWD:/sbin/reboot
$username ALL=NOPASSWD:/sbin/poweroff" | sudo tee -a /etc/sudoers > /dev/null
