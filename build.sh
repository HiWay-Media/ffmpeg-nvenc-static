#!/bin/bash
set -ex
#
echo "FFmpeg ${1} Nvenc ${2}"
#
## Prepare
apt-get update
apt-get install -y \
    curl diffutils file coreutils m4 xz-utils nasm python3 python3-pip appstream
#
## Install dependencies
apt-get install -y \
    autoconf automake build-essential cmake git libass-dev libbz2-dev libfontconfig1-dev libfreetype6-dev libfribidi-dev libharfbuzz-dev libjansson-dev liblzma-dev libmp3lame-dev libnuma-dev libogg-dev libopus-dev libsamplerate-dev libspeex-dev libtheora-dev libtool libtool-bin libturbojpeg0-dev libvorbis-dev libx264-dev libxml2-dev libvpx-dev m4 make nasm ninja-build patch pkg-config tar zlib1g-dev autopoint imagemagick gsfonts wget  libzmq5 libzmq3-dev
#
#
git clone -b sdk/$2 https://github.com/FFmpeg/nv-codec-headers.git \
	&& cd nv-codec-headers \
	&& make \
	&& make install
#

wget https://ffmpeg.org/releases/ffmpeg-$1.tar.xz \
 && tar -xf ffmpeg-$1.tar.xz \
 && rm ffmpeg-$1.tar.xz
#
mkdir -p /tmp/bin
# Configure and build ffmpeg with nvenc support
cd ffmpeg-$1 \
 && ./configure --prefix=/usr/local \
    --bindir="/tmp/bin" \
    --enable-filter=drawtext \
    --enable-nonfree \
    --enable-nvenc \
    --enable-gpl \
    --enable-version3 \
    --enable-static \
    --disable-debug \
    --disable-ffplay \
    --disable-indev=sndio \
    --disable-outdev=sndio \
    --cc=gcc \
    --enable-fontconfig \
    --enable-gray \
    --enable-libmp3lame \
    --enable-libopus \
    --enable-libvpx \
    --enable-libx264 \
    --enable-libzmq \
    --extra-cflags=-I/usr/local/cuda/include \
    --extra-ldflags=-L/usr/local/cuda/lib64 \
 && make install \
 && cd ..
#
tar -czvf /tmp/bin/ffmpeg-${1}-nvenc-${2}.tar --transform='s|.*/||' /tmp/bin/ffmpeg /tmp/bin/ffprobe
ls -l /tmp/bin
#
echo "Finished FFmpeg ${1} Nvenc ${2}"
#
