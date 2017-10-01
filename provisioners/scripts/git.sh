#!/bin/sh
#
# Install git from source

git_tar='/tmp/git.tar.gz'
git_dir='/var/lib/git'
update_git_script='/usr/bin/update-git'

# Install required package
yum -y install curl-devel expat-devel gettext-devel openssl-devel zlib-devel perl-ExtUtils-MakeMaker autoconf

# Get source code
wget https://www.kernel.org/pub/software/scm/git/git-2.14.2.tar.gz -O ${git_tar}
mkdir -p ${git_dir}
tar -zxvf ${git_tar} -C ${git_dir} --strip-components 1

# Install from source code
cd ${git_dir}
make configure
./configure --prefix=/usr
make all
make install

# Create update script file
touch ${update_git_script}
chmod +x ${update_git_script}

# Generate update script
cat << SCRIPT > ${update_git_script}
    rm -rf ${git_dir}
    git clone git://git.kernel.org/pub/scm/git/git.git ${git_dir}

    cd ${git_dir}

    make configure
    ./configure --prefix=/usr
    make all
    make install
SCRIPT

# Cleanup
rm -f ${git_tar}
