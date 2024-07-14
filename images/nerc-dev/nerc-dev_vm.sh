#!/bin/sh

set -ex

if [ `id -u` -ne 0 ]; then
     sudo $0
    exit 0
fi

## your custom code below
dnf -y upgrade --refresh
#dnf -y install epel-release

dnf -y install http://repos.openhpc.community/OpenHPC/2/EL_8/x86_64/ohpc-release-2-1.el8.x86_64.rpm
dnf -y install dnf-plugins-core
dnf -y config-manager --set-enabled powertools
dnf -y install ohpc-base
dnf -y install hwloc-ohpc
dnf -y install ohpc-slurm-server
dnf -y install lmod-ohpc ohpc-autotools
dnf -y install gnu12-compilers-ohpc 
dnf -y install openmpi4-pmix-gnu12-ohpc mpich-ofi-gnu12-ohpc
dnf -y install lmod-defaults-gnu12-openmpi4-ohpc

dnf -y install curl python3-pip jq make nfs-utils vim-enhanced wget git screen

yum-config-manager -y --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
dnf -y install packer

perl -pi -e "s/SELINUX=enforcing/SELINUX=disabled/" /etc/selinux/config
