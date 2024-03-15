#!/bin/bash

echo ""; echo "Installing j4-dmenu-desktop and dependencies of i3scripts..."
if [ "$debianversion" -lt 12 ]; then
	cp programs/j4-dmenu-desktop /usr/local/bin/ && sudo apt-get install python3-i3ipc && pip install fontawesome
else
	apt install j4-dmenu-desktop -y && sudo apt-get install python3-i3ipc  && pip install fontawesome --break-system-packages # don't worry, it won't break anything
fi
