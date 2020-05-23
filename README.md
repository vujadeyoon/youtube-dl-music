# youtube-dl-music
- Get music from the Google YouTube.
- All of providen bash codes are implemented as wrappers for the ffmpeg and youtube-dl commands.


## Table of contents
0.  [Notice](#notice)
1.  [Copyright and License](#copyright_license)
2.  [Development envrionment](#envs)
3.  [Preparation to get music from the YouTube](#preparation)
4.  [Get music from the YouTube using the youtube-dl](#get_music)


## 0. Notice <a name="notice"></a>
- I recommend that you should ignore the commented instructions with an octothorpe, #.
- Modified date: May. 23, 2020.


## 1. Copyright and License <a name="copyright_license"></a>
- DOWNLADING CONTENT THAT VIOLATES COPYRIGHT IS PROHIBITED.
- YOU ARE RESPONSIBLE FOR ALL ACTS RESULTING FROM DOWNLOADING YOUTUBE CONTENTS.
- I respect and follow the Google YouTube policies. Also, I respect and comply with the rights of the YouTube creator's works (i.e. vidoes, audios and any other contents of the YouTube). Thus, I prohibit acts that do not comply with YouTube content copyright and Google YouTube poilices.
- It is stated that any problems arising from illegally obtained the YouTube contents (e.g. copyright problems) have nothing to do with this GitHub author. Thus, You must get a copyright of a YouTube content you want form the YouTube creator.
- Please note that the only providen bash codes comply with the MIT license.


## 2. Development environment <a name="envs"></a>
- Operating System (OS): Ubuntu MATE 18.04.3 LTS (Bionic)


## 3. Preparation to get music from the YouTube <a name="preparation"></a>
A. Reference to the website,
<a href="https://ffmpeg.org" title="FFmpeg">
FFmpeg</a>
and
<a href="https://ytdl-org.github.io/youtube-dl/index.html" title="youtube-dl">
youtube-dl</a>.
<br />
B. Install the required packages.<br />
```bash
usrname@hostname:~/curr_path$ bash bash_install_apps_mp3.sh
```


## 4. Get music from the YouTube using the youtube-dl. <a name="get_music"></a>
A. Get the audio format form the YouTube.
```bash
usrname@hostname:~/curr_path$ bash bash_get_mp3.sh [URL]
```
B. Get the audio with the best quality form the YouTube.
```bash
usrname@hostname:~/curr_path$ bash bash_get_mp3.sh [URL] [NAME_MP3]
```
C. Get the audio with the specific quality form the YouTube.
```bash
usrname@hostname:~/curr_path$ bash bash_get_mp3.sh [URL] [NAME_MP3] [FORMAT]
```

- Please note that the parameters, [URL], [NAME_MP3], [FORMAT], indicate youtube url, a name of mp3 to be saved and an audio quality that is checked in the subsection 2-C, respectively.
