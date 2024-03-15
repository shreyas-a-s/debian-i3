#!/bin/bash

# Check if script is run as root
if [ "$(id -u)" -eq 0 ]; then
  printf "\nYou must NOT be a root user when running this script, please run ./install.sh as normal user\n\n" 2>&1
  exit 1
fi

# Get username, working directory, i3 vsersion, distro name & debian version
username=$(id -u -n 1000) && export username
builddir=$(dirname -- "$( readlink -f -- "$0"; )")

# Updating system & installing programs
echo ""; echo "Doing a system update & Installing the required programs..."
sudo apt update && sudo apt upgrade -y
sudo apt install xorg -y
sudo apt install i3 i3status lightdm slick-greeter xfce4-terminal dmenu picom -y
sudo apt install fonts-powerline curl imagemagick pulseaudio pavucontrol wget nitrogen python3-pip fonts-font-awesome -y

# Change the current working directory
cd "$builddir" || exit

# Creating necessary directories
echo ""; echo "Making necessary directories..."
mkdir -p ~/.config/i3/
mkdir -p ~/.config/i3status/
mkdir -p ~/.config/picom/
mkdir -p ~/Screenshots/
sudo mkdir -p /usr/share/backgrounds

# Copy config files
echo ""; echo "Copying config files..."
cp welcome-to-my-i3.md ~ # kind-of a user manual for my i3wm setup
sudo cp dotfiles/autotiling /usr/local/bin/ # making i3 a bit of a dynamic tiler
cp dotfiles/config ~/.config/i3/ # i3wm customizations
cp dotfiles/i3status ~/.config/i3status/config # i3 bottom bar customizations
cp dotfiles/picom.conf ~/.config/picom/ # Picom Compositor config file

# i3 tweaks
./scripts/reboot-poweroff.sh # For configuring reboot-poweroff commands to work without password
./scripts/j4-dmenu-desktop.sh # Installing j4-dmenu-desktop (a better application menu)

# Done
echo "Installation is now complete. Reboot your system for the changes to take place.
Remember, upon reboot no wallpaper will be set. Use the app Nitrogen > Preferences to set a wallpaper.
Also, there would a file called 'welcome-to-my-i3.md' in the home folder.
Open it with a text editor of your choice. You'll get a qucik rundown of some important keyboard-mouse shortcuts."
