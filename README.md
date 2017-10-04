# CentOS Base
This image is based on CentOS 7.4 Minimal(1708) with following software/packages
- ansible 2.3
- git 2.14
- td-agent 0.12
- wget
- bzip
- vim
- network utilities
- monitor utilities

After installed, packer will create a new user `vagrant` with password `vagrant`.
Vagrant Box will pack with self-generated SSH key pair for user vagrant.

Built vagrant box
https://app.vagrantup.com/KeithYeh/boxes/centos-base

Default timezone: UTC

NTP servers:
- 0.tw.pool.ntp.org
- 1.tw.pool.ntp.org
- 2.tw.pool.ntp.org
- 3.tw.pool.ntp.org

# Usage
Before build virtualbox-iso or vmware-iso. Add Vagrant Cloud token to environment variable `VAGRANT_ACCESS_TOKEN`

## Build images for all builders
```bash
packer build -var-file=config/aws.json template.json
```
## Build images for specific builder
```bash
# VirtualBox
packer build --only=virtualbox-iso template.json

# VMware Desktop
packer build --only=vmware-iso template.json

# Amazon AMI (EBS backed)
packer build --only=amazon-ebs -var-file=config/aws.json template.json
```

# Reference
- [Packer](https://www.packer.io/docs/index.html)
- [Vagrant](https://www.vagrantup.com/docs/index.html)
- [RedHat 7 Kickstart syntax reference](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/installation_guide/sect-kickstart-syntax)

# LICENSE
MIT
