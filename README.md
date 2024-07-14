# nerc-dev-env
Repo to hold scripts to deploy a NERC-based development environment

# bootstrap

## prereqs

### setup SSH key

### setup floating IP

### setup SG

### setup storage

## Minimum NERC image to then build nerc-dev and compute node images

### Setup VM via GUI in browser

### associate floating IP

### configure SSH config and log into bootstrap server

### configure bootstrap server

    $ sudo dnf -y upgrade --refresh

    $ sudo dnf -y install epel-release

    $ sudo dnf -y install dnf-plugins-core

    $ sudo dnf -y config-manager --set-enabled powertools

    $ sudo dnf -y install vim-enhanced wget git screen

    $ sudo dnf -y config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo

    $ sudo dnf -y install packer

    $ packer plugins install github.com/hashicorp/openstack

    $ wget -O Miniforge3.sh "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"

    $ sh Miniforge3.sh 

press Enter

yes

accept default

yes init

logout and log back in

conda config --set auto_activate_base false

    $ mamba create --name stack pip python-openstackclient

    $ mamba activate stack

source openstack credentials

test app credentials 

    $ openstack image list

clone github repo

set up your network in json file

validate nerc-dev packer json file

build nerc-dev image

shelve or destroy bootstrap 


deploy nerc-dev
