# Assume that you've already updated, upgraded and installed git. Basically, this isn't FRESH fresh.

printf "Hi this is just to get sudo permissions without running as sudo lmao\n"
sudo echo "I now have your home address >:)\n"

# Create directories
mkdir ~/Downloads/temp
printf "Creating 'Random Images' directory in ~/Pictures/...\n"
mkdir ~/Pictures/"Random Images"
mv ~/Downloads/temp/mint_setup/wallpaper.jpg ~/Pictures/"Random Images"/

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
~/Downloads/temo/vimix-icon-theme/install.sh -a

# Load system settings
printf "\nLoading system settings...\n"
dconf load / < ~/Downloads/temp/mint_setup/mintdesktopbackup
printf "Setting up applets...\n"
mv ~/Downloads/mint_setup/13.json ~/.cinnamon/configs/calendar@cinnamon.org/
mv ~/Downloads/mint_setup/0.json ~/.cinnamon/configs/menu@cinnamon.org/

'
# Setting themes as izz
printf "\nSetting Yuru Camp wallpaper....\n"
gsettings set org.cinnamon.desktop.background picture-uri "file://~/Pictures/Random Images/yurucamp.jpg"
gsettings set org.cinnamon.desktop.background picture-options "zoom"
printf "Setting interface theme..\n."
gsettings set org.cinnamon.desktop.interface gtk-theme "WhiteSur-dark-solid"
printf "Setting icons theme...\n"
gsettings set org.cinnamon.desktop.interface icon-theme "Vimix-Beryl-dark"
printf "Setting windows theme...\n"
gsettings set org.cinnamon.desktop.wm.preferences theme "WhiteSur-dark"
printf "Setting overall theme...\n"
gsettings set org.cinnamon.theme name "WhiteSur-dark-solid"
'

# Delete test folder when done
printf "\nDeleting temp folder...\n"
sudo rm -rf ~/Downloads/temp

echo "This may be buggy sometimes, so reboot if needed."
