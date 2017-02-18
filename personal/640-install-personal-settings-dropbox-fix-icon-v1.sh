#!/bin/bash
set -e
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

[ -d $HOME"/.config/autostart" ] || mkdir -p $HOME"/.config/autostart"


echo "Copy/pasting fix for dropbox"

cp settings/dropbox/* ~/.config/autostart/

dropbox autostart n

#[ -f $HOME"/.config/autostart/dropbox.desktop" ] && rm  $HOME"/.config/autostart/dropbox.desktop"

echo "################################################################"
echo "#########       dropbox fix  installed          ################"
echo "################################################################"