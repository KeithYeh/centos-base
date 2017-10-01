#!/bin/sh
# Auto apply security update for yum packages

yum -y install yum-cron

config_path='/etc/yum-cron.conf'

# Update config
mv /tmp/file-provisioner${config_path} ${config_path}
chmod 644 ${config_path}
chown root:root ${config_path}

# Start yum-cron service
systemctl start yum-cron
systemctl enable yum-cron
