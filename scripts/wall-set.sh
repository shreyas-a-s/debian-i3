#!/bin/bash
sed -i "/--set-zoom-fill/ c\exec \t\t--no-startup-id nitrogen --restore &" ~/.config/i3/config
sed -i "/wall/ c\\" ~/.config/i3/config
rm ~/wall-set.sh
