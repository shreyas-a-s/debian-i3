#!/usr/bin/env bash

DEBIAN_VERSION=$(cat /etc/debian_version)
DEBIAN_MAJOR_VERSION=${DEBIAN_VERSION%.*}

echo ""; echo "Installing j4-dmenu-desktop..."
# Install j4-dmenu-desktop
if [ "$DEBIAN_MAJOR_VERSION" -lt 12 ]; then
	sudo cp programs/j4-dmenu-desktop /usr/local/bin/
else
	sudo apt install j4-dmenu-desktop -y
fi
