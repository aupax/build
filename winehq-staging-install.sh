# change linux to 32bit
sudo dpkg --add-architecture i386
# import winehq.key
wget -nc https://dl.winehq.org/wine-builds/winehq.key
# add winehq.key to directory
sudo apt-key add winehq.key
# add winehq repository for debian 18.04 LTS
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
# update packages and repository
sudo apt update
# install winehq-staging
sudo apt install --install-recommends winehq-staging
# check installed wine / version of wine
wine --version
# configure winehq
winecfg

# RUN .EXE FILES
# wine namefiles.exe
# or you can just click .exe files like on windows

# ©AUPAXYZ 2021

