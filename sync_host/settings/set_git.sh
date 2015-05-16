#!/bin/sh

cat /home/vagrant/.bashrc /sync_guest/settings/git_alias.txt >> /home/vagrant/.bashrc
cp /sync_guest/settings/.gitconfig /home/vagrant/

cd /home/vagrant/.ssh/
ssh-keygen -t rsa -C "azsisisin@gmail.com"  -N "" -f github_id_rsa
eval `ssh-agent`
ssh-add /home/vagrant/.ssh/github_id_rsa

echo eval `ssh-agent` >> /home/vagrant/.bashrc
echo ssh-add /home/vagrant/.ssh/github_id_rsa >> /home/vagrant/.bashrc

