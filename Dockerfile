FROM automaticrippingmachine/automatic-ripping-machine:latest 
LABEL desc="ARM w/ Intel Quick Sync Video Support"
RUN apt update -y &&\
    apt upgrade -y &&\
    apt install -y libmfx1 libmfx-tools libmfx-dev vorbis-tools wget &&\
    mkdir -p quicksync && cd quicksync &&\
    git clone https://github.com/intel/libva.git libva &&\
    cd libva &&\
    ./autogen.sh &&\
    make && make install &&\
    cd .. &&\
    wget https://github.com/Intel-Media-SDK/MediaSDK/releases/download/intel-mediasdk-21.3.5/MediaStack.tar.gz &&\
    tar -xvf MediaStack.tar.gz &&\
    cd MediaStack &&\
    bash install_media.sh &&\
    cd .. &&\
    git clone https://github.com/Intel-Media-SDK/MediaSDK msdk &&\
    cd msdk &&\
    mkdir build && cd build &&\
    cmake .. &&\
    make && make install &&\
    cd .. &&\
    rm -rf quicksync
RUN chown -R 1000:1000 /etc/container_environment