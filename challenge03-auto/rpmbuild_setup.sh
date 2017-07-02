#!/bin/bash
# Author: Vivek KC
# Description: Setup rpmbuild tree

DIR="gforge/v-challenge/challenge03-auto/rpmbuild"
ID=$UID
SUDO=
echo "This script is for setting up the rpmbuild tools"
if [ $ID -ne 0 ]; then
	echo "INFO: $USER with UID=$ID needs sudo privillege.."
	SUDO=sudo
else
	echo "INFO: Proceeding as root user, no sudo required."
fi

# Install build tools
$SUDO yum install rpm-config
$SUDO yum install redhat-rpm-config
$SUDO yum install rpmdevtools
$SUDO yum install rpmlint
$SUDO yum install make
$SUDO yum install gcc
$SUDO yum install info

# Setup build tree
#rpmdev-setuptree
mkdir -p $HOME/$DIR/{BUILD,RPMS,SOURCES,SPECS,SRPMS}
echo '%_topdir %(echo $HOME)/'"$DIR" > ~/.rpmmacros

echo "Setup complete, go to $DIR/SPECS and create .spec file"
cd $HOME/$DIR/SPECS
rpmdev-newspec hello-apache-sample
