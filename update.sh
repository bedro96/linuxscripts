#!/bin/sh
echo "Updating packages ..."
yum -y update
yum -y install nfs-utils
