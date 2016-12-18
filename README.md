# Ultimate Linux Mint 18.1 Serena Cinnamon

Let us first take a screenshot of the initial look of Linux Mint 18.1 Serena Cinnamon

![Screenshots](http://i.imgur.com/Rt4ATgr.png)

##Download this github

You can run any of these scripts by downloading the zip file from github. Go to the download folder and right-click to **Extract here**.
Go inside the folder and right-click <b>in a blank space</b> to go to the terminal. Now your terminal is opened in this extracted folder.

Or you can use the terminal and the git command

	git clone https://github.com/erikdubois/Ultimate-Linux-Mint-18.1-Cinnamon


##Update your system.

Choose if you like to download from local servers or not.

![Screenshots](http://i.imgur.com/w1HNzxs.jpg)


##Kernel, cinnamon and nvidia

First we upgrade the kernel, nvidia and cinnamon/nemo if you want to.

If everything is still working we can install the software and start customizing the system.

As described at http://erikdubois.be/ I try to get the latest of everything. This attitude tends to break things. You have been warned. But the best way to learn about linux.

I have written a script to automate my installations. 

###Kernel

Do not forget to type "./" in front of the name.

Type in the terminal


	update-to-the-last-stable-4.x.x-latest.sh 


![Screenshots](http://i.imgur.com/3CUtC1X.png)


###Cinnamon

I never install this on my working computer. You have been warned.

The very latest cinnamon version can be installed on your system.

There is no script included for this. You will have to do it manually in the terminal.

The script will add a resource and upgrade cinnamon.

	sudo add-apt-repository -y ppa:gwendal-lebihan-dev/cinnamon-nightly
	sudo apt-get update 
	sudo apt-get install cinnamon -y
    sudo apt-get upgrade cinnamon -y



###Nvidia

The last months/years I have no issues with the drivers coming from Linux (i.e.nouveau). So I do NOT install the Nvidia drivers.

Nvidia drivers will <b>NOT</b> be installed as they are very specific to your hardware. But checkout the code.

You can normally install nvidia drivers without any other source.

Try typing this in the terminal


	sudo apt install nvidia    and then press on TAB


If for some reason you want other sources for your drivers then check out these two.

* https://launchpad.net/~graphics-drivers/+archive/ubuntu/ppa

Copy/paste these lines in a terminal to get the latest nvidia drivers.

	sudo add-apt-repository -y ppa:graphics-drivers/ppa
	sudo apt-get update
	sudo apt-get install nvidia-340 -y (for example)

* http://nvidia.com

Check on Nvidia.com which driver you should use and install it from there.

Wait for the installation and reboot.

More info when running into problems : http://erikdubois.be/install-latest-nvidia-driver-linux-mint-18/


##Software installation

We start the installation scripts of all the needed software via the terminal. 

	1-install-core-software-vx.sh
	2-install-extra-software-vx.sh
	3-install-themes-icons-cursors-plank.sh

Do not forget to type "./" in front of the name.


These three scripts will point to some of the other scripts in the folder. So keep them together.


The best of them 

	Spotify
	Sublime Text
	Variety
	Inkscape
	Plank
	Screenfetch
	Numix Icons
	Google Chrome
	...

There are other scripts for applications I sometimes need but will not be installed as of yet.


##Change the theme to Mint-Y-Dark

Ofcourse you can change the theme. I like the **mint-y-dark** theme which I will use in the later screenshots. I installed screenfetch to show you some technical information.

    sudo apt install screenfetch


![Screenshots](http://i.imgur.com/YO66kdK.png)

Sometimes you can change the present theme to its dark equivalent.
Follow these steps to check if a dark variant of your theme exist. Best to logoff or reboot to be sure.

![Screenshots](http://i.imgur.com/JkeB1Ek.gif)

This is an example of Sardi icons and dark theme on.


## Download the Arc themes

Using the scripts at https://github.com/erikdubois/Arc-Theme-Colora we can change the standard blue colour from Arc to any colour we like.

Check first at https://github.com/erikdubois/Arc-Theme-Colora-Collection if your colour has been created already.

We can install all the created themes with this script

	theme-arc-colora-collection-3.2-vx.sh

The version of cinnamon is important to have a nice theme or not. 
Linux Mint 18.1 > cinnamon version 3.2 

	cinnamon --version


**Arc-Dark-Orange**

![Screenshots](http://i.imgur.com/mNenIjf.jpg)

Read here for more info on ARC BASED THEMES : http://erikdubois.be/category/themes/arc-based-themes/



## Download the Mint-Y themes

Using the scripts at https://github.com/erikdubois/Mint-Y-Colora-Theme we can change the standard green colour from Mint-Y to any colour we like.

Check first at https://github.com/erikdubois/Mint-Y-Colora-Theme-Collection if your colour has been created already.

We can install all the created themes with this script

	theme-mint-y-colora-collection-3.2-vx.sh

The version of cinnamon is important to have a nice theme or not. 
Linux Mint 18.1 > cinnamon version 3.2 

	cinnamon --version

**Mint-Y-Arc-Dark**

![Screenshots](http://i.imgur.com/f5116nb.jpg)

Read here for more info on MINT-Y BASED THEMES : http://erikdubois.be/category/themes/mint-y-based-themes/


##Download the Sardi icons


Sardi icon collection can be downloaded at  sourceforge.

http://sourceforge.net/projects/sardi/

For ease of installation I use the script


	- icons-sardi-vx.sh


Follow the collection on google+ : https://plus.google.com/u/0/collection/YFP-LB

The most recent pictures can be found there.


Sardi is **meant to be changed by the users**. You can use scripts to change the hexadecimal colour code in about 3 seconds.


    Sardi Colora has such a colouring script.
    Sardi Flat Colora has such a colouring script.
    Sardi Flexible has such a colouring script.
    Sardi Ghost Flexible has such a colouring script.
    Sardi Mono Colora has such a colouring script.
    Sardi Mono Numix Colora has such a colouring script.

Colour codes can be figured out locally with gpick or online via http://www.colorpicker.com/.


![Screenshots](http://i.imgur.com/XvoHtzL.jpg)



##Download the Sardi-extra icons

There is also a collection of **Sardi Extra** icons at 

https://github.com/erikdubois/Sardi-Extra

These icons can be downloaded but will not be maintained. Nor are they part of the core icons of Sardi. They are the result of ideas and scripts that are included in Sardi icons.

![Screenshots](http://i.imgur.com/E16dX0C.jpg)

Easy installation with this script

		icons-sardi-extra-vx.sh

More documentation on http://erikdubois.be/category/sardi-icons/



##Download the Surfn icons

For ease of installation I use the script

	- icons-surfn-vx.sh


![Screenshots](http://i.imgur.com/Yq1jUDY.jpg)


![Screenshots](http://i.imgur.com/JpmraYv.jpg)


More info can be found here : https://github.com/erikdubois/Surfn


##Install the Aureola conky collection

This is an exercise in writing conky configurations in lua syntax.

Easy installation can be done with this script :

	conky-aureola-vx.sh


![Screenshots](http://i.imgur.com/f1N9ZbD.jpg)


![Screenshots](http://i.imgur.com/f2OZ2wd.jpg)


![Screenshots](http://i.imgur.com/pe5FnVl.jpg)


More information can be found here : http://erikdubois.be/category/linux/aureola/


##Change the cursor

I like the breeze snow cursors.


	install-breeze-snow-cursor-theme-v1

![Screenshots](http://i.imgur.com/wHp0I9s.png)



##Install the plank and download 100+ theme

Plank is installed through this script

	1-install-core-software-vx.sh

Find plank in the menu and start it. <b>CTRL + Right-click</b> on the plank and choose preferences
and put in on top. Standard you will have only 3 themes.

![Screenshots](http://i.imgur.com/arie1IY.jpg)

If you want to install 100+ plank themes, you need to run this script : 

	plank-themes-vx.sh

Surfn icons and all plank themes

![Screenshots](http://i.imgur.com/CRfb4Qo.gif)

Sardi icons and all plank themes

![Screenshots](http://i.imgur.com/dnmq1g0.gif)


Read more on plank e.g. how to autostart plank on boot : http://erikdubois.be/category/linux/plank/


##Change from bash to zsh in your terminal

I like bash but I prefer zsh with lots of different themes from oh-my-zsh to spice things up. So let us install that via this script.


	./install-zsh-vx.sh


![Screenshots](http://i.imgur.com/kehYX70.jpg)

Remember to type this in the terminal

	sudo chsh yourname -s /bin/zsh

Log off or reboot.

# Youtube Resources 

Content Playlist of 100+ short movies to make your desktop eye-candy.
Sardi icon collection playing its part.

https://www.youtube.com/playlist?list=PLlloYVGq5pS43s05ltH9xh7paFteoT7UB

About 100+ short movies to completely change your desktop experience for linux.
They are made on Linux Mint 18 and still apply on 18.1.
Updating, kernel installation, applications installation, variety settings, firefox and google search, lastpass and xmarks, sardi icon theme, fixing icons that never change, theme installation of vertex and arc, applets, dropbox, zsh, printer, aureola conky, surfn icons, plank, personal settings of cinnamon, gimp scripts added, dropbox fix, keyboard fix for music, ...

Check out the movies by clicking here

<a target="_blank" href="https://www.youtube.com/playlist?list=PLlloYVGq5pS43s05ltH9xh7paFteoT7UB">
<img style="max-width:100%;" src="http://i.imgur.com/UMpseyy.png">
</a>


# Resources


**Sardi icons**

http://erikdubois.be/category/sardi-icons/

https://sourceforge.net/projects/sardi/files/

**Surfn icons**

https://github.com/erikdubois/Surfn

**Aureola conky**
	
http://erikdubois.be/category/linux/aureola/

https://github.com/erikdubois/Aureola

**Arc Colora**

http://erikdubois.be/category/themes/arc-based-themes/	

https://github.com/erikdubois/Arc-Theme-Colora

**Mint-Y Colora**

https://github.com/erikdubois/Mint-Y-Colora-Theme

https://github.com/erikdubois/Mint-Y-Colora-Theme-Collection

**Plank and 100+ Plank Themes**

http://erikdubois.be/category/linux/plank/

https://github.com/erikdubois/Plank-Themes.






# F  A  Q
--------------------

#What can you do if the script does not execute?

Since I sometimes forget to make the script executable, I include here what you can do to solve that.

A script can only run when it is marked as an executable.

	ls -al 

Above code will reveal if a script has an "x". X meaning executable.
Google "chmod" and "execute" and you will find more info.

For now if this happens, you should apply this code in the terminal and add the file name.

	chmod +x typeyourfilename

Then you can execute it by typing

	./typeyourfilename

Or you can follow these steps

![Screenshots](http://i.imgur.com/vXsOaFL.gif)


------------------------------------
#But that is the fun in Linux.

You can do whatever <b>Y O U</b> want.

Share the knowledge.
------------------------------------



