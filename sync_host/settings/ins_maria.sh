#!/bin/sh

yum install -y mariadb mariadb-server
firewall-cmd --permanent --add-port=3306/tcp

sed -e "s/\[mysqld_safe\]/character-set-server=utf8\n[mysqld_safe]/" /etc/my.cnf

systemctl enable mariadb.service
systemctl start mariadb.service

