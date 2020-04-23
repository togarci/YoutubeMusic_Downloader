import pytube
import sys
import os

os.mkdir(f'{os.path.expanduser("~")}/Downloads/CutAudio')
os.chdir(f'{os.path.expanduser("~")}/Downloads/CutAudio')
youtube = pytube.YouTube(sys.argv[1])
video = youtube.streams.first()
video.download(output_path=f'{os.path.expanduser("~")}/Downloads/CutAudio', filename=youtube.title)