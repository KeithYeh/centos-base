#!/bin/sh
#
# Install vim and set it as default editor

yum -y install vim

echo 'EDITOR="/usr/bin/vim" ; export EDITOR' > /etc/profile.d/editor.sh
