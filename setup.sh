#!/bin/bash

sudo dnf update

#Install VLC for codecs
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install vlc
echo "\n\nCODECS HAVE BEEN INSTALLED\n\n"

#Install gnome tweak
sudo dnf install gnome-tweak-tool
echo "\n\nGNOME TWEAK TOOL HAS BEEN INSTALLED\n\n"

#Install Spotify
sudo dnf config-manager --add-repo=https://negativo17.org/repos/fedora-spotify.repo
sudo dnf -y install spotify-client
echo "\n\nSPOTIFY HAS BEEN INSTALLED\n\n"

#Install Steam
sudo dnf config-manager --add-repo=https://negativo17.org/repos/fedora-steam.repo
sudo dnf -y install steam
echo "\n\nSTEAM HAS BEEN INSTALLED\n\n"

#Install VSCODE
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update
sudo dnf install code
echo "\n\nCODE HAS BEEN INSTALLED\n\n"

#Install ZSH
sudo dnf install zsh
sudo sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
sudo usermod --shell $(which zsh) $(whoami)
mv .zshrc ~/.zshrc
echo "\n\nZSH HAS BEEN INSTALLED\n\n"

#Install pycharm
$PYCHARM="pycharm-community-2018.2.2"
wget https://download.jetbrains.com/python/$PYCHARM.tar.gz
tar -xvzf $PYCHARM.2.2.tar.gz
mv $PYCHARM /var/opt/
#/var/opt/$PYCHARM/bin/setup.sh
echo "\n\nPYCHARM INSTALLED, MUST BE RUN FOR DESKTOP ENTRY, PLEASE RUN `/var/opt/$PYCHARM/bin/setup.sh`"

