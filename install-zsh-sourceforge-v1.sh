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

[ -d /tmp/zsh ] && rm -rf /tmp/zsh
[ -f /tmp/zsh.tar.xz ] && rm -rf /tmp/zsh.tar.xz

sudo apt-get install libghc-ncurses-dev build-essential -y
#wget https://sourceforge.net/projects/zsh/files/latest/download -O /tmp/zsh.tar.xz
wget https://sourceforge.net/projects/zsh/files/zsh/5.3.1/zsh-5.3.1.tar.xz -O /tmp/zsh.tar.xz
cd /tmp
mkdir /tmp/zsh
tar xf zsh.tar.xz -C /tmp/zsh --strip-components=1
cd zsh
./configure
make
sudo make install

[ -d /tmp/zsh ] && rm -rf /tmp/zsh
[ -f /tmp/zsh.tar.xz ] && rm -rf /tmp/zsh.tar.xz

echo "################################################################"
echo "Version is now:"
zsh --version

echo "################################################################"
echo "###################    zsh installed     #######################"
echo "################################################################"
