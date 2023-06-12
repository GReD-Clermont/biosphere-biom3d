#!/bin/bash

source /etc/profile
LOCUSER='ubuntu'
CONDA_DIR='/var/lib/miniconda3' 

# Install x2go
sudo apt-get install x2goserver x2goserver-xsession xfce4-session

# Install pytorch and biom3d
ss-display "Installing Pytorch and biom3d (with pip3)"
sudo apt-get install python3-tk python3-dev libssl-dev libbz2-dev
python3 -m pip install torch omero-py biom3d biom3d[gui]
