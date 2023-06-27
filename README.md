# Debian-i3
A Minimal i3WM Install on Debian using an Installer Script

## Screenshots

![App Screenshot](https://via.placeholder.com/468x300?text=App+Screenshot+Here)  
image_caption

## Inspiration
I've been tinkering with window managers for some time and chose i3 as my preferred one.  
I've also seen the **debian-titus** repo of [@christitustech](https://github.com/christitustech/) and got an inspiration.  
So I've thought of creating an install script written in bash to install a very minimal version of i3   
in my distro of choice, debian. Gathering all my stengths, I am starting my work.

## Acknowledgements

 - Chris Titus [@christitustech](https://github.com/christitustech/) for the inspiration to start shell scripting
 - Derek Taylor [@dwt1](https://gitlab.com/dwt1) for the motivation to join github
 - krokerke [@krokerke](https://github.com/krokerke) for [i3-autoname-workspaces.py](https://github.com/krokerke/dotfiles/blob/master/i3/.config/i3/i3-autoname-workspaces.py), a python script to
 - enkore [@enkore](https://github.com/enkore) for [j4-dmenu-desktop](https://github.com/enkore/j4-dmenu-desktop), simply the better dmenu
 - Ray Holder [@rholder](https://github.com/rholder) for [i3status-title-on-bar](https://github.com/rholder/i3status-title-on-bar), a tilebar replacement or i3 windows
 - Mate Desktop Team [@mate-desktop](https://github.com/mate-desktop) for [Garden.jpg](https://github.com/mate-desktop/mate-backgrounds/blob/master/nature/Garden.jpg), a pleasingly beautiful wallpaper that I used for this build

## Features

- A single script install for i3 with all dependencies out-of-the-box
- Customised i3bar showing titlebar of windows which is also transparent (not heavily)
- A welcome cheat sheet for new users
- A bash script to handle shutdown & reboot (when invoked by the i3 binding mode) in non-systemd distros

## Installation

Execute install.sh as sudo from a terminal:

```bash
 git clone https://github.com/shreyasastech/debian-i3.git
 cd debian-i3/
 sudo /.install.sh
```

For those who would like a single-line command:
```bash
 git clone https://github.com/shreyasastech/debian-i3.git && cd debian-i3/ && sudo bash ./install.sh
```

## FAQ

#### Why a window is opened and closed for a split second after I've logged in to i3 ?

Due a bug in the autoname-workspaces.py script that is used to display window titles in i3bar,
after login the i3status won't work unless we open an app and restart i3.
Hence I've wrote a bash script that automatically opens a terminal ([stterm](https://github.com/katox/stterm) in this build) after the login
and executes a command that restarts i3 thereby eliminating the issue. That st window is what you are seeing.

If you don't like that behaviour and are either willing to restart i3 manually after login or can live without title-on-i3bar feature
you can disable it by executing this command:
```
sed -i "/status_command/ c\    status_command\t\t\ti3status" ~/.config/i3/config && sed -i "/st command/ c\\" ~/.config/i3/config
```

Also if you are able to mitigate that issue by some other method, share it though an issue or pull request.
I will be more than happy to learn that and include in my script.
