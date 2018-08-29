#!/bin/sh
systemctl stop firewalld
echo "Updating packages ..."
yum -y update
yum -y install nfs-utils
yum -y groupinstall "Development Tools"
