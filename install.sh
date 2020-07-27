#!/bin/bash
#created by tech-x
#www.mrtechx.com
red='\033[1;91m'
green='\033[1;92m'
blue='\033[1;34m'
yellow='\033[1;33m'
cyan='\033[1;96m'
reset='\033[0m'

#choice variable
ch=""

line () {
	printf "${cyan}<---------------------------------------------->${reset}\n"
}
clear
echo "${green}_________________________________________________"
echo "${red}"
echo "${cyan}"
echo "        ████████╗ ██████╗ ██╗   ██╗██╗"
echo "        ╚══██╔══╝██╔════╝ ██║   ██║██║"
echo "           ██║   ██║  ███╗██║   ██║██║"
echo "           ██║   ██║   ██║██║   ██║██║"
echo "           ██║   ╚██████╔╝╚██████╔╝██║"
echo "           ╚═╝    ╚═════╝  ╚═════╝ ╚═╝"
echo "${reset}"
echo  "${green}_________________________________________________"
echo  "${yellow}               Created by TECH-X "
echo  "                  www.mrtechx.com  "
echo  "${reset}"
# Checking & installing required packages

x11_repo () {

	for i in x11-repo; do
		  if [ -e ${PREFIX}/etc/apt/sources.list.d/x11.list ]; then
		  	printf "${green} \n$i ${blue}installed\n ${reset}"
		  else
		  	printf "${blue} [*]Installing ${i}....${reset}"
		  	sleep 1
		  	apt install -y $i || {
		  		printf "${red}"
                                echo ""
		  		echo "ERROR: Check your internet connection"
		  		printf "$reset"
		  		exit 1
		  	}
		  fi
	done
}

tigervnc () {

	if [ -e ${PREFIX}/bin/vncserver ]; then
		echo ""
		echo "${green}Tigervnc ${blue}installed${reset}\n"
	else
		printf "${blue} [*]Installing tigervnc....${reset}"
		  	sleep 1
		  	apt install -y tigervnc || {
		  	printf "${red}"
            echo ""
		  	echo "ERROR: Check your internet connection"
		  	printf "$reset"
		  	exit 1
		  	}
	fi
}

xfce () {

	if [ -e ${PREFIX}/bin/xfce4-session ]; then
		echo ""
		echo "${green}xfce4 ${blue}installed${reset}\n"
		echo ""
	else
		printf "${green}[*]${blue}Installing xfce4 ${reset}\n"
		sleep 1
		apt install -y xfce4 || {

			printf "${red}"
            echo ""
		  	echo "ERROR: Check your internet connection"
		  	printf "$reset"
		  	exit 1
		}
	fi
}

aterm () {

	if [ -e ${PREFIX}/bin/aterm ]; then
		echo ""
		echo "${green}Aterm ${blue}installed${reset}\n"
		echo ""
	else
		printf "${green}[*]${blue}Installing Aterm .....${reset}\n"
		sleep 1
		apt install -y aterm || {

			printf "${red}"
            echo ""
		  	echo "ERROR: Check your internet connection"
		  	printf "$reset"
		  	exit 1
		}
	fi
}

xorg_twm () {

	if [ -e ${PREFIX}/bin/twm ]; then
		echo ""
		echo "${green}xorg-twm ${blue}installed${reset}\n"
		echo ""
	else
		printf "${green}[*]${blue}Installing xorg-twm .....${reset}\n"
		sleep 1
		apt install -y xorg-twm || {

			printf "${red}"
            echo ""
		  	echo "ERROR: Check your internet connection"
		  	printf "$reset"
		  	exit 1
		}
	fi
}

#Extra package for xfce4-desktop

netsurf () {

	if [ -e ${PREFIX}/bin/netsurf-gtk3 ]; then
		echo "${green}Netsurf installed${reset}\n"
		else
			echo "${blue}Do you want install browser ${green}[y/n]${reset}\n"
			echo ""
			echo "${blue}Enter>${reset}"
			echo ""
			read ch
			if [ "${ch}" = "y" ]; then
				echo "${blue} Installing.... ${reset}\n"
				sleep 1
				apt install -y netsurf
			elif [ "${ch}" = "n" ]; then
					echo ""
					echo "${red}Vim not installed${reset}\n"
					echo ""
			fi
	fi
}

text_editor () {

	if [ -e ${PREFIX}/bin/gvim ]; then
		echo "${green}Vim is installed${reset}\n"
		else
			echo "${blue}Do you want install vim text-editor ${green}[y/n]${reset}\n"
			echo ""
			echo "${blue}Enter>${reset}"
			echo ""
			read ch
			if [ "${ch}" = "y" ]; then
				echo "${blue} Installing.... ${reset}\n"
				sleep 1
				apt install -y vim-gtk
			elif [ "${ch}" = "n" ]; then
					echo ""
					echo "${red}vim not installed${reset}\n"
					echo ""
			fi
	fi
}

wireshark () {

	if [ -e ${PREFIX}/bin/wireshark-gtk ]; then
		echo "${green}Wireshark is installed${reset}\n"
		else
			echo "${blue}Do you want install wireshark ${green}[y/n]${reset}\n"
			echo ""
			echo "${blue}Enter>${reset}"
			echo ""
			read ch
			if [ "${ch}" = "y" ]; then
				echo "${blue} Installing ${reset}\n"
				sleep 1
				apt install -y wireshark-gtk
			elif [ "${ch}" = "n" ]; then
					echo ""
					echo "${red}wireshark not installed${reset}\n"
					echo ""
			fi
	fi
}

xfce_term () {

	if [ -e ${PREFIX}/bin/xfce4-terminal ]; then
		echo "${green}xfce4-terminal is installed${reset}\n"
		else
			echo "${blue}Do you want install xfce4-terminal${green}[y/n]${reset}\n"
			echo ""
			echo "${blue}Enter>${reset}"
			echo ""
			read ch
			if [ "${ch}" = "y" ]; then
				echo "${blue} Installing ${reset}\n"
				sleep 1
				apt install -y xfce4-terminal
			elif [ "${ch}" = "n" ]; then
					echo ""
					echo "${red}xfce4-terminal not installed${reset}\n"
					echo ""
			fi
	fi
}

x11_repo
tigervnc
xfce
aterm
xorg_twm
xfce_conf
netsurf
text_editor
wireshark
xfce_term

echo ""
echo "${yellow}Now you can start vncserver by executing command\n${red}vncserver -localhost${reset}\n"
echo ""

line
echo ""
printf "${red}YouTube ${blue}https://www.youtube.com/tech-x${reset}\n"
printf "${red}Website ${blue}https://www.mrtechx.com${reset}\n"
printf "${red}Instgram ${blue}https://www.instagram.com/t_e_c_h_x/${reset}\n"
line

