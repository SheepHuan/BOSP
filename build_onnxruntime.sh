#!/bin/bash
export tag=v1.16.0
export root_path="/tmp/onnxruntime@$tag"
# cd BOSP ; chmod +x build_onnxruntime.sh ; ./build_onnxruntime
# install dependency
apt update
apt install wget -y

# install cmake 3.26 higher
mkdir /root/bin
cd /root/bin
wget https://github.com/Kitware/CMake/releases/download/v3.27.7/cmake-3.27.7-linux-x86_64.sh
./cmake-3.27.7-linux-x86_64.sh
export PATH=$PATH:/root/bin/cmake-3.27.7-linux-x86_64/bin

git clone --recurse -b $tag  https://github.com/microsoft/onnxruntime root_path
cd $root_path
./build.sh --config RelWithDebInfo --build_shared_lib --parallel --compile_no_warning_as_error --skip_submodule_sync --allow_root
