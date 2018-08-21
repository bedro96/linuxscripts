#!/bin/sh
echo "Updating packages ..."
yum -y groupinstall "Development Tools"
yum -y update
yum -y install nfs-utils
