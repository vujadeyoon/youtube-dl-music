#!/bin/bash

# Dveloper: Sungjun Yoon
# E-mail: sjyoon1671@gmail.com
# Github: https://github.com/vujadeyoon
# Date: May 23, 2020.
#
# Title: bash_install_apps_mp3.sh
# Version: 0.1
# Description: A bash file to install some packages (or programs) for using bash_get_mp3.sh.
# Development environment: Ubuntu MATE 18.04.3 LTS (Bionic)


function pause(){
  read -r -p "$*"
}


pause "[1/3] Press [Enter] key to continue..."
pause "[2/3] Press [Enter] key to continue..."
pause "[3/3] Press [Enter] key to continue..."

sudo apt-get install ffmpeg
sudo wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
