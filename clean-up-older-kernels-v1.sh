#!/bin/bash
#
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

#http://askubuntu.com/questions/2793/how-do-i-remove-old-kernel-versions-to-clean-up-the-boot-menu
# Explanation (remember, | uses the output of the previous command as the input to the next)

#     dpkg --list lists all installed packages
#     grep linux-image looks for the installed linux images
#     awk '{ print $2 }' just outputs the 2nd column (which is the package name)
#     sort -V puts the items in order by version number
#     sed -n '/'`uname -r`'/q;p' prints the lines before the current kernel
#     xargs sudo apt-get -y purge purges the found kernels

# Unwinding the sed invocation:

#     -n tells sed to be quiet
#     `uname -r` outputs the current installed kernel release - we include it in backticks so that the output is includes as part of the command (you might also see this as $(uname -r)
#     /something/q says stop when you match 'something' (in this case, something is output of uname -r) - the / surround a regular expression
#     p is print
#     the ; is the command separtor, so /something/q;p says quit when you match something, else print

# altogether, sed -n '/'`uname -r`'/q;p' is print the lines until it matches with the current kernel name.

#If you're paranoid (like me), you can make the last part xargs echo sudo apt-get -y purge so that the command to purge the old kernels is printed, then you can check that nothing unexpected is included before you run it.

echo "TAKE CARE! You will be left with only one kernel - the current one!"


dpkg --list | grep linux-image | awk '{ print $2 }' | sort -V | sed -n '/'`uname -r`'/q;p' | xargs sudo apt-get -y purge

echo "################################################################"
echo "############## old kernels have been deleted     ###############"
echo "################################################################"
