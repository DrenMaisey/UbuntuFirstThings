#!/bin/bash
#

#curl
sudo apt install -y curl wget
#brave
clear
sudo apt install apt-transport-https -y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update -y
sudo apt install brave-browser -y
#GnomeShellExt
sudo apt-get install chrome-gnome-shell -y
#docker
sudo apt-get remove docker docker-engine docker.io
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce -y
sudo groupadd docker
sudo usermod -aG docker $USER
#spotify
sudo snap install spotify
#vscode
clear
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get install code -y
#flatpak
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo 
#ubuntudock
sudo apt install dconf-editor -y
#telegram
sudo snap install telegram-desktop
#applauncher
sudo add-apt-repository ppa:appimagelauncher-team/stable
sudo apt update
sudo apt install appimagelauncher -y
#Mainline
sudo add-apt-repository ppa:cappelikan/ppa
sudo apt update
sudo apt install mainline -y
#wmctrl
sudo apt install wmctrl -y
#ulauncher
sudo add-apt-repository ppa:agornostal/ulauncher
sudo apt install ulauncher -y
#KeepassXC
sudo snap install keepassxc
#authy
sudo snap install authy --beta
#tweak
sudo apt-get install gnome-tweaks -y
#ffmpeg
sudo snap install ffmpeg
#Youtube-Dl
sudo snap install youtube-dl
#Gigolo
sudo apt install gigolo
#calibre
flatpak install flathub com.calibre_ebook.calibre