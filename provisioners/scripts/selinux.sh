#!/bin/sh
# Change SELinux mode to permissive
setenforce Permissive
sed -i "s/^SELINUX=.*/SELINUX=permissive/" /etc/selinux/config
