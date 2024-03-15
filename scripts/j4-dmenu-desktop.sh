#!/bin/bash

echo ""; echo "Installing j4-dmenu-desktop..."
# Install j4-dmenu-desktop
if [ "$debianversion" -lt 12 ]; then
	cp programs/j4-dmenu-desktop /usr/local/bin/
else
	apt install j4-dmenu-desktop -y
fi
