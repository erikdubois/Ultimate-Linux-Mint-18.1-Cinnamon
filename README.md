# Ultimate Linux Mint 18.1 Serena Cinnamon

Let us first take a screenshot of the initial look of Linux Mint 18.1 Serena Cinnamon

![Screenshots](http://i.imgur.com/Rt4ATgr.png)

##Update your system.

Choose if you like to download from local servers or not.

##Change the theme

Ofcourse you can change the theme. I like the **mint-y-dark** theme which I will use in the later screenshots. I installed screenfetch to show you some technical information.

    sudo apt install screenfetch


![Screenshots](http://i.imgur.com/YO66kdK.png)

Sometimes you can change the present theme to its dark equivalent.
Follow these steps to check if a dark variant of your theme exist. Best to logoff or reboot to be sure.

![Screenshots](http://i.imgur.com/JkeB1Ek.gif)

##Download this github

You can run any of these scripts by downloading the zip file from github. Go to the download folder and right-click to **Extract here**.
Go inside the folder and right-click <b>in a blank space</b> to go to the terminal. Now your terminal is opened in this extracted folder.

Or you can use the terminal and the git command

	git clone https://github.com/erikdubois/Ultimate-Linux-Mint-18.1-Cinnamon


# Extra info on Youtube

Content Playlist of 100+ short movies to make your desktop eye-cany.
Sardi icon collection playing its part.

https://www.youtube.com/playlist?list=PLlloYVGq5pS43s05ltH9xh7paFteoT7UB

About 100+ short movies to completely change your desktop experience for linux.
They are made on Linux Mint 18 and still apply on 18.1.
Updating, kernel installation, applications installation, variety settings, firefox and google search, lastpass and xmarks, sardi icon theme, fixing icons that never change, theme installation of vertex and arc, applets, dropbox, zsh, printer, aureola conky, surfn icons, plank, personal settings of cinnamon, gimp scripts added, dropbox fix, keyboard fix for music, ...

Customisation scripts : https://github.com/erikdubois/Ultimate-Linux-Mint-18.1-Cinnamon

Sardi icons: https://sourceforge.net/projects/sardi/files/

Surfn icons : https://github.com/erikdubois/Surfn

Aureola conky : https://github.com/erikdubois/Aureola

This was the endresult after executing all the movies.


![Screenshots](http://i.imgur.com/gKjMfHp.jpg)



Check out the movies by clicking here

<a target="_blank" href="https://www.youtube.com/playlist?list=PLlloYVGq5pS43s05ltH9xh7paFteoT7UB">
<img style="max-width:100%;" src="http://i.imgur.com/UMpseyy.png">
</a> 


#1 Kernel, cinnamon and nvidia

First we upgrade the kernel, nvidia and cinnamon/nemo if you want to.

If everything is still working we can install the software and start customizing the system.

As described at http://erikdubois.be/ I try to get the latest of everything. This attitude tends to break things. You have been warned. But the best way to learn about linux.

I have written a script to automate my installations. 

<b>KERNEL</b>

Do not forget to type "./" in front of the name.

Type in the terminal

	
	- ./update-to-the-last-stable-4.x.x-latest.sh 


![Screenshots](http://i.imgur.com/3CUtC1X.png)


<b>Cinnamon</b>

I never install this on my working computer. You have been warned.

The very latest cinnamon version can be installed on your system.

There is no script included for this. You will have to do it manually in the terminal.

The script will add a resource and upgrade cinnamon.

	# sudo add-apt-repository -y ppa:gwendal-lebihan-dev/cinnamon-nightly
	# sudo apt-get update 
	# sudo apt-get install cinnamon -y
    # sudo apt-get upgrade cinnamon -y



<b>Nvidia</b>

The last months/years I have no issues with the drivers coming from Linux (i.e.nouveau). So I do NOT install the Nvidia drivers.

Nvidia drivers will <b>NOT</b> be installed as they are very specific to your hardware. But checkout the code.

You can normally install nvidia drivers without any other source.

Try typing this in the terminal


	# sudo apt install nvidia    and then press on TAB


If for some reason you want other sources for your drivers then check out these two.

* https://launchpad.net/~graphics-drivers/+archive/ubuntu/ppa

Copy/paste these lines in a terminal to get the latest nvidia drivers.

	sudo add-apt-repository -y ppa:graphics-drivers/ppa
	sudo apt-get update
	sudo apt-get install nvidia-340 -y (for example)

* http://nvidia.com

Check on Nvidia.com which driver you should use and install it from there.

Wait for the installation and reboot.




#2 Software installation

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



#3 Fun stuff


1. Sardi Icon Theme
-------------------

This icon theme can be downloaded at  sourceforge.

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

Some Examples from Linux Mint 18!

![Screenshots](http://i.imgur.com/T9gN544.jpg)


This is the original colour of Sardi Flexible with Minty-transparent theme.


![Screenshots](http://i.imgur.com/iS6zFFU.jpg)

Sardi Arc

![Screenshots](http://i.imgur.com/IeZFWvs.jpg)


There is also a collection of **Sardi Extra** icons at 

https://github.com/erikdubois/Sardi-Extra

These icons can be downloaded but will not be maintained. Nor are they part of the core icons of Sardi. They are the result of ideas and scripts that are included in Sardi icons.


More documentation on http://erikdubois.be/category/sardi-icons/


2. Surfn icons
--------------------------------- 

For ease of installation I use the script

	- icons-surfn-vx.sh

Some Examples from Linux Mint 18!



![Screenshots](http://i.imgur.com/i1FGsR9.jpg)



![Screenshots](http://i.imgur.com/EocrQ70.png)


More info can be found here : https://github.com/erikdubois/Surfn


3. Aureola Conky
---------------

This is an exercise in writing conky configurations in lua syntax.

At https://github.com/erikdubois/Aureola you can check out these conky's.

Some Examples from Linux Mint 18!

![Screenshots](http://i.imgur.com/y92Jrp4.png)


![Screenshots](http://i.imgur.com/97Q8RO1.jpg)


![Screenshots](http://i.imgur.com/VgD9SqN.png)


More information can be found here : http://erikdubois.be/category/linux/aureola/


4. ZSH and Oh-my-sh
-----------------------
I like bash but I prefer zsh with lots of different themes from Oh-my-zsh to spice things up. So let us install that in the script.

Everytime a surprise. The script changes the theme to 'random'.

![Screenshots](http://i.imgur.com/kehYX70.jpg)

./install-zsh-vx.sh




5. Plank
------------------
Find plank in the menu and start it. <b>CTRL + Right-click</b> on the plank and choose preferences
and put in on top. I choose a transparent theme.

![Screenshots](http://i.imgur.com/arie1IY.jpg)

If you want to install 100+ plank themes, you need to run this script : 

	plank-themes-vx.sh

Surfn icons and all plank themes

![Screenshots](http://i.imgur.com/CRfb4Qo.gif)

Sardi icons and all plank themes

![Screenshots](http://i.imgur.com/dnmq1g0.gif)


Read more on plank e.g. how to autostart plank on boot : http://erikdubois.be/category/linux/plank/



6. Themes
------------------

When you run the scripts, you will have many many themes in this folder

	.themes

Select them with the themes manager.

Read here for more info on ARC BASED THEMES : http://erikdubois.be/category/themes/arc-based-themes/

Read here for more info on MINT-Y BASED THEMES : http://erikdubois.be/category/themes/mint-y-based-themes/


![Screenshots](http://i.imgur.com/R1UBRl6.jpg)


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



