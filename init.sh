#!/bin/bash

# This is meant to be retrieved using wget.
# This is for initial setup. Run with "./init.sh", NO sudo.

# Update and upgrade everything first
sudo apt update && sudo apt upgrade -y

# Install git and xclip
printf "\nInstalling git...\n"
apt install git -y
printf "\nInstalling xclip...\n"
apt install xclip -y

# Download repo
printf "\nCreating temp directory..."
mkdir ~/Downloads/temp
cd ~/Downloads/temp
printf "Cloning mint_setup into temp...\n"
git clone https://github.com/SirDood/mint_setup.git

# Run mint_setup.sh
printf "\nRunning mint_setup.sh...\n"
chmod +x ~/Downloads/temp/mint_setup/mint_setup.sh
printf "\n\n"
~/Downloads/temp/mint_setup/mint_setup.sh
