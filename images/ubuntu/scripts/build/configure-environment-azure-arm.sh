#!/bin/bash -e
################################################################################
##  File:  configure-environment.sh
##  Desc:  Configure system and environment for azure build target
################################################################################

# Change waagent entries to use /mnt for swapfile
sed -i -e 's/ResourceDisk.Format=n/ResourceDisk.Format=y/g' \
  -e 's/ResourceDisk.EnableSwap=n/ResourceDisk.EnableSwap=y/g' \
  -e 's/ResourceDisk.SwapSizeMB=0/ResourceDisk.SwapSizeMB=4096/g' /etc/waagent.conf
