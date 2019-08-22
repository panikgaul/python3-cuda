#!/usr/bin/env bash
#
# Setup Docker image and install packages
#

export PKG_PACKAGES="`cat req.txt`"
export PIP_PACKAGES=`cat req-pip.txt`

echo "**** install packages ****"

apt-get update
#apt-get -y upgrade
apt-get -y install $PKG_PACKAGES

echo "**** install pip ****"

pip3 install $PIP_PACKAGES

exit 0
