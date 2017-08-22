#!/usr/bin/env bash
set -e

# This script require privileged access
if (whoami != root); then
    echo "Please run the script using sudo"
    exit 1
fi

apt-get update
apt-get install -y debootstrap

mkdir -p /mnt/ubuntu

packages="git-core,curl,ca-certificates,tmux,openssh-client,openssh-server,vim,redis-server"
components="main,restricted,universe,multiverse"

debootstrap --include "${packages}" --components="${components}" --arch amd64 xenial /mnt/ubuntu http://archive.ubuntu.com/ubuntu/

curl -s https://raw.githubusercontent.com/Jumpscale/developer/master/mascot?$RANDOM > /mnt/ubuntu/root/.mascot.txt

touch /mnt/ubuntu/root/.iscontainer
chmod 1777 /mnt/ubuntu/tmp

rm -rf /mnt/ubuntu/etc/ssh/ssh_host_*
mkdir -p /mnt/ubuntu/root/.ssh

cd /mnt/ubuntu
tar -czf /tmp/ubuntu.tar.gz *
