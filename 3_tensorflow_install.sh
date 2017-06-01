#!/bin/bash

# setup default env and install tensorflow
conda create -n dl3 python=3.6
source activate dl3
conda install pandas numpy scipy scikit-image
pip install --ignore-installed --upgrade https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-1.0.1-cp36-cp36m-linux_x86_64.whl
pip install keras h5py