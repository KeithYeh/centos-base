#!/bin/sh

yum -y install chrony

config_path='/etc/chrony.conf'

# Update config
mv /tmp/file-provisioner${config_path} ${config_path}
chmod 644 ${config_path}
chown root:root ${config_path}
chcon -u system_u -t etc_t ${config_path}

# Make sure chrony service is started and enabled
systemctl start chronyd
systemctl enable chronyd
