#!/bin/bash

echo ""; echo "Installing j4-dmenu-desktop and dependencies of i3scripts..."
if [ "$debianversion" -lt 12 ]; then
	cp programs/j4-dmenu-desktop /usr/local/bin/ && pip install i3ipc fontawesome
else
	apt install j4-dmenu-desktop -y && pip install i3ipc fontawesome --break-system-packages # don't worry, it won't break anything
fi
