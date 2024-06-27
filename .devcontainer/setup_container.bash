#!/bin/bash

source /opt/ros/humble/local_setup.bash

# Create user ros, and allow it to install stuff. 
adduser --disabled-password --gecos "docker user" ros
echo 'ros ALL=(ALL) NOPASSWD:ALL' > /etc/sudoers.d/ros && chmod 0440 /etc/sudoers.d/ros
chown -R ros /workspace


# Setup FreeCAD Cross For FreeCAD

sudo --user=ros mkdir -p /home/ros/.local/share/FreeCAD/Mod/
sudo --user=ros git clone https://github.com/galou/freecad.cross.git /home/ros/.local/share/FreeCAD/Mod/freecad.cross

# Get python deps
sudo --user=ros pip install black urdf-parser-py

# clean up apt


# Make it so that sourcing happens automatically
echo "source /opt/ros/humble/setup.bash" >> /home/ros/.bashrc
echo "source /workspace/install/setup.bash" >> /home/ros/.bashrc

# Suppress deprecated setuptools warning
echo "PYTHONWARNINGS=\"ignore:setup.py install is deprecated::setuptools.command.install,ignore:easy_install command is deprecated::setuptools.command.easy_install\"; export PYTHONWARNINGS" >> /home/ros/.bashrc

# Add GAZEBO path so we can easily include models
echo "export IGN_GAZEBO_RESOURCE_PATH=/workspace/install/krytn/share/krytn/models/:/opt/ros/humble/share/realsense2_description/meshes/" >> /home/ros/.bashrc
