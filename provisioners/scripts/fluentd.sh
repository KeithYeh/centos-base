#!/bin/sh

curl -L https://toolbelt.treasuredata.com/sh/install-redhat-td-agent2.sh | sh

config_dir='/etc/td-agent/config.d'
config_file='/etc/td-agent/td-agent.conf'

# Update config
mv /tmp/file-provisioner${config_file} ${config_file}
chmod 644 ${config_file}
chown root:root ${config_file}
mkdir ${config_dir}
chown root:root ${config_dir}

# Make sure td-agent service is started and enabled
systemctl start td-agent
systemctl enable td-agent
