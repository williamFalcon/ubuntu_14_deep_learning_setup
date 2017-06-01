#!/bin/bash

# install cuda
curl -O http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1404/x86_64/cuda-repo-ubuntu1404_8.0.61-1_amd64.deb
sudo dpkg -i ./cuda-repo-ubuntu1404_8.0.61-1_amd64.deb
sudo apt-get update
sudo apt-get install cuda -y
sudo apt-get install linux-headers-$(uname -r) -y

# install cudnn
wget https://s3.amazonaws.com/personal-waf/libcudnn5_5.1.10-1%2Bcuda8.0_amd64.deb
wget https://s3.amazonaws.com/personal-waf/libcudnn5-dev_5.1.10-1%2Bcuda8.0_amd64.deb

sudo dpkg -i ./libcudnn5_5.1.10-1+cuda8.0_amd64.deb
sudo dpkg -i ./libcudnn5-dev_5.1.10-1+cuda8.0_amd64.deb