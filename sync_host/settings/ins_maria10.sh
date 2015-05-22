rpm --import https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
cp /sync_guest/settings/mariadb.repo /etc/yum.repos.d/mariadb.repo
rpm -e --nodeps mariadb-libs
yum -y install MariaDB-client MariaDB-server

firewall-cmd --permanent --add-port=3306/tcp


#root password
/usr/bin/mysqladmin -u root password ''


#setting utf8

sed -i -e "s/\[mysqld\]/[mysqld]\ncharacter-set-server=utf8\nplugin-load=handlersocket.so/" /etc/my.cnf.d/server.cnf