# Debian-i3
A Minimal i3WM Install on Debian using an Installer Script

## Screenshots
| ![login-screen.png](https://github.com/shreyasastech/debian-i3/assets/137637016/9efaedbc-9519-4667-963a-ba0826c14090) | 
|:--:| 
| *Login Screen (wallpaper not included)* |

| ![i3-plain.png](https://github.com/shreyasastech/debian-i3/assets/137637016/b86f630e-9e6b-4d9f-b5c4-514f2e158bcd) | 
|:--:| 
| *This install script only* |

| ![i3-with-customisation.png](https://github.com/shreyasastech/debian-i3/assets/137637016/4a0c79dc-8006-4837-ab6d-dc6956d8f483) | 
|:--:| 
| *This install script + My [debian customisation script](https://github.com/shreyas-a-s/linux-tweaks/tree/wm)* |
## Inspiration
I've been tinkering with window managers for some time and chose i3 as my preferred one.  
I've also seen the **debian-titus** repo of [@christitustech](https://github.com/christitustech/) and got an inspiration.  
So I've thought of creating an install script written in bash to install a very minimal version of i3   
in my distro of choice, debian. Gathering all my stengths, I am starting my work.

## Acknowledgements

 - Chris Titus [@christitustech](https://github.com/christitustech/) for the inspiration to start shell scripting
 - Derek Taylor [@dwt1](https://gitlab.com/dwt1) for the motivation to join github
 - krokerke [@krokerke](https://github.com/krokerke) for [i3-autoname-workspaces.py](https://github.com/krokerke/dotfiles/blob/master/i3/.config/i3/i3-autoname-workspaces.py), a python script to add program icons to workspaces in i3bar
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
 git clone https://github.com/shreyas-a-s/debian-i3.git
 cd debian-i3/
 sudo /.install.sh
```

For those who would like a single-line command:
```bash
 git clone https://github.com/shreyas-a-s/debian-i3.git && cd debian-i3/ && sudo ./install.sh
```
