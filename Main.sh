#!/bin/bash
echo "Paste URL: "
read url
python3.7 VideoDownload.py "$url"


file=$(ls /home/$USER/Downloads/CutAudio/)


sudo ffmpeg -i /home/$USER/Downloads/CutAudio/"$file" /home/$USER/Downloads/CutAudio/"${file:0:${#file}-4}.mp3"
sudo chmod a+rwx /home/$USER/Downloads/CutAudio/"${file:0:${#file}-4}.mp3"
cp /home/$USER/Downloads/CutAudio/"${file:0:${#file}-4}.mp3" /home/$USER/Downloads/
rm -r /home/$USER/Downloads/CutAudio