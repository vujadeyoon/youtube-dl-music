#!/bin/bash

# Dveloper: Sungjun Yoon
# E-mail: sjyoon1671@gmail.com
# Github: https://github.com/vujadeyoon
# Date: May 23, 2020.
#
# Title: bash_get_mp3.sh
# Version: 0.1
# Description: A bash file to get an audio mp3 file from the YouTube using the youtube-dl.
# Development environment: Ubuntu MATE 18.04.3 LTS (Bionic)


function pause(){
  read -r -p "$*"
}


function _check_a_param() {
	param=$1

	if ! [ -d $param ]
	then
		# Success
		cumsum_params=$((${cumsum_params} + 1))
	fi

}


function check_params() {
	param_1=$1
  param_2=$2
  param_3=$3

	_check_a_param ${param_1}
	_check_a_param ${param_2}
	_check_a_param ${param_3}
}


URL=${1}
NAME_MP3=${2}
FORMAT=${3}
cumsum_params=0

check_params ${URL} ${NAME_MP3} ${FORMAT}


case ${cumsum_params} in
"1")
	echo "Get the video information form the YouTube."
	youtube-dl -F ${URL}
	;;

"2")
	echo "Get the audio with the best quality form the YouTube."
	mkdir _tmp_youtube_dl
	cd ./_tmp_youtube_dl
	youtube-dl -f 251 ${URL}
	mv ./*.webm ./youtube_dl_music.webm
	ffmpeg -i ./*.webm -vn -ab 256k -ar 44100 -y ../${NAME_MP3}.mp3
	cd ..
	rm -rf ./_tmp_youtube_dl
	;;

"3")
	echo "Get the audio with the specific quality form the YouTube."
	mkdir _tmp_youtube_dl
	cd ./_tmp_youtube_dl
	youtube-dl -f ${FORMAT} ${URL}
	mv ./*.webm ./youtube_dl_music.webm
	ffmpeg -i ./* -vn -ab 256k -ar 44100 -y ../${NAME_MP3}.mp3
	cd ..
	rm -rf ./_tmp_youtube_dl
	;;

*)
	echo "Please check the usage as follows."
	echo "Usage:"
	echo "    i)   Get the audio format form the YouTube.:                    bash bash_get_mp3.sh [URL]"
	echo "    ii)  Get the audio with the best quality form the YouTube.:     bash bash_get_mp3.sh [URL] [NAME_MP3]"
	echo "    iii) Get the audio with the specific quality form the YouTube.: bash bash_get_mp3.sh [URL] [NAME_MP3] [FORMAT]"
	exit
	;;

esac
