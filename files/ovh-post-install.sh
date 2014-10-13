#!/bin/bash

# Test que le script est lance en root
if [ $EUID -ne 0 ]; then
  echo "root user required: # sudo $0" 1>&2
  exit 1
fi

export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get dist-upgrade -y
