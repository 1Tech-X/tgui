#!/bin/bash
#created by tech-x
#www.mrtechx.com
red='\033[1;91m'
green='\033[1;92m'
blue='\033[1;34m'
yellow='\033[1;33m'
cyan='\033[1;96m'
reset='\033[0m'
#VNC server xstartup configuration for xfce4

xfce_conf () {

	echo""
	echo "${red}[>]${cyan}configuring vnc xstartup....${reset}\n"
	sleep 1
        cd /$HOME
	echo "#!/data/data/com.termux/files/usr/bin/sh" > .vnc/xstartup
	echo "## This file is execute during VNC server" >> .vnc/xstartup
	echo "## startup" >> .vnc/xstartup
	echo "" >> .vnc/xstartup
	echo "# Launch terminal emulator Aterm" >> .vnc/xstartup
	echo "# Required package 'aterm'" >> .vnc/xstartup
	echo "aterm -geometry 80x24+10+10 -ls &" >> .vnc/xstartup
	echo "" >> .vnc/xstartup
	echo "# Launch Tab Window manager " >> .vnc/xstartup
	echo "# Required package 'xorg-twm'" >> .vnc/xstartup
	echo "twm &" >> .vnc/xstartup
	echo "xfce4-session &" >> .vnc/xstartup
	echo ""
	echo "${green}[*]${blue}Done${reset}\n"
	echo ""
}

xfce_conf

