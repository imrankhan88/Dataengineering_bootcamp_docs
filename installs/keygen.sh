#!/bin/bash
echo "Creating password less ssh, Enter Y"
sudo apt-get install ssh
sudo apt-get install rsync
echo "**********Press Enter*********"
ssh-keygen -t rsa -N ''
cp ~/.ssh/id_rsa.pub ~/.ssh/authorized_keys
ssh localhost

