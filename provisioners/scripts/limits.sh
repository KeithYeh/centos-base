#!/bin/sh

config_path='/etc/security/limits.conf'

# Update config
mv /tmp/file-provisioner${config_path} ${config_path}
chmod 644 ${config_path}
chown root:root ${config_path}
chcon -u system_u -t etc_t ${config_path}
