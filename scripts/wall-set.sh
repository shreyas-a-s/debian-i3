#!/bin/bash
sed -i "/nitrogen/ c\exec --no-startup-id nitrogen --restore &" ~/.config/i3/config
sed -i "/wall/ c\\" ~/.config/i3/config
rm ~/wall-set.sh
