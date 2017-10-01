#!/bin/sh

sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers
yum -y install epel-release
yum -y update
yum -y install gcc make gcc-c++ kernel-devel kernel-devel-`uname -r` perl wget bzip2 bind-utils
