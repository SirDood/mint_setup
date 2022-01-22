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

# Install pavucontrol
printf "\nInstalling pavucontrol...\n"
sudo apt install pavucontrol

