#! /bin/bash


brew tag sanemat/font
brew install ricty

cp -f /usr/local/opt/ricty/share/fonts/Ricyt*.ttf ~/Library/Fonts
fc-cache -vf
