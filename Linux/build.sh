#!/bin/bash

CEF_VERSION="145.0.27+g4ddda2e+chromium-145.0.7632.117"

if [ ! -d "cef_binary_$CEF_VERSION" ]; then
    wget https://cef-builds.spotifycdn.com/cef_binary_${CEF_VERSION}_linux64.tar.bz2
    tar -xjf cef_binary_${CEF_VERSION}_linux64.tar.bz2
fi

mkdir -p build
cd build
cmake ..
cmake --build .
