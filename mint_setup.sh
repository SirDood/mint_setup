# Assume that you've already updated, upgraded and installed git. Basically, this isn't FRESH fresh.

printf "Hi this is just to get sudo permissions without running as sudo lmao\n"
sudo printf "I now have your home address >:)\n\n"

# Download the WhiteSur theme and Vimix icons
cd ~/Downloads/temp
printf "\nGit cloning WhiteSur theme...\n"
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
printf "\nGit cloning Vimix icons....\n"
git clone https://github.com/vinceliuice/vimix-icon-theme.git

# Install WhiteSur theme and Vimix icons
printf "\nInstalling WhiteSur theme...\n"
~/Downloads/temp/WhiteSur-gtk-theme/install.sh
printf "\nInstalling Vimix icons...\n"
~/Downloads/temp/vimix-icon-theme/install.sh -a

# Load system settings
printf "\nMoving wallpaper.jpg to ~/Pictures/Random Images...\n"
mv ~/Downloads/temp/mint_setup/wallpaper.jpg ~/Pictures/"Random Images"/
printf "Loading system settings...\n"
dconf load / < ~/Downloads/temp/mint_setup/sys_settings
printf "Setting up applets...\n"
mv ~/Downloads/mint_setup/13.json ~/.cinnamon/configs/calendar@cinnamon.org/
mv ~/Downloads/mint_setup/0.json ~/.cinnamon/configs/menu@cinnamon.org/

# Delete test folder when done
printf "\nDeleting temp folder...\n"
sudo rm -rf ~/Downloads/temp

echo "This may be buggy sometimes, so reboot if needed."
