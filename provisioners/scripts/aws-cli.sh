#!/bin/sh
#
# Install aws command line interface

# Install pip first
python /tmp/file-provisioner/get-pip.py

# Install aws cli
pip install awscli
