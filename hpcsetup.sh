#!/bin/sh 
set -ex 
echo "Updating packages ..." 
sudo yum -y update
sudo yum -y group install "Development tools" 
echo "Installing lftp" 
sudo yum -y install lftp 
echo "Installing p7zip" 
sudo wget https://www.mirrorservice.org/sites/dl.fedoraproject.org/pub/epel/7/x86_64/Packages/p/p7zip-16.02-10.el7.x86_64.rpm 
sudo wget https://www.mirrorservice.org/sites/dl.fedoraproject.org/pub/epel/7/x86_64/Packages/p/p7zip-plugins-16.02-10.el7.x86_64.rpm 
sudo rpm -U --quiet p7zip-16.02-10.el7.x86_64.rpm 
sudo rpm -U --quiet p7zip-plugins-16.02-10.el7.x86_64.rpm 
echo "Installing cmake 3.12.2" 
sudo yum -y install epel-release 
sudo yum -y install cmake3 
sudo yum -y remove cmake 
sudo ln -s /usr/bin/cmake3 /usr/bin/cmake 
