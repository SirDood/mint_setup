#!/bin/sh

# This is to setup the my audio stuff.

printf "Updating...\n"
sudo apt update && sudo apt upgrade -y

# Installing PipeWire
printf "\nInstalling PipeWire...\n"
sudo add-apt-repository ppa:pipewire-debian/pipewire-upstream -y
sudo apt update
sudo apt install gstreamer1.0-pipewire pipewire-media-session libspa-0.2-bluetooth libspa-0.2-jack pipewire pipewire-audio-client-libraries -y

# Setting up PipeWire server
printf "\nSetting up PipeWire audio server...\n"
systemctl --user daemon-reload
systemctl --user --now disable pulseaudio.service pulseaudio.socket
systemctl --user --now enable pipewire pipewire-pulse
systemctl --user --now enable pipewire-media-session.service
printf "\nAudio server info\n"
pactl info

# Installing pavucontrol
printf "\nInstalling pavucontrol...\n"
sudo apt install pavucontrol -y

# Installing Catia
printf "\nInstalling KXStudio repos...\n"
sudo apt-get install apt-transport-https gpgv -y
sudo dpkg --purge kxstudio-repos-gcc5
cd ~/Downloads/
wget https://launchpad.net/~kxstudio-debian/+archive/kxstudio/+files/kxstudio-repos_10.0.3_all.deb
sudo dpkg -i ~/Downloads/kxstudio-repos_10.0.3_all.deb
printf "\nUpdating apt...\n"
sudo apt update
printf "\nInstalling Catia...\n"
sudo apt install catia

printf "\nInstalled PipeWire, pavucontrol and Catia.\n"

