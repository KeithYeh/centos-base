#!/bin/sh

date > /home/vagrant/vagrant_box_build_time

mkdir -pm 700 /home/vagrant/.ssh
cat /tmp/file-provisioner/vagrant-keithyeh.pub > /home/vagrant/.ssh/authorized_keys
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant /home/vagrant/.ssh

rm -f /tmp/file-provisioner/vagrant-keithyeh.pub
