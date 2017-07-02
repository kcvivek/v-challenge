#!/bin/bash
# Author: Vivek KC
# Description: Create repo

REPO=$HOME/gforge/v-challenge/challenge03-auto/yum-repo
mkdir -p $REPO
sudo yum install createrepo

cd $REPO/../
cp rpmbuild/RPMS/noarch/hello-apache-1.0-1.amzn1.noarch.rpm yum-repo/
createrepo --database $REPO

cat <<-EOM> yum_hello.repo
[apache-hello-repo]
name = Extra apache rpms for life
baseurl = https://github.com/kcvivek/v-challenge/tree/master/challenge03-auto/yum-repo
enabled = 1
gpgcheck = 0

EOM

if [ -s yum_hello.repo ]; then
    sudo cp yum_hello.repo /etc/yum.repos.d/
    echo "INFO: Good, try: yum install hello-apache-1.0-1"
else
   echo "ERROR: Repo file creation must have failed!"
fi
