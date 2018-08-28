#!/bin/bash

dnf update

#Install VLC for codecs
dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
dnf install vlc
echo "\n\nCODECS HAVE BEEN INSTALLED\n\n"

#Install gnome tweak
dnf install gnome-tweak-tool
echo "\n\nGNOME TWEAK TOOL HAS BEEN INSTALLED\n\n"

#Install Spotify
dnf config-manager --add-repo=https://negativo17.org/repos/fedora-spotify.repo
dnf -y install spotify-client
echo "\n\nSPOTIFY HAS BEEN INSTALLED\n\n"

#Install Steam
dnf config-manager --add-repo=https://negativo17.org/repos/fedora-steam.repo
dnf -y install steam
echo "\n\nSTEAM HAS BEEN INSTALLED\n\n"

#Install VSCODE
rpm --import https://packages.microsoft.com/keys/microsoft.asc
sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf check-update
sudo dnf install code

#Install ZSH
dnf install zsh
chsh -s $(which zsh)

#Install pycharm
$PYCHARM="pycharm-community-2018.2.2"
wget https://download.jetbrains.com/python/$PYCHARM.tar.gz
tar -xvzf $PYCHARM.2.2.tar.gz
mv $PYCHARM /var/opt/
#/var/opt/$PYCHARM/bin/setup.sh
echo "\n\nPYCHARM INSTALLED, MUST BE RUN FOR DESKTOP ENTRY, PLEASE RUN `/var/opt/$PYCHARM/bin/setup.sh`"

