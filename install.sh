#!/bin/bash

source /etc/profile
LOCUSER='ubuntu'
CONDA_DIR='/var/lib/miniconda3' 

# Python is python3
sudo apt-get install python-is-python3

# Install pytorch and biom3d
ss-display "Installing Pytorch and biom3d (with pip3)"
sudo apt-get install -y python3-tk python3-dev libssl-dev
python3 -m pip install https://github.com/ome/zeroc-ice-ubuntu2004/releases/download/0.2.0/zeroc_ice-3.6.5-cp38-cp38-linux_x86_64.whl
python3 -m pip install torch omero-py 

# Install biom3d dependencies independently because PyYAML dependency cannot be re-installed on the existing Appliance 
python3 -m pip install tqdm scikit-image scipy SimpleITK pandas tensorboard protobuf numpy matplotlib appdirs numba torchio paramiko netcat
python3 -m pip install --no-deps biom3d biom3d[gui]

# Install napari
sudo apt-get install qt5-style-plugins
python3 -m pip install "napari[all]"
