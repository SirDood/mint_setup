#!/bin/bash

# This is meant to be retrieved using wget.
# This is for initial setup. Give executable permissions first then run with "./init.sh", NO sudo.

# Update and upgrade everything first
sudo apt update && sudo apt upgrade -y

# Install git
printf "\nInstalling git...\n"
sudo apt install git -y

# Installing flatpak and flatpak-builder
printf "\nInstalling flatpak and flatpak-builder...\n"
sudo apt install flatpak -y
sudo apt-get install flatpak-builder -y
sudo apt install gnome-software-plugin-flatpak -y

# Create directories
printf "\nCreating temp directory...\n"
mkdir ~/Downloads/temp
printf "Creating 'Random Images' directory in ~/Pictures/...\n"
mkdir ~/Pictures/"Random Images"

# Download repo
printf "Cloning mint_setup repo into temp...\n"
cd ~/Downloads/temp/
git clone https://github.com/SirDood/mint_setup.git

# Setup system settings right away
chmod +x ~/Downloads/temp/mint_setup/mint_setup.sh
~/Downloads/temp/mint_setup/mint_setup.sh
