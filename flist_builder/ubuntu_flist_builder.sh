#!/usr/bin/env bash
set -e

# This script require privileged access
if (whoami != root);then
    echo "Please run the script using sudo"
else
    apt-get update
    apt-get install -y debootstrap
    mkdir -p /mnt/ubuntu
    debootstrap --include git-core,curl,ca-certificates,tmux,openssh-client  --arch amd64 xenial /mnt/ubuntu
    sed -i "s/main/main restricted universe multiverse/" /mnt/ubuntu/etc/apt/sources.list
    chroot /mnt/ubuntu /bin/bash -c "apt-get update && apt-get install redis-server -y"
    curl -s https://raw.githubusercontent.com/Jumpscale/developer/master/mascot?$RANDOM > /mnt/ubuntu/root/.mascot.txt
    touch /mnt/ubuntu/root/.iscontainer
    rm -rf /mnt/ubuntu/etc/ssh/ssh_host_*
    mkdir -p /mnt/ubuntu/root/.ssh
    cd /mnt/ubuntu
    tar -czf /tmp/ubuntu.tar.gz *
fi
