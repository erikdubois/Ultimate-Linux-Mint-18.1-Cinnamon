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

##################################################################################################################
########################                          START CHECK                           ##########################
##################################################################################################################

##################################################################################################################
########################                     lsb-release present                        ##########################
##################################################################################################################

echo "################################################################"
echo "Checking presence of lsb-release and install it when missing"

	if ! location="$(type -p "lsb_release")" || [ -z "lsb_release" ]; then

		# check if apt-git is installed
		if which apt-get > /dev/null; then

			sudo apt-get install -y lsb-release

		fi

		# check if pacman is installed
		if which pacman > /dev/null; then

			sudo pacman -S --noconfirm lsb-release

		fi

		# check if eopkg is installed
		if which eopkg > /dev/null; then

			sudo eopkg install -y lsb-release

		fi
	
	fi


DISTRO=$(lsb_release -si)

echo "################################################################"
echo "You are working on " $DISTRO



##################################################################################################################
########################                   installing dependencies                      ##########################
##################################################################################################################

case $DISTRO in 

	LinuxMint|linuxmint|Ubuntu|ubuntu)

		if ! location="$(type -p "git")" || [ -z "git" ]; then

			echo "################################################################"
			echo "installing git for this script to work"
			
		  	sudo apt-get install -y git

		  else
		  	echo "################################################################"
		  	echo "Git was installed. Proceeding..."
		fi

		;;

	Arch)

		if ! location="$(type -p "git")" || [ -z "git" ]; then

			echo "################################################################"
			echo "installing git for this script to work"

		  	sudo pacman -S --noconfirm git

		  else
		  	echo "################################################################"
		  	echo "git was installed. Proceeding..."


		fi

		;;

	Solus)

		if ! location="$(type -p "git")" || [ -z "git" ]; then

			echo "################################################################"
			echo "installing git for this script to work"

		  	sudo eopkg install -y git

		  else
		  	echo "git was installed. Proceeding..."
		fi

		;;

	*)
		echo "No installation lines for your system."

		;;
esac


##################################################################################################################
########################                       END CHECK                                ##########################
##################################################################################################################



# if there is a folder, delete it
[ -d /tmp/Plank-Themes ] && rm -rf /tmp/Sardi-Extra

#download from github
git clone https://github.com/erikdubois/Plank-Themes /tmp/Plank-Themes

#remove some of the files
find /tmp/Plank-Themes -maxdepth 1 -type f -exec rm -rf '{}' \;

# if there is no hidden folder then make one
[ -d $HOME"/.local/share/plank" ] || mkdir -p $HOME"/.local/share/plank"

# if there is no hidden folder then make one
[ -d $HOME"/.local/share/plank/themes" ] || mkdir -p $HOME"/.local/share/plank/themes"

# copy the files
cp -r /tmp/Plank-Themes/* ~/.local/share/plank/themes/

# remove files from tmp
rm -rf /tmp/Plank-Themes




echo "################################################################"
echo "###################  plank themes installed   ##################"
echo "################################################################"
