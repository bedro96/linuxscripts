#!/bin/sh
echo "Updating packages ..."
yum -y update
yum -y install nfs-utils
yum -y group install "Development Tools"
