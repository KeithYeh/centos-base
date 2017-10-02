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

# Usage
## Build images for all builders
```bash
packer build template.json
```
## Build images for specific builder
```
packer build --only=virtualbox-iso template.json
packer build --only=vmware-iso template.json
```

# Reference
- [Packer](https://www.packer.io/docs/index.html)
- [Vagrant](https://www.vagrantup.com/docs/index.html)
- [RedHat 7 Kickstart syntax reference](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/installation_guide/sect-kickstart-syntax)

# LICENSE
MIT
