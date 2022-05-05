echo "$(tput setaf 1) rolling the script $(tput setaf 7)" 
sudo chmod -x /usr/bin/gnome-keyring
sudo apt purge --auto-remove aisleriot -y
sudo apt purge --auto-remove gnome-mines -y
sudo apt install synaptic -y
sudo apt purge gnome-games-common gbrainy && sudo apt autoremove

echo "$(tput setaf 3) installing chrome $(tput setab 7)" 
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update
sudo apt install google-chrome-stable
sudo apt upgrade

echo "$(tput setaf 6) installing curl $(tput setaf 7)"
sudo apt install curl -y

echo "$(tput setaf 7) installing git"
sudo apt install git -y

echo "$(tput sgr 4)$(tput setaf 7) GIT configs $(tput sgr 0)"
git config --global user.name "Rafael Silva"
git config --global user.email rafaaelds@gmail.com
git config --global core.editor code
git config --global merge.tool code--wait
git config --global color.ui true
git config --list
git config --global -e

echo "$(tput setab 4) installing MySQL $(tput setab 7)"
sudo apt install mysql-server -y

echo "$(tput setaf 1) another update $(tput setab 7)"
sudo apt update

echo "$(tput setaf 1) installing Java $(tput setab 7)"
sudo apt install default-jre -y
sudo apt update
sudo apt install default-jdk -y

echo "$(tput setaf 2) installing nodeJS $(tput setab 7)"
sudo apt install nodejs npm
sudo npm cache clean -f
sudo npm install -g n -y
sudo n stable -y
sudo n latest -y

echo "$(tput setaf 6) installing Vue $(tput setab 7)"
npm install -g @vue/cli

#echo "$(tput setaf 6) installing nvm $(tput setab 7)"
#curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

echo "$(tput setaf 3) installing python3 $(tput setab 7)"
sudo apt-get install python3 python3-venv python3-pip -y

echo "$(tput setaf 1) installing pips $(tput setab 7)"

echo "$(tput setaf 6) installing meteorology pips $(tput setab 7)"
pip install --upgrade pip
pip install matplotlib 
pip install numpy 
pip install jupyter
pip install metpy
pip install seaborn
pip install cartopy
pip install netCDF4
pip install tensorflow
pip install "dask[complete]"
python -m pip install --user numpy scipy matplotlib ipython jupyter pandas sympy nose

echo "$(tput setaf 2) installing KiKit Plugin for KiCAD $(tput setab 7)"
pip3 install KiKit

echo "$(tput setab 7)$(tput sgr 5) checking versions $(tput sgr 0)"
javac -version
node --version
npm --version
nvm --version
python3 --version
vue --version

echo "$(tput setaf 5) installing fonts $(tput setab 7)"
sudo apt install fonts-firacode -y
sudo apt install fonts-hack-ttf -y

echo "$(tput setaf 4) installing gnome tweaks $(tput setab 7)"
sudo apt install gnome-tweaks -y
sudo apt install ubuntu-restricted-extras -y

echo "$(tput setaf 4) installing VLC media player $(tput setab 7)"
sudo apt install vlc -y

echo "$(tput setaf 2) installing GrADS $(tput setab 7)"
sudo apt install grads -y

echo "$(tput setaf 4) installing wx maxima $(tput setab 7)"
sudo apt install maxima wxmaxima -y

echo "$(tput setaf 2) installing kicad $(tput setab 7)"
sudo add-apt-repository --yes ppa:kicad/kicad-6.0-releases
sudo apt update
sudo apt install --install-recommends kicad -y

echo "$(tput setaf 4) installing code $(tput setab 7)"
sudo snap install --classic code

echo "$(tput setaf 2) installing arduino $(tput setab 7)"
sudo snap install arduino

echo "$(tput setaf 4) Instlalling MySQL Workbench $(tput setab 7)"
sudo snap install mysql-workbench-community

echo "$(tput setaf 2) installing spotify $(tput setab 7)" 
sudo snap install spotify

echo "$(tput setab 5) installing slack $(tput setab 7)"
sudo snap install slack --classic

echo "$(tput setaf 6) installing discord $(tput setab 7)"
sudo snap install discord

echo "$(tput setaf 6) downloading and installing deb files $(tput setab 7)"
cd ~/Downloads
wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2020.03.04_amd64.deb
sudo dpkg -i *.deb -y

echo "$(tput setaf 1) upgrading and restart $(tput setab 7)"
sudo apt update && sudo apt-get install -f
sudo apt update && sudo apt full-upgrade
sudo reboot
