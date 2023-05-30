#!/bin/bash

source /etc/profile
LOCUSER='ubuntu'
CONDA_DIR='/var/lib/miniconda3' 

# Install pytorch and biom3d
ss-display "Installing Pytorch and biom3d (with pip3)"
python3 -m pip install torch biom3d
