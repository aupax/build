# Colab Project Link
# https://colab.research.google.com/drive/1jp4DKmncjwagkuh4msxZ3Y_9VsNXY_H5#scrollTo=qxewydBdNHYl
# build armeabi-v7a via kivy & buildozer

# add this codes
#@title **STEP 1**
#@markdown install buildozer
!pip install buildozer
#
#@title **STEP 2**
#@markdown install cython v0.29.19
!pip install cython==0.29.19
#
#@title **STEP 3**
#@markdown install lib packages required
!sudo apt-get install -y \
    python3-pip \
    build-essential \
    git \
    python3 \
    python3-dev \
    ffmpeg \
    libsdl2-dev \
    libsdl2-image-dev \
    libsdl2-mixer-dev \
    libsdl2-ttf-dev \
    libportmidi-dev \
    libswscale-dev \
    libavformat-dev \
    libavcodec-dev \
    zlib1g-dev
#
#@title **STEP 4**
#@markdown install gstreamer plugins
!sudo apt-get install -y \
    libgstreamer1.0 \
    gstreamer1.0-plugins-base \
    gstreamer1.0-plugins-good
#
#@title **STEP 5**
#@markdown install dev packages required
!sudo apt-get install build-essential libsqlite3-dev sqlite3 bzip2 libbz2-dev zlib1g-dev libssl-dev openssl libgdbm-dev libgdbm-compat-dev liblzma-dev libreadline-dev libncursesw5-dev libffi-dev uuid-dev libffi6
#
#@title **STEP 6**
#@markdown install libffi-dev
!sudo apt-get install libffi-dev
#
#@title **STEP 7**
#@markdown create **buildozer.spec** files
#@markdown on this step you can upload your python project
#@markdown also change your name app and packages name on **buildozer.spec**
!buildozer init
# upload python file with kivy codes
# change title and package name in buildozer.spec
# run code below to compile
#
#@title **STEP 8**
#@markdown run this step after you 've been upload your python project.
#@markdown this step will compile that python project to apk files.
#@markdown you can found result after succes compile in **bin** folders
!buildozer -v android debug
# result will be in the bin folder
