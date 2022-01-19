#!/bin/bash

# This is meant to be retrieved using wget.
# This is for initial setup. Run with "./init.sh", NO sudo.

# Update and upgrade everything first
sudo apt update && sudo apt upgrade -y

# Install git and xclip
apt install git -y
apt install xclip -y

# Download repo
mkdir ~/Downloads/temp
cd ~/Downloads/temp
git clone https://github.com/SirDood/mint_setup.git

# Run mint_setup.sh
chmod +x ~/Downloads/temp/mint_setup/mint_setup.sh
~/Downloads/temp/mint_setup/mint_setup.sh
